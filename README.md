import pandas as pd
from typing import Dict, List, Optional


class TableAnalyzer:

    def __init__(self, excel_path: str):
        self.excel_path = excel_path

    def _load_source(self) -> pd.DataFrame:
        """Load source excel"""

        df = pd.read_excel(self.excel_path, dtype=str)

        required = {"TABLE_NAME", "COLUMN_NAME"}

        missing = required - set(df.columns)

        if missing:
            raise ValueError(
                f"Missing required columns: {', '.join(missing)}"
            )

        df["TABLE_NAME"] = df["TABLE_NAME"].str.strip()
        df["COLUMN_NAME"] = df["COLUMN_NAME"].str.strip()

        if "TABLE_DEFINITION" not in df.columns:
            df["TABLE_DEFINITION"] = None

        if "ATTRIBUTE_DEFINITION" not in df.columns:
            df["ATTRIBUTE_DEFINITION"] = None

        return df

    def _predict_table_definition(
        self,
        table_name: str,
        attributes: List[str]
    ) -> Optional[str]:
        """Predict table definition"""

        payload = table_and_attribute_prompt(
            table_name,
            attributes
        )

        resp = call_llm(payload)

        if not resp:
            return None

        try:
            content = (
                resp.get("choices", [{}])[0]
                .get("message", {})
                .get("content", "")
                .strip()
            )

            lines = content.split("\n")

            for line in lines:
                if line.startswith("Table Name Definition:"):
                    return (
                        line.replace(
                            "Table Name Definition:",
                            ""
                        )
                        .strip()
                    )

            return None

        except Exception as exc:
            print(
                f"[TABLE DEF] Parsing error "
                f"for table {table_name}: {exc}"
            )
            return None

    def _predict_attribute_definitions(
        self,
        table_name: str,
        attributes: List[str]
    ) -> Dict[str, str]:
        """Predict attribute definitions"""

        payload = table_and_attribute_prompt(
            table_name,
            attributes
        )

        resp = call_llm(payload)

        result = {}

        if not resp:
            return result

        try:
            content = (
                resp.get("choices", [{}])[0]
                .get("message", {})
                .get("content", "")
                .strip()
            )

            lines = content.split("\n")

            current_attr = None

            for line in lines:

                line = line.strip()

                if line.startswith("Attribute:"):
                    current_attr = (
                        line.replace("Attribute:", "")
                        .strip()
                    )

                elif (
                    line.startswith("Attribute Definition:")
                    and current_attr
                ):
                    definition = (
                        line.replace(
                            "Attribute Definition:",
                            ""
                        )
                        .strip()
                    )

                    result[current_attr] = definition
                    current_attr = None

            return result

        except Exception as exc:
            print(
                f"[ATTRIBUTE DEF] Parsing error "
                f"for table {table_name}: {exc}"
            )
            return {}

    def run(self):

        df = self._load_source()

        table_groups = (
            df.groupby("TABLE_NAME")["COLUMN_NAME"]
            .apply(list)
        )

        for table_name, attributes in table_groups.items():

            print(f"\nProcessing table: {table_name}")

            # Get table definition
            table_definition = (
                self._predict_table_definition(
                    table_name,
                    attributes
                )
            )

            print(
                f"Table Definition: "
                f"{table_definition}"
            )

            # Get attribute definitions
            attribute_defs = (
                self._predict_attribute_definitions(
                    table_name,
                    attributes
                )
            )

            # Update dataframe
            mask = (
                df["TABLE_NAME"] == table_name
            )

            df.loc[
                mask,
                "TABLE_DEFINITION"
            ] = table_definition

            for attr, definition in attribute_defs.items():

                attr_mask = (
                    (df["TABLE_NAME"] == table_name)
                    &
                    (df["COLUMN_NAME"] == attr)
                )

                df.loc[
                    attr_mask,
                    "ATTRIBUTE_DEFINITION"
                ] = definition

        output_path = (
            self.excel_path
            .replace(".xlsx", "_output.xlsx")
        )

        df.to_excel(output_path, index=False)

        print(
            f"\nCompleted. Output saved to:"
            f" {output_path}"
        )
IPL Data Analysis (2008–2022) Using SQL
Project Overview
This project focuses on analyzing the Indian Premier League (IPL) dataset from 2008 to 2022 using SQL. The goal is to extract meaningful insights about teams, players, venues, and trends in the IPL through structured queries and data analysis techniques.


Features
Comprehensive analysis of IPL data (2008–2022).
Key insights into team performance, player statistics, and venue trends.
SQL-based querying for efficient data exploration and manipulation.
Tasks include:
Team performance analysis.
Player statistics (e.g., top scorers, best bowlers).
Venue performance analysis.




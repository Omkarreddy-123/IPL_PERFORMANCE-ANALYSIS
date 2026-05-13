def table_columns_check(self, table_name, file_name):
    try:
        self.table_exists = self.db_db.check_table_exist(table_name=table_name, schema_name=self.schema_name)
    except Exception as e:
        err_message = f"Error while checking table existence in Oracle DB: {e}"
        logging.error(err_message)
        return False, err_message[:3800]

    if not self.table_exists:
        logging.info(f"Table {table_name} does not exist currently.")
        return True, None

    column_query = (
        "SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH, DATA_PRECISION, DATA_SCALE "
        "FROM SYS.ALL_TAB_COLUMNS "
        f"WHERE TABLE_NAME = '{table_name}' AND OWNER = '{self.schema_name}'"
    )
    try:
        table_columns_raw = self.db_db.execute_query_and_get_return(column_query)
    except Exception as e:
        err_message = f"Exception occurred while checking columns of a table: {e}"
        logging.error(err_message)
        return False, err_message[:3800]

    # Build a dict: column_name -> oracle type info
    oracle_column_meta = {}
    for row in table_columns_raw:
        col_name    = row[0]
        data_type   = row[1]
        data_length = row[2]
        precision   = row[3]
        scale       = row[4]
        oracle_column_meta[col_name] = {
            "data_type":   data_type,
            "data_length": data_length,
            "precision":   precision,
            "scale":       scale,
        }

    table_columns = list(oracle_column_meta.keys())

    # Spark dtype mapping to Oracle equivalents
    spark_to_oracle_type = {
        "string":    "VARCHAR2",
        "long":      "NUMBER",
        "integer":   "NUMBER",
        "short":     "NUMBER",
        "byte":      "NUMBER",
        "double":    "FLOAT",
        "float":     "FLOAT",
        "decimal":   "NUMBER",
        "date":      "DATE",
        "timestamp": "TIMESTAMP",
        "boolean":   "CHAR",
        "binary":    "BLOB",
    }

    if sorted(table_columns) == sorted(self.current_df.columns):
        # Columns match — now check datatypes
        for col_name, col_dtype in self.current_df.dtypes:
            if col_name not in oracle_column_meta:
                continue

            spark_base_type = col_dtype.split("(")[0].lower()  # e.g. "decimal(10,2)" -> "decimal"
            expected_oracle_type = spark_to_oracle_type.get(spark_base_type)
            actual_oracle_type   = oracle_column_meta[col_name]["data_type"]

            if expected_oracle_type and actual_oracle_type != expected_oracle_type:
                logging.info(
                    f"Column '{col_name}' has type mismatch — "
                    f"Oracle: {actual_oracle_type}, Spark: {col_dtype}. Altering column type."
                )
                status, message = self.alter_table_column(table_name, col_name, 'modify_type', col_dtype)
                if not status:
                    return False, message

        return True, None

    # Handle new columns present in Spark DF but missing in Oracle Table
    for new_column in self.current_df.columns:
        if new_column not in table_columns:
            logging.info(f"Column '{new_column}' is not present in the Oracle Table.")
            status, message = self.alter_table_column(table_name, new_column, 'create')
            if not status:
                return False, message

    # Handle columns present in Oracle Table but missing in Spark DF
    dropped_columns = []
    for removed_col in table_columns:
        if removed_col not in self.current_df.columns:
            dropped_columns.append(removed_col)
            logging.info(
                f"Column '{removed_col}' present in the Table does not exist in the Source file."
            )

    # Datatype check for columns that exist in both
    for col_name, col_dtype in self.current_df.dtypes:
        if col_name not in oracle_column_meta:
            continue  # Already handled above as a new column

        spark_base_type = col_dtype.split("(")[0].lower()
        expected_oracle_type = spark_to_oracle_type.get(spark_base_type)
        actual_oracle_type   = oracle_column_meta[col_name]["data_type"]

        if expected_oracle_type and actual_oracle_type != expected_oracle_type:
            logging.info(
                f"Column '{col_name}' has type mismatch — "
                f"Oracle: {actual_oracle_type}, Spark: {col_dtype}. Altering column type."
            )
            status, message = self.alter_table_column(table_name, col_name, 'modify_type', col_dtype)
            if not status:
                return False, message

    message = (
        f"Warning: {file_name} has missing columns in file. "
        f"These columns will appear blank. Missing columns: {', '.join(dropped_columns)}"
    ) if dropped_columns else None

    return True, message


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




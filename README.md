# Ansible_Yugabyte_SQL
# 📘 Insert Data into YugabyteDB using Ansible

This repository provides an Ansible playbook to automate the setup and population of a YugabyteDB database. It verifies connectivity, creates a database if needed, uploads SQL scripts for schema and data, executes them, and verifies the result with SELECT queries.

---

## 🚀 Features

- 🔗 Verifies YugabyteDB port availability
- 🏗️ Creates the database if it doesn’t exist
- 📤 Uploads DDL (schema) and data SQL files to the remote host
- 🛠️ Executes the uploaded SQL scripts
- 🔍 Queries specified tables and displays the data

---

## 📁 Project Structure

pip install psycopg2-binary

ubuntu

sudo apt install python3-psycopg2-binary

red hat

sudo dnf install python3-psycopg2-binary

⚙️ Configuration Variables

| Variable Name              | Description                                  | Default Value              |
|---------------------------|----------------------------------------------|----------------------------|
| `db_name`                 | Database name to create or connect to        | `testdb`                   |
| `db_user`                 | Database user name                           | `yugabyte`                 |
| `db_password`             | Password for the database user               | `yugabyte`                 |
| `db_host`                 | Host/IP of YugabyteDB instance               | `10.128.15.223`            |
| `db_port`                 | Port for YugabyteDB                          | `5433`                     |
| `create_db_if_not_exists`| Boolean to create DB if not exists           | `true`                     |
| `ddl_sql_local_path`      | Local path to DDL SQL file                   | `./northwind_ddl.sql`      |
| `data_sql_local_path`     | Local path to data SQL file                  | `./northwind_data.sql`     |
| `ddl_sql_remote_path`     | Remote destination path for DDL file         | `/tmp/northwind_ddl.sql`   |
| `data_sql_remote_path`    | Remote destination path for data file        | `/tmp/northwind_data.sql`  |


🗃️ File Structure
bash
Copy
Edit
project/
├── insert_data.yml               # Ansible playbook
├── northwind_ddl.sql             # DDL script for table creation
├── northwind_data.sql            # SQL script for inserting data
└── README.md                     # This documentation

(TBD)

### Project Modules
* `terraform`: Creates project infrastructure (GCS & BigQuery) 
* `docker` config to containerize Postgres, Airflow & Spark
* `airflow`: Workflows (DAGs) for ingestion (extraction) of raw data to Data Lake (GCS) & DWH (BigQuery)
* `dbt`: Workflows to transform DWH data to queryable views
* `spark`: Transformation of Raw Data (GCS) to DWH (BigQuery), orchestrated by Airflow
* `kafka`: ingesting streaming data

### Concepts
* [Terraform_overview](../1_terraform_overview.md)
* [Audio](https://drive.google.com/file/d/1IqMRDwJV-m0v9_le_i2HA_UbM_sIWgWx/view?usp=sharing)

### Terraform Execution

```shell
# Refresh service-account's auth-token for this session
gcloud auth application-default login

# Initialize state file (.tfstate)
terraform init

# Check changes to new infra plan
terraform plan -var="project=<your-project-id>"
```

```shell
# Create new infra
terraform apply -var="project=<your-project-id>"
```

```shell
# Delete infra after your work, to avoid costs on any running services
terraform destroy
```


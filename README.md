# Cloud Data Engineer Bootcamp Challenge
## Practical Challenge: Module 1 - Fundamentals in Data Architecture and Cloud Solutions

### Objectives:
- Learn about Cloud Data Architectures ☁️
- Implement a Data Lake in a Cloud Storage solution 💻
- Implement Big Data Processing 💡
- Deployment Pipelines using Github 🐱
- Infrastructure as Code (IaC) with Terraform 🛠️

### Tasks:
1. Ingest the 2020 RAIS Public Affiliations data into AWS S3
   - Data available at: [RAIS and CAGED Microdata](http://pdet.mte.gov.br/microdados-rais-e-caged) 


2. Clean the 2020 RAIS dataset:
   a. Modify column names, replacing spaces with "_"
   b. Remove accents from columns and lowercase all letters
   c. Create a "uf" column from the "municipio" column
   d. Adjust data types for remuneration columns

3. Transform the data into parquet format and write to the staging or silver zone of your Data Lake.

4. Integrate with a Data Lake engine. In the case of AWS, you must:
   a. Configure a Crawler for the folder where the files are stored in the staging area
   b. Validate availability in Athena.

5. If you choose to use Google, make the data available for querying using Big Query. If you choose another cloud, the Data Lake engine choice is free.

6. Use a Big Data tool or Data Lake engine (or BigQuery, if you choose to work with Google Cloud) to investigate the data and answer the challenge questions.

7. When the architecture design is complete, create a repository on Github (or Gitlab, Bitbucket, or another of your choice) and put the IaC code for infrastructure deployment. No resources should be deployed manually.

### Solution Architecture:

![AWS Terraform](/imgs/challenge_mod1_diagram.png)
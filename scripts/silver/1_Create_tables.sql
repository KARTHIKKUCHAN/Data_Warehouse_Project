/*
=====================================================================
DDL Script : Create silver Tables
=====================================================================

Script purpose:
  -	This script creates tables in the silver schema, 
  	droping exisiting tables, if they already exisit
	- Run this script to re-define the DDL strcture of "silver' Tables
  - I have added an extra column of metadata in each table for having 
    a timestamp for every chaange i have done
*/
if object_id('silver.crm_cust_info','U') is not null
	drop table silver.crm_cust_info
create table silver.crm_cust_info(
	cst_id int,
	cst_key nVarchar(50),
	cst_firstname nVarchar(50),
	cst_lastname nVarchar(50),
	cst_marital_status nVarchar(50),
	cst_gndr nvarchar(50),
	cst_create_date date,
	dwh_create_date datetime2 default getdate()
);

if object_id('silver.crm_prd_info','U') is not null
	drop table silver.crm_prd_info
create table silver.crm_prd_info(
	prd_id int,
	prd_key nVarchar(50),
	prd_nm nVarchar(50),
	prd_cost int,
	prd_line nVarchar(50),
	prd_start_dt date,
	prd_end_dt date,
	dwh_create_date datetime2 default getdate()
);

if object_id('silver.crm_sales_details','U') is not null
	drop table silver.crm_sales_details
create table silver.crm_sales_details(
	sls_ord_num nvarchar(50),
	sls_prd_key nVarchar(50),
	sls_cust_id int,
	sls_order_dt date,
	sls_ship_dt date,
	sls_due_dt date,
	sls_sales int,
	sls_quantity int,
	sls_price int,
	dwh_create_date datetime2 default getdate()
);

if object_id('silver.erp_loc_a101','U') is not null
	drop table silver.erp_loc_a101
create table silver.erp_loc_a101(
	cid nvarchar(50),
	cntry nvarchar(50),
	dwh_create_date datetime2 default getdate()
);

if object_id('silver.erp_px_cat_g1v2','U') is not null
	drop table silver.erp_px_cat_g1v2
create table silver.erp_px_cat_g1v2(
	id nvarchar(50),
	cat nvarchar(50),
	subcat nvarchar(50),
	maintenance nvarchar(50),
	dwh_create_date datetime2 default getdate()
);

if object_id('silver.erp_cust_az12','U') is not null
	drop table silver.erp_cust_az12
create table silver.erp_cust_az12(
	cid nvarchar(50),
	bdata date,
	gen nvarchar(50),
	dwh_create_date datetime2 default getdate()
)

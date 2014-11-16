#
# Cookbook Name:: futuregrid-452
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe "database::mysql"

# Mysql connection info
mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

# Create a mysql database
mysql_database node['futuregrid-452']['database'] do
  connection mysql_connection_info
  action :create
end

# Create mysql user
mysql_database_user node['futuregrid-452']['db_username'] do
  connection mysql_connection_info
  password node['futuregrid-452']['db_password']
  database_name node['futuregrid-452']['database']
  privileges [:select,:update,:insert,:create,:delete]
  action :grant
end

# Query a database
mysql_database node['futuregrid-452']['database'] do
  connection mysql_connection_info
  sql        'flush privileges'
  action     :query
end

# Create movielens database schema
mysql_database node['futuregrid-452']['database'] do
  connection mysql_connection_info
  sql { ::File.open('/home/ubuntu/.projects/futuregrid-452/sql/movielens_schema.sql').read }
  action :query
end

# Load movielens data into mysql database
mysql_database node['futuregrid-452']['database'] do
  connection mysql_connection_info
  sql { ::File.open('/home/ubuntu/.projects/futuregrid-452/sql/movielens_dataload.sql').read }
  action :query
end

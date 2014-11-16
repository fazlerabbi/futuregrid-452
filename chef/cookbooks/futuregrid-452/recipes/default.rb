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


# Create a mysql database
mysql_database node['futuregrid-452']['database'] do
  connection ({:host => 'localhost', :username => 'root', :password => node['mysql']['server_root_password']})
  action :create
end

# Create mysql user
mysql_database_user node['futuregrid-452']['db_username'] do
  connection ({:host => 'localhost', :username => 'root', :password => node['mysql']['server_root_password']})
  password node['futuregrid-452']['db_password']
  database_name node['futuregrid-452']['database']
  privileges [:select,:update,:insert,:create,:delete]
  action :grant
end


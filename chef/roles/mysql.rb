name "mysql"
description "Set mysql attributes"
default_attributes(
   "mysql" => {
      "server_root_password" => "futuregrid-452-mysql-root", 
      "server_debian_password" => "futuregrid-452-mysql-debian", 
      "server_repl_password" => "futuregrid-452-mysql-repl"
   }
)

run_list(
  "recipe[mysql::client]", "recipe[mysql::server]"
)


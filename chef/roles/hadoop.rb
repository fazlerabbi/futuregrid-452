name "hadoop"
description "set Hadoop attributes"
default_attributes(
   "hadoop" => {
      "distribution" => "bigtop",
      "core_site" => {
         "fs.defaultFS" => "hdfs://frabbi-001"
      },
      "yarn_site" => {
         "yarn.resourcemanager.hostname" => "frabbi-001"
      }
   }
)

run_list(
  "recipe[hadoop]"
)


#
# Cookbook Name:: openbay
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package 'git'

application "openbay" do
  path "/app/src"
  owner node[:apache][:user]
  group node[:apache][:user]
  repository "https://github.com/isohuntto/openbay.git"
  revision "master"

  # packages ["PDO","PDO_MYSQL"]


  # php do
  #   database_master_role "database_master"
  #   local_settings_file "config.php"
  # end

  mod_php_apache2
end

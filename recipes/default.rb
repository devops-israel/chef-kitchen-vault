#
# Cookbook Name:: vault-use
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'chef-vault'

admin = chef_vault_item("jenkins", "admin")

file "/etc/mypw" do
    content admin["password"]
end

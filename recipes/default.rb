#
# Cookbook Name:: kitchen-vault
# Recipe:: default
#
# Copyright 2015, DevOps IL
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'chef-vault'

admin = chef_vault_item("secrets", "admin")

file "/tmp/mypw" do
    content admin["password"]
end

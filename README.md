kitchen-vault Cookbook
==================
Example on using kitchen with chef-vault.

##Problem:
When we use chef-vault, we rely on chef server provided information (data bags, client keys, etc) which is not available when we test it in kitchen with chef-zero

##Solution 
This cookbook uses a few gotchas as workaround:
1) Helper cookbook which creates secrets inside chef-zero environment. Stored under test/fixtures/cookbooks/prepare. It should be fully executed in compile time in order for chef-vault resources to be available for main cookbook at converge time
2) Client and node information stored inside test/integration folder and added to chef-zero environment by kitchen
3) client.rb settings inside .kithchen.yml tell chef-zero to use client name and key from test/integration

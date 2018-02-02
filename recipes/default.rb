#
# Cookbook:: cb-windows-10-kiosk
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.



# Include CIS Recipes
#include_recipe 'cb-windows-10-kiosk::cis-1'

# Account Management
include_recipe 'cb-windows-10-kiosk::local-accounts'
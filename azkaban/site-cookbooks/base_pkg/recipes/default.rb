#
# Cookbook Name:: base_pkg
# Recipe:: default
#
# Copyright 2015, yagince
#
# All rights reserved - Do Not Redistribute
#

%w{git unzip}.each do |pkg|
  package pkg
end

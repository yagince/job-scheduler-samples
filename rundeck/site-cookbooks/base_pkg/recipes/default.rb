#
# Cookbook Name:: base_pkg
# Recipe:: default
#
# Copyright 2015, yagince
#
# All rights reserved - Do Not Redistribute
#


%w{ libxt-dev }.each { |p|
  package p
}

#
# Cookbook Name:: rundeck
# Recipe:: default
#
# Copyright 2015, yagince
#
# All rights reserved - Do Not Redistribute
#


apt_package 'rundeck' do
  action :install
  source 'http://dl.bintray.com/rundeck/rundeck-deb/rundeck-2.4.1-1-GA.deb'
end

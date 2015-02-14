#
# Cookbook Name:: rundeck
# Recipe:: default
#
# Copyright 2015, yagince
#
# All rights reserved - Do Not Redistribute
#

src_filename = 'rundeck-2.4.2-1-GA.deb'
src_filepath = "#{Chef::Config['file_cache_path']}/#{src_filename}"

remote_file src_filepath do
  source 'https://dl.bintray.com/rundeck/rundeck-deb/rundeck-2.4.2-1-GA.deb'
  owner 'root'
  group 'root'
  mode '0644'
  not_if { File.exists? src_filepath }
end

dpkg_package 'rundeck' do
  action :install
  source src_filepath
end

service 'rundeckd' do
  action [ :enable, :start ]
  supports :status => true, :restart => true, :stop => true
end

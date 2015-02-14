#
# Cookbook Name:: azkaban
# Recipe:: default
#
# Copyright 2015, yagince
#
# All rights reserved - Do Not Redistribute
#

app_path = "#{Chef::Config[:file_cache_path]}/azkaban"
repo_url = 'https://github.com/azkaban/azkaban'
version = '2.6.4'
distribution = "azkaban-solo-server-#{version}"

git app_path do
  repository repo_url
  revision version
  action :sync
end

bash "build azkaban" do
  cwd app_path
  code <<-EOH
  ./gradlew distZip
  EOH
  not_if { File.exists? "#{app_path}/build" }
end

bash "setup azkaban" do
  cwd "#{app_path}/build/distributions"
  code <<-EOH
  unzip #{distribution}.zip
  EOH
  not_if { File.exists? "#{app_path}/build/distributions/#{distribution}" }
end

bash "start azkaban" do
  cwd "#{app_path}/build/distributions/#{distribution}"
  code <<-EOH
  ./bin/azkaban-solo-start.sh
  EOH
  not_if 'pgrep -f azkaban'
end


#
# Cookbook Name:: apache2
# Recipe:: dav_svn 
#
# Copyright 2008, OpsCode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package "apache2 dav svn" do
  package_name value_for_platform_family(:rhel => "mod_dav_svn", :debian => "libapache2-svn")
  retries 3
  retry_delay 5
end

apache_module 'dav_svn'
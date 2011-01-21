#
# Cookbook Name:: downtime
# Recipe:: default
#
# Copyright 2011, Atari, Inc
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

downtime = data_bag_item('downtime', node[:downtime][:data_bag_item])

if node[:downtime][:allow_one_shot] and not Chef::Config[:daemonize]
  return
end

if downtime['downtime'] or downtime[node[:app_environment]]
  Chef::Application.fatal!("We're down for maintenance", -42)
end

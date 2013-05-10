#
# Cookbook Name:: redis
# Attributes:: default
#
# Copyright 2010, Atari, Inc
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

default[:redis][:listen_addr] = "127.0.0.1"
default[:redis][:listen_port] = "6379"
default[:redis][:appendonly] = "no"
default[:redis][:appendfsync] = "everysec"
default[:redis][:vm][:enabled] = "no"
default[:redis][:vm][:max_memory] = "0"
default[:redis][:vm][:page_size] = "32"
default[:redis][:vm][:pages] = "134217728"
default[:redis][:vm][:max_threads] = "4"
# set [:redis][:maxmemory] in override attributes if desired
default[:redis][:maxmemory] = nil
default[:redis][:maxmemory_policy] = "volatile-lru"
default[:redis][:hash_max_zipmap_entries] = "64"
default[:redis][:hash_max_zipmap_value] = "512"
default[:redis][:list_max_ziplist_entries] = "512"
default[:redis][:list_max_ziplist_value] = "64"
default[:redis][:set_max_intset_entries] = "512"
default[:redis][:loglevel] = "warning"
default[:redis][:db_path] = "/var/lib/redis"
default[:redis][:save_interval] = "900 1"

#
# Cookbook:: kreedy_workstation
# Recipe:: default
#
# Copyright:: 2019, Kevin Reedy
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

if node['platform'] == 'mac_os_x'
  include_recipe 'kreedy_workstation::macos_packages'
  include_recipe 'kreedy_workstation::macos_dock'
end

include_recipe 'kreedy_workstation::dotfiles'
include_recipe 'kreedy_workstation::okta_aws'
include_recipe 'kreedy_workstation::ruby_dev'

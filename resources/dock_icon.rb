#
# Cookbook:: kreedy_workstation
# Resource:: dock_icon
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

resource_name :dock_icon
property :app_path, String, name_property: true
property :after, [String, nil]
property :position, [Integer, nil]

action :create do
  execute "add icon for #{new_resource.app_path}" do
    command "dockutil --add '#{new_resource.app_path}'" \
      + (new_resource.after ? " --after \"#{new_resource.after}\"" : '') \
      + (new_resource.position ? " --position #{new_resource.position}" : '')
    not_if "dockutil --list | grep file://#{URI.encode(new_resource.app_path)}"
  end
end

action :delete do
  execute "dockutil --remove \"$(dockutil --list | grep 'file://#{URI.encode(new_resource.app_path)}' | head -n 1 | cut -f 1)\"" do
    only_if "dockutil --list | grep file://#{URI.encode(new_resource.app_path)}"
  end
end

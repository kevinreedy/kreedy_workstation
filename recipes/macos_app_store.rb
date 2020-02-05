#
# Cookbook:: kreedy_workstation
# Recipe:: macos_app_store
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

package 'mas'

# Check if signed in
signed_in = Mixlib::ShellOut.new('mas account')
signed_in.run_command
raise 'Sign into the Mac App Store' if signed_in.error?

# Install Apps
mac_app_store_app 'Moom'

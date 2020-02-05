#
# Cookbook:: kreedy_workstation
# Recipe:: dotfiles
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

# Create needed directories
%w(
  .ssh
).each do |d|
  directory "#{ENV['HOME']}/#{d}"
end

# Add files
%w(
  .gitconfig
  .ssh/authorized_keys
  .tmux.conf
).each do |f|

  cookbook_file "#{ENV['HOME']}/#{f}" do
    source f
  end
end

# zsh is in its own recipe for now
include_recipe 'kreedy_workstation::zsh'

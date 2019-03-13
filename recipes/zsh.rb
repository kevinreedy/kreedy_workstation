#
# Cookbook:: kreedy_workstation
# Recipe:: zsh
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

# TODO: linux

package 'zsh'
package 'zsh-completions'

# TODO: work on mac without user interaction
# execute 'chsh -s /bin/zsh' do
#   not_if 'env | grep SHELL=/bin/zsh'
# end

git '/Users/kreedy/.oh-my-zsh' do
  repository 'https://github.com/robbyrussell/oh-my-zsh.git'
  reference 'master'
  action :checkout
  not_if 'test -d /Users/kreedy/.oh-my-zsh'
  only_if { ::File.exists?('/Users/kreedy') }
end

cookbook_file '/Users/kreedy/.zshrc' do
  source '.zshrc'
end

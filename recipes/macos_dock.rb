#
# Cookbook:: kreedy_workstation
# Recipe:: macos_dock
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

package 'dockutil'

dock_icon '/Applications/Siri.app' do
  action :delete
end

dock_icon '/Applications/Launchpad.app' do
  action :delete
end

dock_icon '/Applications/Safari.app' do
  action :delete
end

dock_icon '/Applications/Mail.app' do
  action :delete
end

dock_icon '/Applications/Contacts.app' do
  action :delete
end

dock_icon '/Applications/Calendar.app' do
  action :delete
end

dock_icon '/Applications/Notes.app' do
  action :delete
end

dock_icon '/Applications/Reminders.app' do
  action :delete
end

dock_icon '/Applications/Maps.app' do
  action :delete
end

dock_icon '/Applications/Photos.app' do
  action :delete
end

dock_icon '/Applications/Messages.app' do
  action :delete
end

dock_icon '/Applications/FaceTime.app' do
  action :delete
end

dock_icon '/Applications/Pages.app' do
  action :delete
end

dock_icon '/Applications/Numbers.app' do
  action :delete
end

dock_icon '/Applications/Keynote.app' do
  action :delete
end

dock_icon '/Applications/News.app' do
  action :delete
end

dock_icon '/Applications/iTunes.app' do
  action :delete
end

dock_icon '/Applications/Google Chrome.app' do
  position 1
end

dock_icon '/Applications/Slack.app' do
  after 'Google Chrome'
end

dock_icon '/Applications/Atom.app' do
  after 'Slack'
end

dock_icon '/Applications/iTerm.app'

dock_icon '/Applications/Utilities/Activity Monitor.app'

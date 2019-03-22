#
# Cookbook:: kreedy_workstation
# Recipe:: macos_preferences
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

execute 'killall Finder' do
  action :nothing
end

plist 'show hidden files' do
  path '/Users/kreedy/Library/Preferences/com.apple.finder.plist'
  entry 'AppleShowAllFiles'
  value true
  notifies :run, 'execute[killall Finder]'
end

plist 'show file extensions' do
  path '/Users/kreedy/Library/Preferences/.GlobalPreferences.plist'
  entry 'AppleShowAllExtensions'
  value true
end

plist 'disable auto-correct' do
  path '/Users/kreedy/Library/Preferences/.GlobalPreferences.plist'
  entry 'NSAutomaticSpellingCorrectionEnabled'
  value false
end

# TODO: Fix permissions issue on this
# plist 'activity monitor - cpu history' do
#   path '/Users/kreedy/Library/Preferences/com.apple.ActivityMonitor'
#   entry 'IconType'
#   value 6
# end

# TODO: start activity monitor on login

# TODO: Zoom - HD Camera
# this might need to be /Library/Preferences instead
# plist 'enable HD' do
#   path '/Users/kreedy/Library/Preferences/us.zoom.config.plist'
#   entry 'ZUse720PByDefault'
#   value true
# end

# TODO:
# Caps Lock -> Escape
# Display - Scaled - More Space
# Moom - Start on login
# Moom - Run as menu bar application

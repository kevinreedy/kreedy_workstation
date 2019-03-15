#
# Cookbook:: kreedy_workstation
# Recipe:: macos_packages
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

# Add Homebrew Sources
homebrew_tap 'habitat-sh/habitat'
homebrew_tap 'heroku/brew'

# Install Homebrew Packages
package 'awscli'
package 'gpg'
package 'hab'
package 'heroku'
package 'mtr'
package 'nmap'
package 'packer'
package 'terraform'
package 'tmux'
package 'watch'
package 'wget'

# TODO: see if we need these
# libxml2
# libxslt
# reattach-to-user-namespace

# Install Homebrew Cask Packages
homebrew_cask '1password'
homebrew_cask 'atom'
homebrew_cask 'docker'
homebrew_cask 'firefox'
homebrew_cask 'google-chrome'
homebrew_cask 'iterm2'
homebrew_cask 'ngrok'
homebrew_cask 'ringcentral-meetings'
homebrew_cask 'signal'
homebrew_cask 'skitch'
homebrew_cask 'slack'
homebrew_cask 'vagrant'
homebrew_cask 'virtualbox'
homebrew_cask 'virtualbox-extension-pack'
homebrew_cask 'visual-studio-code'
homebrew_cask 'vlc'
homebrew_cask 'zoomus'

# TODO: see if we need these
# flux - do we still need in mojave?
# google-drive - which one
# ms office

# Add apps from App Store
include_recipe 'kreedy_workstation::macos_app_store'

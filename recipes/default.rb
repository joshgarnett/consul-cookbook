#
# Copyright 2014 John Bellone <jbellone@bloomberg.net>
# Copyright 2014 Bloomberg Finance L.P.
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

case node['consul']['install_method']
when 'binary'
  include_recipe 'consul::install_binary'
when 'source'
  include_recipe 'consul::install_source'
when 'packages'
  include_recipe 'consul::install_packages'
else
  Chef::Application.fatal!("[consul::default] unknown install method, method=#{node['consul']['install_method']}")
end

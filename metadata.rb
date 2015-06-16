name 'consul'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Application cookbook which installs and configures Consul.'
long_description 'Application cookbook which installs and configures Consul.'
version '1.0.0'

recipe 'consul::default', 'Installs, configures and starts the Consul service.'

supports 'centos', '>= 6.5'
supports 'redhat', '>= 6.5'
supports 'ubuntu', '>= 12.04'
supports 'arch'

depends 'chef-vault'
depends 'libartifact', '~> 1.2'
depends 'golang', '~> 1.4'
depends 'poise', '~> 2.0'
depends 'poise-service'
depends 'poise-service-runit'
depends 'selinux'

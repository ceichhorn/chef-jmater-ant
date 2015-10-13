name 'jmeter'
maintainer 'Carl Eichhorn'
maintainer_email 'ceichhorn@gannett.com'
license 'Apache 2.0'
description 'Installs/Configures jmeter for load-testing.'
long_description 'Installs/Configures jmeter for load-testing.'
version '1.0.0'

%w(centos redhat).each do |name|
  supports name, '~> 7.0'
  supports name, '~> 6.6'
end

depends 'ark'
depends 'java'

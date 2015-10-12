#
# Author:: Carl Eichhorn (ceichhorn@gannett.com)
# Copyright:: Copyright (C) 2015 Gannett Co.
# License:: Apache 2.0
#
# Cookbook Name:: jmeter
# Attribute:: default
#
default['jmeter']['install_type'] = 'source'
default['jmeter']['plan_dir'] = '/etc/jmeter/plans.d'

default['jmeter']['version'] = '2.13'
default['jmeter']['source_url'] = 'http://www.us.apache.org/dist/jmeter/binaries/apache-jmeter-2.13.tgz'
default['jmeter']['source_checksum'] = '9fe33d3d6e381103d3ced2962cdef5c164a06fc58c55e247eadf5a5dbcd4d8fe'

default['jmeter']['package_name'] = 'jmeter'

default['ant']['version']        = '1.8.2'
default['ant']['home']           = '/usr/local/ant'
default['ant']['url']            = "http://archive.apache.org/dist/ant/binaries/apache-ant-#{node['ant']['version']}-bin.tar.gz"
default['ant']['checksum']       = '664f48cfc9c4a9a832ec1dd9d2bed5229c0a9561e489dcb88841d75d3c2c7cf9'
default['ant']['install_method'] = 'package'
default['ant']['packages'] = ['ant', 'ant-contrib']
default['ant']['libraries'] = { 'ant-contrib' => 'http://search.maven.org/remotecontent?filepath=ant-contrib/ant-contrib/1.0b3/ant-contrib-1.0b3.jar' }

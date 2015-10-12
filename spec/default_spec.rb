# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'


describe 'jmeter-ant' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new do |node|
      node.set['opsmatic']['integration_token'] = 'SomeToken'
      stub_command('which jmeter').and_return('/usr/local/bin/jmeter')
      stub_command('which ant').and_return('/usr/bin/ant')
    end.converge(described_recipe)
  end

 it 'includes the `jmeter` recipe' do
    expect(chef_run).to include_recipe('jmeter-ant')
  end

  it 'creates templates directory' do
    expect(chef_run).to create_directory('/etc/jmeter/plans.d')
  end

  it 'installs package jmeter' do
    expect(chef_run).to install_ark('jmeter')
  end

  it 'installs package ant' do
    expect(chef_run).to install_package('ant, ant-contrib')
  end

end

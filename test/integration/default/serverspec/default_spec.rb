require_relative 'spec_helper'

describe file('/usr/local/bin/jmeter') do
  it { should exist}
  it { should be_linked_to '/usr/local/jmeter-2.13/bin/jmeter' }
end

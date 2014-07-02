require_relative '../spec_helper'

describe 'memcached::default' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('memcached::default') }
  
  it 'installs memcached' do
    expect(chef_run).to install_package('memcached')
  end
end
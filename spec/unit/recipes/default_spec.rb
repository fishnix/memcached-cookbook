require_relative '../spec_helper'

describe 'memcached::default' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('memcached::default') }
  
  it 'installs memcached' do
    expect(chef_run).to install_package('memcached')
  end
  
  it 'creates /etc/sysconfig/memcached' do
    expect(chef_run).to render_file('/etc/sysconfig/memcached').with_content('Sysconfig for memcached')
  end
  
  it 'restarts memcached when /etc/sysconfig/memcached updates' do
    resource = chef_run.template('/etc/sysconfig/memcached')
    expect(resource).to notify('service[memcached]').to(:restart).delayed
  end
end
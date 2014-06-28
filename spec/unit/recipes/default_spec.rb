require 'spec_helper'

describe 'memcached::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge('memcached::default') }
end
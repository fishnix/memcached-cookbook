# Description

Installs and confiugures memcached

# Supported Platforms

CentOS 5.x/6.x

# Requirements

#Attributes

### memcache defaults
    default[:memcached][:port] = 11211
    default[:memcached][:user] = "nobody"
    default[:memcached][:maxconn] = 512
    default[:memcached][:cachesize] = 8
    default[:memcached][:pidfile] = "/var/run/memcached/memcached.pid"

# Usage

## Recipes

Include `memcached` in your node's `run_list` to get:

# Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

# License and Authors

Author:: E Camden Fisher (<fish@fishnix.net>)

CentOS 7 OpenResty NGINX Wordpress with Redis and CloudFlare
============================================================

Installs and configures Firewalld, Fail2ban, OpenResty Nginx, MariaDB, PHP 7.1, Redis, and the latest version of WordPress.


Configuration file: ```group_vars/all.yml```. Use ```all.example``` as a documented example.

The ```ansible-role-ipv6``` role is only necessary if your host supports IPv6 but does not provide an image that supports it out of the box without custom configuration.  To use this role you need to specify the ipv6 address and gateway as a ```host_vars``` variable. DigitalOcean supports IPv6 out of the box, while OVH's Cloud and OpenStack require it to be enabled manually.

The ```ansible-role-cloudflare``` **[DEPRECIATED]** role is called from dns.yml and it can be used to automatically configure DNS records for an ***existing zone*** using CloudFlare's API.

Playbooks
---------



**wordpress.yml**: Installs and configures Wordpress

**wordpress_bu.yml**: Backs up WordPress database via Email as well as locally. Also backs up uploads locally.

**dns.yml**: **[DEPRECIATED]** Sets up DNS records using CloudFlare API

Requires
---------

A VPS host or Cloud Service Provider (CSP) that supports IPv6.

At least 2 GB of memory.

A [CloudFlare](https://www.cloudflare.com) account with a domain configured.

Build Status
------------

**wordpress.yml and cv.yml playbooks**
[![Build Status](https://travis-ci.org/HauptJ/Ansible-WordPress-CloudFlare.svg?branch=master)](https://travis-ci.org/HauptJ/Ansible-WordPress-CloudFlare)

**ansible-role-wordpress**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-ipv6.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-ipv6)

**ansible-role-fail2ban-firewalld**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-fail2ban-firewalld.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-fail2ban-firewalld)

**ansible-role-mariadb**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-mariadb.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-mariadb)

**ansible-role-php-fpm**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-php-fpm.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-php-fpm)

**ansible-role-openresty**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-openresty.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-openresty)

**ansible-role-redis**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-redis.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-redis)

**ansible-role-updates**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-updates.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-updates)

**ansible-role-ipv6**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-ipv6.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-ipv6)

**ansible-role-selinux**
[![Build Status](https://travis-ci.org/HauptJ/ansible-role-selinux.svg?branch=master)](https://travis-ci.org/HauptJ/ansible-role-selinux)

## References
- [redis_cache with conditional purging](https://easyengine.io/wordpress-nginx/tutorials/single-site/redis_cache-with-conditional-purging/)
- [LEMP: CentOS 7, Nginx, PHP7, and Redis for WordPress](https://www.justinsilver.com/technology/linux/lemp-centos-7-nginx-php7-redis-wordpress/)

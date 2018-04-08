CentOS 7 OpenResty NGINX Wordpress with Redis and CloudFlare
============================================================

Installs and configures Firewalld, Fail2ban, OpenResty Nginx, MariaDB, PHP 7.1, Redis, and the latest version of Wordpress.


Configuration file: ```group_vars/all.yml```. Use ```all.example``` as a documented example.

The ```ansible-role-ipv6``` role is only necessary if your host supports IPv6 but does not provide an image that supports it out of the box without custom configuration. To use the role you need to specify the ipv6 address and gateway in ```all.yml```. DigitalOcean supports IPv6 out of the box, while OVH's Cloud and OpenStack require it to be enabled manually.

The ```ansible-role-cloudflare``` role is called from dns.yml and it can be used to automatically configure DNS records for an ***existing zone*** using CloudFlare's API.

Playbooks
---------

**dns.yml**: Sets up DNS records using CloudFlare API

**site.yml**: Installs and configures Wordpress

Requires
---------

A VPS host or Cloud Service Provider (CSP) that supports IPv6.

At least 2 GB of memory.

A [CloudFlare](https://www.cloudflare.com) account with a domain configured.

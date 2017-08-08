## Cài đặt module firewall trước:
# puppet module install puppetlabs-firewall --version 1.9.0
# https://forge.puppet.com/puppetlabs/firewall
node default {
	notify {"Re use module firewall (iptables) !":}
  include setupfirewall
}

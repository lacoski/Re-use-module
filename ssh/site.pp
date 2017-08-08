
## Cài đặt module ssh trước:
# puppet module install saz-ssh --version 3.0.1
# https://forge.puppet.com/saz/ssh
node default {
	notify {"Re use module ssh !":}
  include bannercustom
}

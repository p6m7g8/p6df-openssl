
######################################################################
#<
#
# Function: p6df::modules::openssl::deps()
#
#>
######################################################################
p6df::modules::openssl::deps() {
	ModuleDeps=(
		Matty9191/ssl-cert-check
	)
}

######################################################################
#<
#
# Function: p6df::modules::openssl::external::yum()
#
#  Environment:	 XXX
#>
######################################################################
p6df::modules::openssl::external::yum() {

	# XXX: 1.0.x
	sudo yum install openssl
}

######################################################################
#<
#
# Function: p6df::modules::openssl::external::brew()
#
#>
######################################################################
p6df::modules::openssl::external::brew() {

	brew install openssl
}

######################################################################
#<
#
# Function: p6df::modules::openssl::init()
#
#  Depends:	 p6_path
#  Environment:	 P6_DFZ_SRC_DIR SSLKEYLOGFILE
#>
######################################################################
p6df::modules::openssl::init() {

	export SSLKEYLOGFILE=/tmp/ssl-key-log-file.log
	p6_path_if "$P6_DFZ_SRC_DIR/Matty9191/ssl-cert-check"
}

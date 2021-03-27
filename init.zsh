
######################################################################
#<
#
# Function: p6df::modules::openssl::deps()
#
#>
######################################################################
p6df::modules::openssl::deps() {
	ModuleDeps=(
		p6m7g8/p6openssl
		Matty9191/ssl-cert-check
	)
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
#>
######################################################################
p6df::modules::openssl::init() {

	export SSLKEYLOGFILE=/tmp/ssl-key-log-file.log
	p6_path_if "$P6_DFZ_SRC_DIR/Matty9191/ssl-cert-check"
}

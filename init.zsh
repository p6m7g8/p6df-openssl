######################################################################
#<
#
# Function: p6df::modules::openssl::version()
#
#>
######################################################################
p6df::modules::openssl::version() { echo "0.0.1" }

p6df::modules::openssl::deps() {
	ModuleDeps=(p6m7g8/p6openssl)
}

######################################################################
#<
#
# Function: p6df::modules::openssl::external::brew()
#
#>
######################################################################
p6df::modules::openssl::external::brew() {

}

######################################################################
#<
#
# Function: p6df::modules::openssl::home::symlink()
#
#>
######################################################################
p6df::modules::openssl::home::symlink() {

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
}

#!/bin/sh
set -e

# Translate the PROXY_PROTOCOL switch into the bind option used by
# haproxy.cfg. When enabled, all frontends expect incoming connections to
# carry a PROXY protocol header ("accept-proxy"). Default: disabled.
case "${PROXY_PROTOCOL:-false}" in
	true|True|TRUE)
		export BIND_PROXY_PROTOCOL=accept-proxy
		;;
	*)
		export BIND_PROXY_PROTOCOL=
		;;
esac

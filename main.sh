#!/usr/bin/env bash

if [ `echo ${BASH_SOURCE[0]} | grep -c "/"` -gt 0 ]; then
    cd ${BASH_SOURCE[0]%/*}
fi

. ./log/log.sh

################################################################################

function main() {

    log_info "This is info log..."

    log_warn "This is warn log..."

    log_erro "This is erro log..."

}


################################################################################
main "$@"

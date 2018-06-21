#!/usr/bin/env bash
. ./log/log.sh


################################################################################
function main() {
    log_info "This is INFO log..."
    log_err "This is ERROR log..."
    log_warn "This is WARN log..."
}


################################################################################
main "$@"

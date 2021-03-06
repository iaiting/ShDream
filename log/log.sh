#!/usr/bin/env bash

################################################################################
#
# Author					: iaiting
# Generate Date		: 2018-06-25
# Email						: iaiting@aliyun.com
# Description			: 日志相关的shell脚本库函数
#
################################################################################

if [ `echo ${BASH_SOURCE[0]} | grep -c "/"` -gt 0 ]; then
    cd ${BASH_SOURCE[0]%/*}
fi

if [ "X${D_LOG_SH_}" != "X" ]; then
    return
fi

export D_LOG_SH_="log.sh"

. ../time/time.sh

################################################################################
#
# 函数名					: log_info
# 函数描述				: 打印 info 类型的日志
# 入参						: log_info “msg”
#
################################################################################

function log_info() {

    typeset msg=$1

    typeset ymdhms=`get_ymdhms`

    echo -e "\033[32m[INFO]\033[0m" "[${ymdhms}]" "$msg"

}

################################################################################
#
# 函数名					: log_erro
# 函数描述				: 打印 erro 类型的日志
# 入参						: log_erro “msg”
#
################################################################################

function log_erro() {

    typeset msg=$1

    typeset ymdhms=`get_ymdhms`

    echo -e "\033[31m[ERRO]\033[0m" "[${ymdhms}]" "$msg"

}

################################################################################
#
# 函数名					: log_warn
# 函数描述				: 打印 warn 类型的日志
# 入参						: log_warn “msg”
#
################################################################################

function log_warn() {

    typeset msg=$1

    typeset ymdhms=`get_ymdhms`

    echo -e "\033[33m[WARN]\033[0m" "[${ymdhms}]" "$msg"

}

################################################################################
#
# 函数名					: TEST_LOG
# 函数描述				: log.sh脚本文件的测试函数接口
# 入参						: TEST_LOG "test"
# 返回值					: nil
#
################################################################################
function TEST_LOG() {

    if [ $# -ne 1 ]; then
        return
    fi

    if [ "$1" != "logtest" ]; then
        return
    fi

    log_info "INFO"

    log_warn "WARN"

    log_erro "ERRO"

}

################################################################################
TEST_LOG "$@"

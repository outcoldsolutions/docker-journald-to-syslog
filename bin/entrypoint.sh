#!/bin/sh

if [[ -z "${KUBERNETES_NODENAME}" ]]; then
    hostname $(cat /etc/hostname)
else
    hostname "${KUBERNETES_NODENAME}"
fi


/usr/sbin/rsyslogd -f /etc/journald-to-syslog/rsyslog.conf -n

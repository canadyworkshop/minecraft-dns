#!/bin/sh

if [[ ! -z "${ALL_SERVERS}" ]]
then
    echo "address=/mco.lbsg.net/${ALL_SERVERS}" >> /etc/dnsmasq.conf
    echo "address=/mco.mineplex.com/${ALL_SERVERS}" >> /etc/dnsmasq.conf
    echo "address=/mco.cubecraft.net/${ALL_SERVERS}" >> /etc/dnsmasq.conf
    echo "address=/geo.hivebedrock.network/${ALL_SERVERS}" >> /etc/dnsmasq.conf
    echo "address=/play.galaxite.net/${ALL_SERVERS}" >> /etc/dnsmasq.conf
    echo "address=/play.pixelparadise.gg/${ALL_SERVERS}" >> /etc/dnsmasq.conf
else

    if [[ ! -z "${GALAXITE}" ]]; then
        echo "address=/play.galaxite.net/${GALAXITE}" >> /etc/dnsmasq.conf
    fi

    if [[ ! -z "${PIXEL_PARADISE}" ]]; then
        echo "address=/play.pixelparadise.gg/${PIXEL_PARADISE}" >> /etc/dnsmasq.conf
    fi

    if [[ ! -z "${LIFEBOAT}" ]]; then
        echo "address=/mco.lbsg.net/${LIFEBOAT}" >> /etc/dnsmasq.conf
    fi

    if [[ ! -z "${CUBECRAFT}" ]]; then
        echo "address=/mco.cubecraft.net/${CUBECRAFT}" >> /etc/dnsmasq.conf
    fi

    if [[ ! -z "${THE_HIVE}" ]]; then
        echo "address=/geo.hivebedrock.network/${THE_HIVE}" >> /etc/dnsmasq.conf
    fi

    if [[ ! -z "${MINEVILLE}" ]]; then
        echo "address=/mco.mineplex.com/${MINEVILLE}" >> /etc/dnsmasq.conf
    fi

fi

dnsmasq -d

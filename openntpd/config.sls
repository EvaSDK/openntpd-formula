# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "openntpd/map.jinja" import openntpd with context %}

openntpd-config:
  file.managed:
    - name: {{ openntpd.config_file }}
    - source: salt://openntpd/files/ntpd.conf
    - template: jinja

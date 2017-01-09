# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "openntpd/map.jinja" import openntpd with context %}

openntpd-pkg:
  pkg.installed:
    - name: {{ openntpd.pkg }}

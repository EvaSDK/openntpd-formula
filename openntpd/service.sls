# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "openntpd/map.jinja" import openntpd with context %}

include:
  - openntpd.config
  - openntpd.install

openntpd:
  service.running:
    - name: {{ openntpd.service.name }}
    - enable: True
    - reload: True
    - require:
      - pkg: openntpd-pkg
    - watch:
      - file: openntpd-config

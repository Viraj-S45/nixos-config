#!/usr/bin/env bash
alacritty -e bash -ic "ssh virajs@192.168.1.103 || (echo 'SSH failed'; exec bash)"

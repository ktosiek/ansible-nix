#!/usr/bin/env bash
#!nix-shell -i bash -p bundler bundix nix
set -xe

bundler package --path /tmp/vendor/bundle
bundix --target=nix/gemset.nix

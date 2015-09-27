{ lib, bundlerEnv, ruby }:

bundlerEnv {
  name = "kitchen";

  inherit ruby;
  gemfile = ../Gemfile;
  lockfile = ../Gemfile.lock;
  gemset = ./gemset.nix;
}

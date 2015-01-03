#!/usr/bin/env bats

NIX_USER=vagrant

run_u() {
    run sudo -u ${NIX_USER} -i "${@}"
}

as_user() {
    sudo -u ${NIX_USER} -i "${@}"
}

# Update nix-channel before running any tests
[ -f $(eval echo ~${NIX_USER}/.nix-defexpr) ] || \
    run_u nix-channel --update

@test "NIX_REMOTE is set for ${NIX_USER}" {
  run_u env
  echo "$output" | grep NIX_REMOTE=daemon
}

@test "nix can build packages" {
  run_u nix-env -iA nixpkgs.hello
  [ "$status" -eq 0 ]
  as_user which hello
}

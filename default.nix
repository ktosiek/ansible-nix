with import <nixpkgs> {};

let
  # Install kitchen-ansible from a fork.
  # This override is needed until https://github.com/neillturner/kitchen-ansible/pull/16 and https://github.com/neillturner/kitchen-ansible/pull/17 get fixed
  kitchen_ansible_gem = stdenv.mkDerivation {
    name = "kitchen-ansible.gem";

    src = fetchgit {
      url = "https://github.com/ktosiek/kitchen-ansible";
      rev = "c7fc4da6ab76d3fd6d978b46ab72f2d61f91a32e";
      sha256 = "14a6m5xcimhb3xjnlxyss9f7vp748ziqycj0gcicm19fhaxj0ajc";
    };

    buildInputs = [ pkgs.ruby ];

    buildPhase = ''
      gem build kitchen-ansible.gemspec;
    '';

    installPhase = ''
      rm -rf $out
      cp kitchen-ansible-*.gem $out;
    '';
  };

  kitchen_ansible = pkgs.lib.overrideDerivation pkgs.rubyLibs.kitchen_ansible (attrs: {
    src = kitchen_ansible_gem;
  });

in

stdenv.mkDerivation {
  name = "ansible-nix";

  buildInputs = [
    pkgs.rubyLibs.test_kitchen
    kitchen_ansible
    pkgs.rubyLibs.kitchen_vagrant
  ];

  src = null;
}

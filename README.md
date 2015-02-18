Nix
===

Sets up Nix package manager for multiuser usage.
Nix is a reliable, reproducible package manager with rollbacks, side-by-side multiple versions of packages, and user-level package management. See http://nixos.org/nix/ for details.


Simple local usage
------------------

To just setup Nix locally, use:

    cd example/ && sudo ansible-playbook -i localhost, -c local playbook.yml -e nix_users=user1,user2,user3


Role Variables
--------------

    nix_users: []

List of usernames that should be added to nix-users group. Only they can access the Nix daemon.


Example Playbook
----------------

This role doesn't need any configuration apart from setting nix_users.

    - hosts: servers
      roles:
         - role: ktosiek.nix
           nix_users: user1,user2

License
-------

BSD

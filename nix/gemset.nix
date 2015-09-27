{
  "faraday" = {
    version = "0.9.1";
    source = {
      type = "gem";
      sha256 = "1h33znnfzxpscgpq28i9fcqijd61h61zgs3gabpdgqfa1043axsn";
    };
    dependencies = [
      "multipart-post"
    ];
  };
  "highline" = {
    version = "1.7.7";
    source = {
      type = "gem";
      sha256 = "1pcalavh9n35h5b3l6gdqj2rr4c8qv88wbwiwx1i9cfxiqgkmkaa";
    };
  };
  "kitchen-ansible" = {
    version = "0.0.26";
    source = {
      type = "gem";
      sha256 = "1148p3i6yy5awc97vmkg9phy3j7vqgr47nc5mzg0ll95xslrcbn9";
    };
    dependencies = [
      "librarian-ansible"
      "test-kitchen"
    ];
  };
  "kitchen-vagrant" = {
    version = "0.19.0";
    source = {
      type = "gem";
      sha256 = "0sydjihhvnr40vqnj7bg65zxf00crwvwdli1av03ghhggrp5scla";
    };
    dependencies = [
      "test-kitchen"
    ];
  };
  "librarian" = {
    version = "0.1.2";
    source = {
      type = "gem";
      sha256 = "0h339nclw0lhczimb736qj6grbkkq2mz660kkzc06nsxxhskh9kw";
    };
    dependencies = [
      "highline"
      "thor"
    ];
  };
  "librarian-ansible" = {
    version = "1.0.6";
    source = {
      type = "gem";
      sha256 = "1dc6axylv7dz3px9hdgapk8hr57i3s5v68dljdvjy82a209gsq1k";
    };
    dependencies = [
      "faraday"
      "librarian"
    ];
  };
  "mixlib-shellout" = {
    version = "2.2.1";
    source = {
      type = "gem";
      sha256 = "16bn29i3fz79bv9b2q5m0ihn3sb0r5m5zk82vvzkfm56fh427pgp";
    };
  };
  "multipart-post" = {
    version = "2.0.0";
    source = {
      type = "gem";
      sha256 = "09k0b3cybqilk1gwrwwain95rdypixb2q9w65gd44gfzsd84xi1x";
    };
  };
  "net-scp" = {
    version = "1.2.1";
    source = {
      type = "gem";
      sha256 = "0b0jqrcsp4bbi4n4mzyf70cp2ysyp6x07j8k8cqgxnvb4i3a134j";
    };
    dependencies = [
      "net-ssh"
    ];
  };
  "net-ssh" = {
    version = "2.9.2";
    source = {
      type = "gem";
      sha256 = "1p0bj41zrmw5lhnxlm1pqb55zfz9y4p9fkrr9a79nrdmzrk1ph8r";
    };
  };
  "safe_yaml" = {
    version = "1.0.4";
    source = {
      type = "gem";
      sha256 = "1hly915584hyi9q9vgd968x2nsi5yag9jyf5kq60lwzi5scr7094";
    };
  };
  "test-kitchen" = {
    version = "1.4.2";
    source = {
      type = "gem";
      sha256 = "017fify4hnk9rn4i7165x80xamsp6n2rb85j31s9ggb57xjv7bvs";
    };
    dependencies = [
      "mixlib-shellout"
      "net-scp"
      "net-ssh"
      "safe_yaml"
      "thor"
    ];
  };
  "thor" = {
    version = "0.19.1";
    source = {
      type = "gem";
      sha256 = "08p5gx18yrbnwc6xc0mxvsfaxzgy2y9i78xq7ds0qmdm67q39y4z";
    };
  };
}
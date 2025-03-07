{ config, pkgs, ... }: 

{
  imports = [
    ./hardware-configuration.nix
    ./traefik.nix
    ./services.nix
    ./gb-proxy.nix
    ./wireguard.nix
  ];

  boot.cleanTmpDir = true;
  networking.hostName = "vps-6a721a7c";
  networking.firewall.allowPing = true;
  services.openssh.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwZnp/BQPN51mLsMyOdGoZ9fEWRsqc/2xo2ZlktHTwiLVUk4R9xeCVUMWUxeTMfYg/DBRjL7TU7o3ItRJwgR6x1bXQHv2czCBDPzohE53AUd+4RdEFRA18/CzRyDRH8nU0NDNFOIWbGsqA+0kQJe7IiftLSwyLcSaL5uXHsDEOj4yBQXVfSOMuP4JqlBpiWDko39LM/+EtKBAaDHEzLqMDGljGb+9YhyxpZAoRMXM1gxayh0l1k924prqB9WXxDQTg3azf3Is3v0fSp2Lk9DygAd9RhVzs1tmv3nmQ5xgiPJXWJPNUwnAapamGCeimzC3GXcWGo7g4x1iBPAzzpWJM1EJt3SyBCAPb8Jlj7YahtAXAzl9oekAWG1Vdx2bTMPWJUnll2UqD8ss6UQcR77w2111IEtI+j+SQskE72DAR8Ai5AUs4kzS6OJXfmJx0nljKJFzZqDs9U2muimF4NhRInkj4KkOqxGj91H6E9KNqVCl2EBZfgO3G6CKCmgcR2fh0/MBI0C/sUwWdvCjWTN1s36wLVs6+gsc5npLkrfhA7mGRyY0PdMleXG78s728HQJjPJg6sG6UL4OW0glGlQAy2rInBfnaCZSH6RulfPEXCY/Q99dwlOtuaFpWxOOj4Jwt/Ua9lQX5+qLIagM9DhIpYPZ/ZIYmdR5CKgmI80iDLQ== babbaj45@gmail.com"
  ];
}

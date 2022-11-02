# Bind9 ISC Sample Container

This is simple container and config for 

## How to Run with Podman?

You need to chown as 104 (BIND USER), and 105 (BIND GROUP), using `podman unshare chown 104:105 -R *`, then run `podman-compose up`, the yml already contain :Z map for SELINUX Context, then open port using `firewall-cmd --add-port=8053/udp`, then start fidling!

# Dotfiles

## Installation

## Optional: Fixing VPN connections

This is unrelated to these dotfiles, but sometimes required in my setup.

When for some reason your VPN connection doesn't redirect any traffic over your VPN when enabling the "Send all traffic over VPN" option, you can add a script to automatically create network routes when connecting to a VPN.

Create an 'executable' file as root in `/etc/ppp/ip-up` with the following contents:

```sh
#!/bin/sh

/sbin/route add -net 10.0.1.0/24 -interface $1
```

After the VPN interface goes up, represented in the `$1` variable, it will automatically create a route for `10.0.1.0/24` and direct all traffic for this subnet over the VPN interface.
You can add as many subnets or route definitions to this file as you seem fit.

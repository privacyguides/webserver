# Webserver configuration

## Caddy

Requires custom plugins:

- [jonaharagon/caddy-umami](https://github.com/jonaharagon/caddy-umami)
- [caddyserver/cache-handler](https://github.com/caddyserver/cache-handler)
- [digilolnet/caddy-bunny-ip](https://github.com/digilolnet/caddy-bunny-ip)

## IPFS

> [!NOTE]
> The benefit of IPFS is that it's decentralized, but that means we need you to help us out! You can contribute by joining our IPFS Cluster as a follower, which means your IPFS node will pin new releases of the website automatically: [More info](ipfs/README.md)

Our website is available via IPFS at `/ipns/ipfs.privacyguides.org`. Some gateways you could try:

- https://ipfs.jonaharagon.net/ipns/ipfs.privacyguides.org/
- https://cloudflare-ipfs.com/ipns/ipfs.privacyguides.org/
- https://ipfs-privacyguides-org.ipns.4everland.io/

Using a gateway is much less trustworthy than downloading the IPFS client / browser extension and running it yourself.

If your local client is having a difficult time accessing the website, you may find it useful to [peer](https://docs.ipfs.tech/how-to/peering-with-content-providers/) with one of the following nodes:

- `/dnsaddr/node-1.ipfs.jonaharagon.net/p2p/12D3KooWMwqzuApCKxYfo66zq5BrTjCoz9naJ1rrMEBCnwuGGqWB`
- `/dnsaddr/node-2.ipfs.jonaharagon.dev/p2p/12D3KooWKP7iYmfozYTsComaaBoFrS7k8HViU7ahZ8LQaEzgNzMy`
- `/dnsaddr/node-3.ipfs.jonaharagon.net/p2p/12D3KooWHnooJFWAw32fUtCHpnDwa1GALkc4oFbxyJMZXxN7RVoh`

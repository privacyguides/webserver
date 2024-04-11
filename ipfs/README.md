# Privacy Guides IPFS Cluster

IPFS is a decentralized, peer-to-peer network for storing and sharing data. We store [privacyguides.org](https://www.privacyguides.org) on the network, to make the website as accessible as possible regardless of internet or DNS censorship.

## Joining the cluster

If you want to contribute to mirroring a copy of the website, you can join our IPFS Cluster. Doing so will automatically "pin" every release of our website to your IPFS client for 90 days, meaning other people will be able to grab a copy of the website from you in case they aren't able to from anywhere else.

1. [Install IPFS](https://docs.ipfs.tech/install/ipfs-desktop/)
2. [Install `ipfs-cluster-follow`](https://dist.ipfs.tech/#ipfs-cluster-follow)
    - On Linux, you could download the binary from this page and move it to `/usr/bin/local`, for example
3. Run `ipfs-cluster-follow privacyguides_ipfs run --init https://raw.githubusercontent.com/privacyguides/webserver/main/ipfs/service.json`
4. After running the init command for the first time, you may want to set up a systemd service to run the cluster in the background, this might be a good starting point:

    ```systemd
    [Unit]
    Description=IPFS Cluster Service
    After=network.target

    [Service]
    LimitNOFILE=infinity
    Environment="IPFS_CLUSTER_FD_MAX=10000"
    ExecStart=/usr/local/bin/ipfs-cluster-follow privacyguides_ipfs run
    Restart=on-failure
    User=ipfs

    [Install]
    WantedBy=multi-user.target
    ```

## Update Script

The [update-pin.sh](./update-pin.sh) script is another convenient way to download the latest copy of the site and save it to your [MFS](https://docs.ipfs.tech/concepts/file-systems/). You could consider running it in a cron job for example.

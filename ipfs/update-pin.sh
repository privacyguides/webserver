#!/bin/bash

mfs_dir="/privacyguides.org"
ipns_id="ipfs.privacyguides.org"

# Detect ipfs command
if ! command -v ipfs &> /dev/null; then
  echo "ipfs command not found"
  exit 1
fi

function pin() {
  # Detect if already pinned in IPFS
  if ! ipfs files stat --hash $1; then
    printf "Pin not found, pinning \e[33m$name\e[0m...\n"
    ipfs pin add $(ipfs name resolve $ipns)
  fi
}

# Pin an IPFS name to the local node, update the pin when it changes
function update() {
  local name="$1"
  local ipns="$2"

  pin $name $ipns

  printf "Updating \e[33m$name\e[0m...\n"

  local oldIpfs="$(ipfs files stat --hash $name)"
	local newIpfs="$(ipfs name resolve $ipns)"

  ipfs pin update "$oldIpfs" "$newIpfs"
	ipfs files rm -r "$name"
	ipfs files cp "$newIpfs" "$name"
	ipfs files stat "$name"

	printf "\n"
}

update "$mfs_dir" "$ipns_id" &
wait

echo 'Done.'

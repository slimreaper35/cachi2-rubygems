#!/bin/bash

bundle cache

podman build . \
  --volume "$(realpath ./cachi2-output)":/app/cachi2-output:Z \
  --volume "$(realpath ./cachi2.env)":/app/cachi2.env:Z \
  --network none \
  --no-cache \
  --tag cachi2-rubygems

podman run --rm cachi2-rubygems

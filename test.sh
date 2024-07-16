#!/bin/bash

podman build . \
  --volume "$(realpath ./cachi2-output)":/app/cachi2-output:Z \
  --network none \
  --no-cache \
  --tag cachi2-rubygems

podman run --rm cachi2-rubygems

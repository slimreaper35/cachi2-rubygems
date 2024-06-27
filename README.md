#

```bash
sudo dnf install -y ruby ruby-devel
```

```bash
bundle cache
```

```bash
podman build . \
  --volume "$(realpath ./cachi2-output)":/app/cachi2-output:Z \
  --volume "$(realpath ./cachi2.env)":/app/cachi2.env:Z \
  --network none \
  --tag cachi2-rubygems
```

```bash
podman run --rm cachi2-rubygems
```

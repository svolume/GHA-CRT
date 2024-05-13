# GHA-CRT: GitHub Actions Container Runner for Typst

## Usage

1. create `config.yml` out of `config.yml.default`

```yml
# Repository URL
url: "https://github.com/USERNAME/REPOSITORY"

# self-hosted Runner token
token: YOURRUNNERTOKEN

# Name of the Runner
name: typst-runner

# additional Labels to the defaults
# defaults are 'self-hosted', 'Linux' and 'X64'
labels: "alpine, typst"
```

2. start container with

```bash
podman run -d -v /path/to/config.yml:/actions-runner/config.yml --name gha-crt ghcr.io/svolume/gha-crt:main
```

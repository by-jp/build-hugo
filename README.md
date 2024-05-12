# build-hugo

A docker container for building [hugo](https://gohugo.io) static sites, including a handful of important tools:

- [Pagefind](https://pagefind.app) for excellent static search
- [Lychee](https://lychee.cli.rs/) for link checking
- [Go](https://go.dev/) for more complex custom tooling
- [Task](https://taskfile.dev) for easy definition of tasks

## Usage

By default this will run `task build` in the `/workspace` directory. The specified docker command will be used as the command for your taskfile:

```bash
# Runs `task --list-all` in the current directory
docker run -v $(pwd):/workspace ghcr.io/by-jp/build-hugo task--list-all
```

## Maintenance

In this repo the scripts behind `task upgrade` should be able to manually bump to the latest stable versions of these tools (which I aim to target here). In the future, this may be run regularly & automatically.

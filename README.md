# Singularity template

The [Singularity](https://github.com/sylabs/singularity) template, configured for [Gitpod](https://www.gitpod.io) to give you pre-built, ephemeral development environments in the cloud.

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-io/template-singularity)

## Limitations

For the `shell` subcommand, `--sif-fuse` option should be used.

For example:

```bash
singularity shell --sif-fuse docker://python:3.8.9-slim
```

Certain features might not work.

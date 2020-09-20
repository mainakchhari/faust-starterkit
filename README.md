# Project

## For Development

1. SETUP:
    - Run `pipenv sync --dev`
    - copy `.env.example` to `.env`
2. Start kafka with `docker-compose up -d`
3. Start worker with `pipenv run wxworker worker -l info`

## Issues

1. docker-compose up : `ERROR: for app  Cannot start service app: OCI runtime create failed: container_linux.go:349: starting container process caused "exec: \"mwx_worker\": executable file not found in $PATH": unknown`

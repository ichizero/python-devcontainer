# My Python development space boilerplate

## Requirements
- Visual Studio Code
- Docker

## Environment
- Python 3.7

## Preparation
```bash
$ cd ./to/your/workdir
$ git clone https://github.com/ichizero/python-devspace.git
$ mv python-devspace your-repo-name
$ cd your-repo-name
$ rm -rf .git && git init
```

## Usage
### Development
Open the folder in Container by using VSCode.

You can attach to the dev container.
```bash
$ make attach
```

### Build
```bash
$ make build
```

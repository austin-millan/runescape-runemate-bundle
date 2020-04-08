# RuneScape & RuneMate Bundle

This repository provides a way to run RuneScape + RuneMate in a Docker container.

## Requirements

- Docker
- X Server

## Build

### Option 1: Pull From Docker Registry

```bash
docker pull aamillan/runescape-runemate-bundle
```

### Option 2: Build it Yourself

```bash
git clone https://github.com/austin-millan/runescape-runemate-bundle.git && cd runescape-runemate-bundle
docker build -t runescape-runemate-bundle:latest .
```

## Run

### Run OSRS

```bash
docker run -tid \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       oldschool-runemate-launcher:latest \
       oldschool
```

### Run OSRS & RuneMate

```bash
docker run -tid \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       oldschool-runemate-launcher:latest \
       bash -c "oldschool & RuneMate"
```

## Wiki (Documentation / Troubleshooting)

[runescape-runemate-bundle/wiki](https://github.com/austin-millan/runescape-runemate-bundle/wiki)
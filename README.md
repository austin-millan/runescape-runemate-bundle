# RuneScape & RuneMate Bundle

This repository provides a way to run RuneScape + RuneMate in a Docker container.

## Requirements

- Docker
- X Server

## Build

This script builds your image.

```bash
./build.sh
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

Note, you may run into an issue with X11 server:

```bash
$ ./run.sh
No protocol specified
Exception in thread "main" java.awt.AWTError: Can't connect to X11 window server using ':0' as the value of the DISPLAY variable.
        at sun.awt.X11GraphicsEnvironment.initDisplay(Native Method)
        at sun.awt.X11GraphicsEnvironment.access$200(X11GraphicsEnvironment.java:65)
        at sun.awt.X11GraphicsEnvironment$1.run(X11GraphicsEnvironment.java:115)
        at java.security.AccessController.doPrivileged(Native Method)
        at sun.awt.X11GraphicsEnvironment.<clinit>(X11GraphicsEnvironment.java:74)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:264)
        at java.awt.GraphicsEnvironment.createGE(GraphicsEnvironment.java:103)
        at java.awt.GraphicsEnvironment.getLocalGraphicsEnvironment(GraphicsEnvironment.java:82)
        at java.awt.Window.initGC(Window.java:475)
        at java.awt.Window.init(Window.java:495)
        at java.awt.Window.<init>(Window.java:537)
        at java.awt.Frame.<init>(Frame.java:420)
        at java.awt.Frame.<init>(Frame.java:385)
        at app.appletviewer.a(appletviewer.java:263)
        at jagexappletviewer.main(jagexappletviewer.java:78)
```

If you get an error related to DISPLAY, you may have to run:

```bash
xhost +local:$(id -un)
```

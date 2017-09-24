# MiniDLNA

This is MiniDLNA on top of minimal Alpine.
It can be configured with environment variables.

## Build image

1. Make the entrypoint.sh as executable before building the image:  chmod +x entrypoint.sh
2. Build image:  docker build -t gsd_minidlna .

## Usage

Prefix any configuration directive of MiniDLNA with `MINIDLNA_`
and run your container:

```
docker run -d --net=host \
  -p 8200:8200 \
  -v <media dir on host>:/media \
  -e MINIDLNA_MEDIA_DIR=/media \
  -e MINIDLNA_FRIENDLY_NAME=MediaServer \
  -e MINIDLNA_INOTIFY=yes \
  -e MINIDLNA_MAX_CONNECTIONS=5 \
  gsd_minidlna
```

Check container log: docker logs <container_id>

See: http://manpages.ubuntu.com/manpages/raring/man5/minidlna.conf.5.html

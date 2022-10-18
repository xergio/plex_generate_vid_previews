Create `config.py` from `config.py-example`.

Build and test:

```shell
$ docker build -t plex_generate_previews .
$ docker run -it --rm plex_generate_previews python --version
$ docker run -it --rm plex_generate_previews ffmpeg -version
$ docker run -it --rm plex_generate_previews mediainfo --Version
```

Usage:

```shell
$ docker run -it --rm \
    --device /dev/dri \
    -v /PLEX_LOCAL_MEDIA_PATH:/PLEX_LOCAL_MEDIA_PATH \
    -v /PLEX_LOCAL_VIDEOS_PATH_MAPPING:/PLEX_LOCAL_VIDEOS_PATH_MAPPING \
    -v /dev/shm:/dev/shm \
    plex_generate_previews
```

docker run -it --rm \
    --device /dev/dri:/dev/dri \
    -v /mnt:/mnt \
    -v /dev/shm:/dev/shm \
    plex_generate_previews
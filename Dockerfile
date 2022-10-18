FROM python:alpine

WORKDIR /app

# https://github.com/stevezau/plex_generate_vid_previews

# STEP 1
RUN apk add --no-cache ffmpeg mediainfo

# STEP 2
RUN apk add --no-cache --virtual .build-deps build-base linux-headers musl-dev python3-dev \
 && pip install --no-cache-dir loguru rich plexapi gpustat==1.0.0rc1 requests pymediainfo \
 && apk del .build-deps

# STEP 3: copy config.py-example to config.py and edit
COPY *.py ./

# STEP 4
CMD [ "python3", "plex_generate_previews.py" ]

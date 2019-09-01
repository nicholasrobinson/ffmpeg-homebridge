# docker-ffmpeg-homebridge
A Homebridge Dockerfile built on oznu/docker-homebridge with FFmpeg copied from alfg/ffmpeg.

## Motivation

I was encountering the following issue running [docker-homebridge](https://www.github.com/oznu/docker-homebridge) and [ring](https://github.com/dgreif/ring) on Synology:

`[Ring] Streaming video only - found ffmpeg, but libfdk_aac is not installed.`

a.k.a.
https://github.com/marcoraddatz/homebridge-docker/issues/53
https://github.com/oznu/docker-homebridge/issues/82
https://github.com/dgreif/ring/issues/114

I was able to fix it by patching the [docker-homebridge](https://www.github.com/oznu/docker-homebridge) image with the FFmpeg from [alfg/ffmpeg](https://hub.docker.com/r/alfg/ffmpeg).

To get the fix on Synology whilst preserving your config, just stop your existing homebridge container and replace it with `nicholasrobinson/ffmpeg-homebridge`.

## Usage

* Pull Docker image and run:
```
docker pull nicholasrobinson/ffmpeg-homebridge
docker run -it --rm nicholasrobinson/ffmpeg-homebridge
```

* or build and run container from source:

```
docker build -t ffmpeg-homebridge .
docker run ffmpeg-homebridge
```

* or use as a base image in your Dockerfile:
```
FROM nicholasrobinson/ffmpeg-homebridge:latest
```

## Resources
* https://github.com/alfg/docker-ffmpeg
* https://github.com/oznu/docker-homebridge

## License
MIT

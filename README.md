# docker-ffmpeg-homebridge
A Homebridge Dockerfile built on oznu/docker-homebridge with FFmpeg copied from alfg/ffmpeg.

## Usage

* Pull Docker image and run:
```
docker pull nicholasrobinson/ffmpeg-homebridge
docker run -it --rm nicholasrobinson/ffmpeg-homebridge ffmpeg-homebridge -buildconf
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

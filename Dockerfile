FROM oznu/homebridge:latest
LABEL MAINTAINER Nicholas Robinson <me@nicholassavilerobinson.com>
ENV PATH=/opt/ffmpeg/bin:$PATH

COPY --from=alfg/ffmpeg /opt/ffmpeg /opt/ffmpeg
COPY --from=alfg/ffmpeg /usr/lib/libfdk-aac.so.2 /usr/lib/libfdk-aac.so.2
COPY --from=alfg/ffmpeg /usr/lib/libssl.so.45 /usr/lib/libssl.so.45
COPY --from=alfg/ffmpeg /usr/lib/libcrypto.so.43 /usr/lib/libcrypto.so.43
COPY --from=alfg/ffmpeg /usr/lib/libvpx.so.4 /usr/lib/libvpx.so.4
COPY --from=alfg/ffmpeg /usr/lib/libx265.so.151 /usr/lib/libx265.so.151
COPY --from=alfg/ffmpeg /usr/lib/libass.so.9 /usr/lib/libass.so.9
COPY --from=alfg/ffmpeg /usr/lib/libfreetype.so.6 /usr/lib/libfreetype.so.6
COPY --from=alfg/ffmpeg /usr/lib/librtmp.so.1 /usr/lib/librtmp.so.1
COPY --from=alfg/ffmpeg /usr/lib/libwebpmux.so.3 /usr/lib/libwebpmux.so.3
COPY --from=alfg/ffmpeg /usr/lib/libwebp.so.7 /usr/lib/libwebp.so.7
COPY --from=alfg/ffmpeg /usr/lib/libmp3lame.so.0 /usr/lib/libmp3lame.so.0
COPY --from=alfg/ffmpeg /usr/lib/libopus.so.0 /usr/lib/libopus.so.0
COPY --from=alfg/ffmpeg /usr/lib/libtheoraenc.so.1 /usr/lib/libtheoraenc.so.1
COPY --from=alfg/ffmpeg /usr/lib/libtheoradec.so.1 /usr/lib/libtheoradec.so.1
COPY --from=alfg/ffmpeg /usr/lib/libvorbis.so.0 /usr/lib/libvorbis.so.0
COPY --from=alfg/ffmpeg /usr/lib/libvorbisenc.so.2 /usr/lib/libvorbisenc.so.2
COPY --from=alfg/ffmpeg /usr/lib/libx264.so.152 /usr/lib/libx264.so.152
COPY --from=alfg/ffmpeg /usr/lib/libfribidi.so.0 /usr/lib/libfribidi.so.0
COPY --from=alfg/ffmpeg /usr/lib/libfontconfig.so.1 /usr/lib/libfontconfig.so.1
COPY --from=alfg/ffmpeg /usr/lib/libpng16.so.16 /usr/lib/libpng16.so.16
COPY --from=alfg/ffmpeg /usr/lib/libogg.so.0 /usr/lib/libogg.so.0

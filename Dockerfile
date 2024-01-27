# FROM alpine:latest

# RUN apk add \
# 	libcamera-raspberrypi \
# 	libcamera-tools

# RUN echo "cam -l" >> /root/.ash_history

# WORKDIR /
# COPY entrypoint.sh .

# ENTRYPOINT ["/entrypoint.sh"]

FROM debian:latest

COPY raspi.list /etc/apt/sources.list.d/raspi.list
COPY trusted.gpg /etc/apt/trusted.gpg.d/raspi.gpg

RUN apt update
RUN apt install -y \
	libcamera-tools \
	libcamera-apps-lite \
	gstreamer1.0-plugins-bad \
	gstreamer1.0-plugins-base \
	gstreamer1.0-plugins-ugly \
	gstreamer1.0-tools \
	gstreamer1.0-libcamera

WORKDIR /
COPY entrypoint.sh .

# ENV UDEV=on

RUN echo "libcamera-hello" >> /root/.bash_history

ENTRYPOINT ["/entrypoint.sh"]
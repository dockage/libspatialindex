# LibspatialIndex [![Docker Pulls](https://img.shields.io/docker/pulls/dockage/libspatialindex.svg?style=flat)](https://hub.docker.com/r/dockage/libspatialindex/) [![Docker Stars](https://img.shields.io/docker/stars/dockage/libspatialindex.svg?style=flat)](https://hub.docker.com/r/dockage/libspatialindex/) [![MicroBadger Size (latest)](https://img.shields.io/microbadger/image-size/dockage/libspatialindex/latest.svg)](https://microbadger.com/images/dockage/libspatialindex:latest) [![MicroBadger Layers (latest)](https://img.shields.io/microbadger/layers/dockage/libspatialindex/latest.svg)](https://microbadger.com/images/dockage/libspatialindex:latest) [![Build Status](https://cloud.drone.io/api/badges/dockage/libspatialindex/status.svg)](https://cloud.drone.io/dockage/libspatialindex)

LibspatialIndex is a lightweight docker image which contains a pre-installed latest stable version of the [Libspatialindex](https://libspatialindex.org/) library.

## Installation

Pull the image from the docker index. This is the recommended method of installation as it is easier to update image. These builds are performed by the **Docker Trusted Build** service.

```bash
docker pull dockage/libspatialindex:latest
```

Alternately you can build the image locally.

```bash
git clone https://github.com/dockage/libspatialindex.git
cd libspatialindex
docker build --tag="$USER/libspatialindex" .
```

**Note:** this docker image doesn't contain any C++ compiler and build tools (e.g. g++, cmake, ...). So, you need to install them manually.

## Quick start

Install C++ compiler:

```
# apk --no-cache --update add g++
```

GCC compiler flag:

```
# g++ sample.cc -lspatialindex
```

or install C++ compiler and build tools your Docker file and then compile your project:

```
FROM dockage/libspatialindex:latest
RUN apk --no-cache --update add g++ cmake make
RUN cd /code/ && cmake . && make -j8
```

You can also build your project outside, and then put the compiled file inside the container. Then you don't need to install the related tools like compiler anymore.

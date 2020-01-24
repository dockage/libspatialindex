FROM dockage/alpine:3.10

LABEL maintainer="me@mortezana.com" \
    org.label-schema.name="libspatialindex" \
    org.label-schema.vendor="Dockage" \
    org.label-schema.description="Docker libspatialindex built on Alpine Linux" \
    org.label-schema.license="MIT"

RUN apk --no-cache --update add g++ cmake make curl tar \
	&& curl -OL https://github.com/libspatialindex/libspatialindex/releases/download/1.9.3/spatialindex-src-1.9.3.tar.gz \
	&& tar xzf spatialindex-src-1.9.3.tar.gz \
	&& cd spatialindex-src-1.9.3/ \
	&& cmake . \
	&& make -j8 \
	&& make install \
	&& cd .. \
	&& rm -rf spatialindex-src-1.9.3* \
	&& apk del g++ cmake make curl tar

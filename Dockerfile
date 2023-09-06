ARG VERSION=latest
ARG VARIANT=musl
FROM busybox:${VERSION}-${VARIANT} AS base

FROM scratch
COPY --from=base /bin/busybox /busybox

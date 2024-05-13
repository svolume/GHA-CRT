FROM --platform=Linux/x86_64 alpine:latest
LABEL org.opencontainers.image.authors="35426447+svolume@users.noreply.github.com"

# ARG
ARG BUILD_DATE

# Labels
LABEL org.opencontainers.image.created='$BUILD_DATE'
LABEL org.opencontainers.image.source=https://github.com/svolume/gha-crt
LABEL org.opencontainers.image.description='GitHub Actions Container Runner for Typst'
LABEL org.opencontainers.image.licenses=MIT

# ENV
ENV RUNNER_ALLOW_RUNASROOT="1"

RUN apk add bash gcompat aspnetcore6-runtime curl tar git
RUN wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq
RUN apk add typst --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk update
COPY setup.sh /setup.sh
RUN chmod +x setup.sh
RUN bash setup.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

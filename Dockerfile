FROM ubuntu:18.04
MAINTAINER Naftuli Kay <me@naftuli.wtf>

ENV BUILD_VERSION=v1

RUN DEBIAN_FRONTEND=noninteractive apt-get update >/dev/null && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils software-properties-common git build-essential \
    pkg-config && \
  add-apt-repository -y ppa:neovim-ppa/stable >/dev/null && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y neovim python-neovim >/dev/null && \
  update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 90 && \
  update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 90

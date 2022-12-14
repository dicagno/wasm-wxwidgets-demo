FROM ubuntu:22.04

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates git lsb-release wget software-properties-common gnupg build-essential cmake libwxgtk3.0-gtk3-dev libglew-dev libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev libsdl2-dev libsdl2-2.0-0 libjpeg-dev libwebp-dev libtiff5-dev libsdl2-image-dev libsdl2-image-2.0-0 libfreetype6-dev libsdl2-ttf-dev libsdl2-ttf-2.0-0 && \
  bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)" && \
  mkdir /tools && git clone https://github.com/emscripten-core/emsdk.git /tools/emsdk && bash -c 'cd /tools/emsdk && git pull && ./emsdk install latest && ./emsdk activate latest && ls -al && source ./emsdk_env.sh' && echo 'source "/tools/emsdk/emsdk_env.sh"' >> $HOME/.bash_profile
WORKDIR /work
COPY ./src .
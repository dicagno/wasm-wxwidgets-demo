#!/bin/bash

docker build --progress=plain -t wasm-wxwidgets-demo:latest . &&
  docker run --rm -v "$(pwd)/static:/dist" wasm-wxwidgets-demo:latest bash -c 'source "/tools/emsdk/emsdk_env.sh" && make'
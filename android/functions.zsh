#! /bin/bash

function drawable() {
  SRC="${1}"
  RES="${2}"
  FILENAME=$(basename $SRC)
  PREFIX="mipmap"
  if [ $# -eq 0 ]; then
    echo "No arguments supplied"
  else if [ -f "${SRC}" ]; then
    echo " Creating different dimensions (dips) of "${SRC}" ..."
    mkdir -p "${RES}/${PREFIX}-xxxhdpi"
    mkdir -p "${RES}/${PREFIX}-xxhdpi"
    mkdir -p "${RES}/${PREFIX}-xhdpi"
    mkdir -p "${RES}/${PREFIX}-hdpi"
    mkdir -p "${RES}/${PREFIX}-mdpi"
    if [ ${SRC} = "ic_launcher.png" ] || [ ${SRC} = "ic_launcher_round.png" ]; then
        echo "  App icon detected"
        convert "${SRC}" -resize 144x144 "${PREFIX}-xxhdpi/${SRC}"
        convert "${SRC}" -resize 96x96 "${PREFIX}-xhdpi/${SRC}"
        convert "${SRC}" -resize 72x72 "${PREFIX}-hdpi/${SRC}"
        convert "${SRC}" -resize 48x48 "${PREFIX}-mdpi/${SRC}"
        rm -i "${SRC}"
    else
        convert ${SRC} -resize 67% ${RES}/${PREFIX}-xxhdpi/${FILENAME}
        convert ${SRC} -resize 50% ${RES}/${PREFIX}-xhdpi/${FILENAME}
        convert ${SRC} -resize 33% ${RES}/${PREFIX}-hdpi/${FILENAME}
        cp ${SRC} ${RES}/${PREFIX}-xxxhdpi/${FILENAME}
    fi
    echo " Done"
  else
    echo "${SRC} not found."
  fi
  fi
}


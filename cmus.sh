#!/bin/bash

cmus_controles() {
  musica=$(cmus-remote -Q | grep "tag title" | cut -c 10-50)
  artista=$(cmus-remote -Q | grep "tag artist" | cut -c 12-50)
  echo "$musica - $artista"
}

cmus_estado() {
  estado=$(cmus-remote -Q | grep status | cut -d " " -f2)

  if [ $estado = "playing" ]
  then
    cmus_controles
  else 
    if [ $estado = "paused" ]
      then
        echo "CMUS en pausa"
      else
        echo "CMUS no esta iniciado"
    fi
  fi
}

cmus_estado


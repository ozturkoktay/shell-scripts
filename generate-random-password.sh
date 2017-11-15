#!/bin/bash

# Base64 Şifreleme sistemini kullanarak şifre üretir.
#   Örnek:
#     generate-random-password 3 8
#	Sonuçta 8 karakterli 3 şifre üretir.

SIFRE_SAYISI=$1
[ -n "$SIFRE_SAYISI" ] || SIFRE_SAYISI=1

SIFRE_UZUNLUK=$2
[ -n "$SIFRE_UZUNLUK" ] || SIFRE_UZUNLUK=64

for x in $(seq 1 $SIFRE_SAYISI)
do
  openssl rand -base64 48 | cut -c1-${SIFRE_UZUNLUK}
done

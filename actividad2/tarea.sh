#!/bin/bash

GITHUB_USER="dennikyo"

dia=$(date +%Y%m%d)

mkdir -p "/tmp/${dia}"

RESPONSE=$(curl -s "https://api.github.com/users/${GITHUB_USER}")

ID=$(echo ${RESPONSE} | jq '.id')
CREATED_AT=$(echo ${RESPONSE} | jq '.created_at')

MESSAGE="Hola ${GITHUB_USER}. User ID: ${ID}. Cuenta fue creada el: ${CREATED_AT}."

echo "${MESSAGE}"

echo "${MESSAGE}" >> "/tmp/${dia}/saludos.log"
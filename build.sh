#!/bin/bash

version=$(jq -r '.version' info.json)
name=$(jq -r '.name' info.json)
outDir=./out
inDir=.

# Copy .env file if it doesn't exist
if [[ ! -f "./.env" ]]; then
  cp "./.env.example" "./.env"
fi

# Source .env file
source "./.env"

# Build mod
printf "Building v%s...\n" "$version"
buildName="${name}_${version}"
buildDestination="$outDir/${buildName}"
rm -rf "${buildDestination:?}"
rm -rf "${buildDestination}.zip"
rsync -av --exclude-from=.buildignore "${inDir}" "${buildDestination}"
zip -r "${buildDestination}.zip" "${buildDestination}"

printf "Build done.\n"

# Install mod
if [[ "$INSTALL_TO_MOD_DIR" == "true" ]]; then
  if [[ -n "$FACTORIO_MOD_DIR" ]] && [[ -d "$FACTORIO_MOD_DIR" ]]; then
    printf "Installing to Factorio mod directory...\n"
    rm -rf "${FACTORIO_MOD_DIR:?}/${buildName}"
    rm -rf "${FACTORIO_MOD_DIR:?}/${buildName}.zip"
    cp "${buildDestination}.zip" "${FACTORIO_MOD_DIR}/."
    printf "Installed.\n"
  fi
fi
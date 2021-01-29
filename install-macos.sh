#!/bin/bash

## Verifica se homebrew está instalado
if ! command -v brew &> /dev/null; then
echo "Por favor instale o homebrew antes de executar"
echo "Acesse: https://brew.sh/index_pt-br"
fi

brew install git

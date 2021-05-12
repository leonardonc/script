#!/bin/bash

#substituir num de cpf por **CENSURADO**


read -p "Digite o nome do arquivo: " arq

sed -E 's/([0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2})/**CENSURADO**/g' < $arq

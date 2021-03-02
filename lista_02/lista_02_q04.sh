#!/bin/bash

a=$(date +%Y-%m-%d)

mkdir /tmp/${a}

cp -r . /tmp/${a}

cd /tmp/${a}

zip pasta_compactada.zip ${a} *

cp -r pasta_compactada.zip /home/leonardo/script

cd ..

rm -fr ${a}

echo "feito"

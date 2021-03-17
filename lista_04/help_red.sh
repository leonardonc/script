#!/bin/bash


echo ">   - redireciona a saída padrão para um arquivo"
echo "      exemplo: ls > a.txt"
echo ">>  - redireciona a saída padrão para o final de um arquivo"
echo "      exemplo: ls >> a.txt"
echo "2>  - redireciona a saída padrão de erro para um arquivo "
echo "      exemplo: ls b.txt 2> erro.log"
echo "2>> - redireciona a saída padrão de erro para o final de um arquivo"
echo "      exemplo: ls b.txt 2>> erro.log"
echo "$>  - redireciona tanto a saída padrão quanto a saída padrão de erro para um arquivo"
echo "      exemplo: ls c.txt $> log.log"
echo "$>> - redireciona tanto a saída padrão quanto a saída padrão de erro para o final de um arquivo"
echo "      exemplo: ls c.txt $>> log.log"
echo "<   - redireciona um arquivo para a entrada padrão de um comando"
echo "      exemplo: cat < a.txt"
echo "<<  - utiliza uma string para encerrar a execulção do comando"
echo "      exemplo: rm -fr /home/leonardo/testes/* << pode"
echo "<<< - utiliza uma string como entrada padrão de um comando"
echo "      exemplo: bc <<< "2+2""
echo "|   - redireciona a saída padrão de um comando para a entrada padrão de outro"
echo "      exemplo: cat /etc/passwd | wc -l "











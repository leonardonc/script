#!/bin/bash


echo ">   - redireciona a saída padrão para um arquivo"
echo -e "      exemplo: ls > a.txt\n"
echo ">>  - redireciona a saída padrão para o final de um arquivo"
echo -e "      exemplo: ls >> a.txt\n"
echo "2>  - redireciona a saída padrão de erro para um arquivo "
echo -e "      exemplo: ls b.txt 2> erro.log\n"
echo "2>> - redireciona a saída padrão de erro para o final de um arquivo"
echo -e "      exemplo: ls b.txt 2>> erro.log\n"
echo "$>  - redireciona tanto a saída padrão quanto a saída padrão de erro para um arquivo"
echo -e "      exemplo: ls c.txt $> log.log\n"
echo "$>> - redireciona tanto a saída padrão quanto a saída padrão de erro para o final de um arquivo"
echo -e "      exemplo: ls c.txt $>> log.log\n"
echo "<   - redireciona um arquivo para a entrada padrão de um comando"
echo -e "      exemplo: cat < a.txt\n"
echo "<<  - utiliza uma string para encerrar a execulção do comando"
echo -e "      exemplo: rm -fr /home/leonardo/testes/* << pode\n"
echo "<<< - utiliza uma string como entrada padrão de um comando"
echo -e "      exemplo: bc <<< "2+2"\n"
echo "|   - redireciona a saída padrão de um comando para a entrada padrão de outro"
echo "      exemplo: cat /etc/passwd | wc -l "











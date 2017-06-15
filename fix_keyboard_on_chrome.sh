#!/bin/bash
#cria um .sh na pasta /etc/profile.d concertando o erro do teclado no Chrome excute como root
sudo echo #!/bin/bash > /etc/profile.d/gtk+.sh
sudo echo export GTK_IM_MODULE=xim >> /etc/profile.d/gtk+.sh
sudo chmod u+x /etc/profile.d/gtk+.sh
echo A MAQUINA SERA REINICIADA EM 1 MINUTO
shutdown -r -t 1
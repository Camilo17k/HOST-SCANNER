#!bin/bash
#Created: 10/12/2018
#by: Camilo Orregi
#Instalacion exitosa
while :
do
#menu
clear
echo -e "\e[1;32m"
echo "+==========================================+"
echo "+        SCANNER  DE HOST'S & HTTP'S       +"
echo "+   --   --       Code: Camilo Orrego      +"
echo "+    (---)                    Version:1.0.1+"
echo "+==========================================+"
echo ""
echo -e "\e[1;33m1)BUSCADOR DE HOST"
echo -e "\e[1;33m2)SCANNER DE PUERTOS"
echo -e "\e[1;33m3)HTTP METODOS"
echo -e "\e[1;33m4)VALIDADOR DE HOST"
echo -e "\e[1;33m5)INFO DEL CREADOR"
echo -e "\e[1;33m6)SALIR DEL SCRIPT"
echo ""
echo -e "\e[1;31m"
echo -n "ESCOJE TU OPCION: "
read OPCION
#listo menu
echo -e "\e[0m"
case $OPCION in
1)echo ""
echo -n "WEB: ";
read WEB;
setterm -foreground yellow
nmap --script dns-brute $WEB
echo ""
echo -e "\e[0m"
echo -e "\e[1;31mPRESIONA ENTER PARA CONTINUAR.\e[0m";
read foo
;;
2)echo ""
echo -n "DOMINIO: ";
read DOMINIO;
setterm -foreground blue
nmap -p 80,8080,3128,443,22,23,53 $DOMINIO
echo ""
echo -e "\e[0m"
echo -e "\e[1;31mPRESIONA ENTER PARA CONTINUAR.\e[0m";
read foo
;;
3)echo ""
echo -n "SUBDOMINIO: ";
read SUBDOMINIO
setterm -foreground green
nmap -v -A scanme $SUBDOMINIO
echo ""
echo -e "\e[0m"
echo -e "\e[1;31mPRESIONA ENTER PARA CONTINUAR.\e[0m";
read foo
;;
4)echo ""
echo -n "HOST: ";
read HOST
setterm -foreground red
curl -v $HOST
echo ""
echo -e "\e[0m"
echo -e "\e[1;31mPRESIONA ENTER PARA CONTINUAR.\e[0m";
read foo
;;
5)echo ""
setterm -foreground cyan
echo -n "HOLA PAPU TE HABLA EL CREADOR , SI USAS ESTA ESTA HERRAMIENTA AGRADECE XDXD. ";
read XDXD
echo ""
echo -e "\e[0m"
echo -e "\e[1;31mPRESIONA ENTER PARA CONTINUAR.\e[0m";
read foo
;;
6)clear
exit 0;;
#error
*)clear
echo "COMANDO INVALIDO..!";
;;
esac
done

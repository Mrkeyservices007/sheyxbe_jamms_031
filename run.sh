#!/bin/bash

# Terminal kengligini olish
cols=$(tput cols)

# Matn
text="MRKEYSERVICES007"

# Figlet mavjudligini tekshirish va o'rnatish
if ! command -v figlet &> /dev/null
then
    echo "Figlet o'rnatilmagan, o'rnatilmoqda..."
    sudo apt update
    sudo apt install -y figlet
fi

# ASCII matnni chiqarish (to‘liq harflar bilan)
figlet -w $cols "$text"

# Virtual environment yaratish va faollashtirish
python3 -m venv Sheyxbe_killer_031
source Sheyxbe_killer_031/bin/activate

# Progress animatsiyasi boshlanishi
echo "Virtual environment faollashdi. 15 soniya kutilyapti..."
prompt="┌(Sheyxbe_killer_031)──(lspro㉿kali)-[~/Рабочий стол/pushgit/sheyxbe_jamms_031]\n└─$ "

# 15 soniya progress animatsiyasi (1 soniya = 1 qadam)
for i in $(seq 1 15); do
    echo -ne "\r["
    for j in $(seq 1 $i); do
        echo -ne "#"
    done
    for j in $(seq $i 14); do
        echo -ne "-"
    done
    echo -ne "] $i/15 s"
    sleep 1
done

echo -e "\n$prompt"

# GUI-blast skriptini ishga tushirish
cd jammer
sudo ./GUI-blast.sh

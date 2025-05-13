#!/bin/bash
clear
echo -e "[poopyshe] Stating commands"
echo -e "loading."
sleep 0.75
clear
echo -e "[poopyshe] Stating commands"
echo -e "loading.."
sleep 0.75
clear
echo -e "[poopyshe] Stating commands"
echo -e "loading..."
sleep 0.75
clear
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa  && cat ~/.ssh/id_rsa.pub

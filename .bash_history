sudo apt update
sudo apt install tree
id
ls -l
mkdir repogit
ls
cd repogit/
pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
source ~/.bashrc
ls -l
tree
ls -l
ssh-keygen
pwd
cd /home/juarezpablo
ls -la
cd .ssh/
ls -la
cat id_rsa.pub
git --version
cd /home/juarezpablo/repogit
git clone git@github.com:juarezpablo/UTNFRA_SO_2do_Parcial_JuarezPablo.git
ls -l
cd UTNFRA_SO_2do_Parcial_JuarezPablo/
ls -l
mkdir RTA_Examen_T20241119
ls -l
mkdir RTA_Examen_T_20241119
ls -l
rm -rf RTA_Examen_T20241119
ls -l
exit
visudo
sudo visudo
sudo su
su vagrant
exit
pwd
cd /home
;s
ls
cd/juarezpablo
cd juarezpablo/
ls
tree
apt update
sudo apt install tree
pwd
su vagrant
vagrant halt
exit
juarezpablo/
ls -l
sudo apt update
sudo apt install ansible -y
sudo slblk
sudo lsblk
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo lsblk
sudo fdisk /dev/sdd
p
sudo lsblk
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo lsblk
free
free -h
sudo mkswap /dev/sdd1
sudo swapon /dev/sdd1
free -h
sudo wipefs -a /dev/sdc1 /dev/sdc2
sudo pvcreate /dev/sdc1 /dev/sdc2
sudo pvs
sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo vgs
sudo pvs
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo pvs
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvs
sudo vgs
sudo lsblk
sudo fdisk /dev/sdc
sudo lsblk
sudo fdisk /dev/sdc
sudo wipefs -a /dev/sdc3
sudo vgextend vg_datos /dev/sdc3
sudo vgs
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo vgs
sudo lvs
sudo vgcreate vg_temp /dev/sdd1
sudo fdisk /dev/sdd
sudo lsblk
sudo vgcreate vg_temp /dev/sdd1
sudo fdisk /dev/sdd
sudo lsblk
sudo fdisk /dev/sdd
sudo lsblk
sudo wipefs -a /dev/sdd1
sudo fdisk /dev/sdd
sudo vgcreate vg_temp /dev/sdd1
sudo swapoff /dev/sdd1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lsblk
sudo vgs
sudo lvs
free
sudo lsblk
sudo mkswap /dev/vg_temp/lv_swap
sudo lsblk
sudo fdisk /dev/sdd1
sudo swapoff /dev/sdd1
sudo fdisk /dev/sdd
sudo lsblk
free
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
free
sudo lsblk
sudo fdisk -l
swapon -s
sudo mkswap /dev/mapper/vg_temp-lv_swap
free
sudo lsblk -l
sudo lsblk -f
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkdir -p /work/
ls -l
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo apt update
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo usermod -a -G docker juarezpablo
docker ps
sudo systemctl status docker
grep docker /etc/group
docker ps
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo lsblk -f
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo lsblk -f
sudo systemctl restar docker
sudo systemctl restart docker
sudo systemctl status docker
docker ps
sudo systemctl status docker
sudo lsblk -f
pwd
cd repogit/UTNFRA_SO_2do_Parcial_JuarezPablo/
ls
cd RTA_Examen_T_20241119/
vim Punto_A.sh
cat Punto_A.sh 
cd ..
git status
git add .
git status
git commit -m "Add: puntoA.sh"
git push
cd /usr/local
cd bin/
ls -l
vim JuarezAltaUser-Groups.sh
ls -l
vim JuarezAltaUser-Groups.sh
ls -l
sudo vim JuarezAltaUser-Groups.sh
ls -l
sudo bash JuarezAltaUser-Groups.sh 
cat /home/juarezpablo/repogit/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo vim JuarezAltaUser-Groups.sh
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh
sudo bash JuarezAltaUser-Groups.sh 
cd /home/juarezpablo/repogit/UTNFRA_SO_2do_Parcial_JuarezPablo/
git status
cat /usr/local/bin/JuarezAltaUser-Groups.sh 
cd RTA_Examen_T_20241119/
ls
sudo vim Punto_B.sh
cd ..
git status
git add .
git status
git commit -m "Add:Punto_B.sh"
git push
mkdir -p 202406
ls
cd 202406/
mkdir -p docker
tree
cd ..
cd UTN-FRA_SO_Examenes/
ls
cp -r /home/juarezpablo/repogit/UTN-FRA_SO_Examenes/202406/ /home/juarezpablo/repogit/UTNFRA_SO_2do_Parcial_JuarezPablo/202406
cd ..
cd UTNFRA_SO_2do_Parcial_JuarezPablo/
tree
sudo rm -rf 202406/
tree
cp -r /home/juarezpablo/repogit/UTN-FRA_SO_Examenes/202406/ /home/juarezpablo/repogit/UTNFRA_SO_2do_Parcial_JuarezPablo/
tree
cd 202406/
cd docker/
ls
sudo vim index.html
docker login -u juarezpablo
dckr_pat_EFMRhGiJpgAIN1wy3jjwb_XTj_w
docker login -u juarezpablo
docker build -t juarezpablo/web1-juarezpablo:latest .
docker image list
docker build -t juarezpablo/web1-juarezpablo:latest .
sudo vim dockerfile
docker build -t juarezpablo/web1-juarezpablo:latest .
docker image list
mkdir -p htmml
tree
cat index.html 
cd htmml/
sudo vim index.html
ls
sudo vim index.html
cd ..
sudo vim dockerfile
ls
docker build -t juarezpablo/web1-juarezpablo:latest .
du -sh /var/lib/docker.
du -sh /var/lib/docker
sudo du -sh /var/lib/docker
sudo lsblk -f
sudo docker volume ls
sudp docker system prune --all --force --volumes
sudp docker system prune --all --force --volume
sudo docker system prune --all --force --volume
sudo docker system prune --all --force --volumes
docker build -t juarezpablo/web1-juarezpablo:latest .
sudo fdisk -l
sudo fdisk sdc
sudo fdisk sdc1
sudo lsblk -l
sudo fdisk -l
sudo vls
sudo lvs
sudo fdisk /dev/sdc
sudo lvextend -L+200M /dev/mapper/vg_datos-lv_docker
sudo lsblk -l
docker build -t juarezpablo/web1-juarezpablo:latest .
sudo unmount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo umount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo lvextend -L+100M /dev/mapper/vg_datos-lv_docker
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
docker build -t juarezpablo/web1-juarezpablo:latest .
df -h
sudo lsblk -l
sudo fdisk -l
sudo lvextend -L+200M /dev/mapper/vg_datos-lv_docker
sudo lvextend -L+150M /dev/mapper/vg_datos-lv_docker
sudo fdisk -l
docker build -t juarezpablo/web1-juarezpablo:latest .
df -h
sudo pvcreate /dev/sdc3
resize2fs /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h
docker build -t juarezpablo/web1-juarezpablo:latest .
docker image list
docker push juarezpablo/web1-juarezpablo
cat dockerfile 
docker run -d -p 80:80 juarezpablo/web1-juarezpablo
docker ps
curl localhost :80
docker ps
docker run -d -p 8080:80 juarezpablo/web1-juarezpablo
docker ps
sudo vim run.sh
cd ..
cd RTA_Examen_T_20241119/
ls
cd ..
git status
git add .
git commit -m "Add:punto c"
git push
cd 202406/
cd ..
cd RTA_Examen_T_20241119/
sudo vim Punto_C.sh
cd ..
git status
git add .
git status
git commit -m "Add puntoC"
git push
cd 202406/docker/
./run.sh
sudo ./run.sh
sudo bash run.sh
sudo vim run.sh
sudo bash run.sh
sudo publish 80:80
curl localhost:8080
sudo vim run.sh
sudo bash run.sh
cd ..
git status
git add .
git commit -m "add:puntoC"
git push
sudo apt update
sudo apt install ansible -y
sudo apt list --installed|grep ansible
cd 202406/
ls
cd ansible/
ls
ansible-playbook -i inventory playbook.yml
ls -l
cd roles/
ls
ls -l
2do_parcial/
ls
cd 2do_parcial/
;s
ls
cd tasks/
ls
sudo vim main.yml
ansible-playbook -i inventory playbook.yml
cd ..
ls
sudo ansible-playbook -i inventory playbook.yml
cd /temp
ls -l
cd roles/
cd tasks/
ls -l
cd 2do_parcial/
cd tasks/
ls
cat main.yml 
sudo vim main.yml
cd ..
ls
sudo ansible-playbook -i inventory playbook.yml
ls
cd roles/
ls
cd 2do_parcial/
ls
cd tas
cd tasks/
ls
sudo vim main.yml 
cd ..
ls
sudo ansible-playbook -i inventory playbook.yml
cd /usr/local/bin/
ls
sudo bash JuarezAltaUser-Groups.sh 
cd /usr/local/bin/
sudo vim JuarezAltaUser-Groups.sh 
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh 
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh 
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh 
sudo bash JuarezAltaUser-Groups.sh 
id
sudo vim JuarezAltaUser-Groups.sh 
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh 
sudo bash JuarezAltaUser-Groups.sh 
sudo vim JuarezAltaUser-Groups.sh 
sudo bash JuarezAltaUser-Groups.sh 
cat /etc/passwd
cd /home
ls -l
cd /work/
ls -l
cd /usr/local/bin/
ls -l
cd /home/juarezpablo/repogit/UTNFRA_SO_2do_Parcial_JuarezPablo/
cd RTA_Examen_T_20241119/
ls
sudo vim Punto_B.sh 
sudo vim Punto_c.sh 
ls
sudo vim Punto_C.sh 
cd ..
cd 202406/
cd docker/
ls
sudo vim dockerfile 
docker ps
cd ..
ls
sudo history -a
sudo bash history -a

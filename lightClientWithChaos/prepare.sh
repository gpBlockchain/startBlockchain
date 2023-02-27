echo "prepare docker"
docker-compose build
echo " wget chaso blade"
tar -zxvf chaosblade-1.7.0-linux-amd64.tar.gz
chmod 777 chaosblade-1.7.0/blade
mv chaosblade-1.7.0/blade /usr/local/bin/
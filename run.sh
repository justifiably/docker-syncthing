docker rm -f syncthing

docker run -d --restart=always \
  -v /srv/syncthing-sync:/srv/data \
  -v /srv/syncthing-config:/srv/config \
  -p 22000:22000  -p 21027:21027/udp \
  --name syncthing \
  justifiably/syncthing

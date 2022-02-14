```
yay -S python-rocker
yay -S nvidia-docker
docker build . -t cocosim
rocker --nvidia --x11 --user --home cocosim
```

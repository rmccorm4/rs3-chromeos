docker build -t rs3 .
docker run -it --net=host --env="DISPLAY" -v "$HOME/.Xauthority:/root/.Xauthority:rw" -v /dev:/dev -v `pwd`:/workspace rs3

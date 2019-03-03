# rs3-chromeos

## Setup

### 1. Setup Linux terminal on ChromeOS

See the official instructions here: 
<https://support.google.com/chromebook/answer/9145439?hl=en>

### 2. Install Docker in your Linux terminal for ChromeOS

See these instructions tailored for ChromeOS here:
<https://hackernoon.com/pixelbook-revisited-running-docker-containers-aa7c742a7dec>

If this doesn't work, you can always try the official Docker install
steps for Linux (Debian) here: 
<https://docs.docker.com/install/linux/docker-ce/debian/>

### 3. Build the `rs3` Docker Container

```
docker build -t rs3 .
```

### 4. Run the `rs3` Docker Container

Command:
```
docker run -it --net=host --env="DISPLAY" \
-v "$HOME/.Xauthority:/root/.Xauthority:rw" \
-v /dev:/dev \
-v `pwd`:/workspace \
rs3
```

Explanations:
```
-v "$HOME/.Xauthority:/root/.Xauthority:rw" # Share X11 config to get the GUI in the container
-v /dev:/dev # Share devices for keyboard input to work in GUI
-v `pwd`:/workspace # Share local files containing commands
rs3 # Name of the container
```

### 5. Install rs3 client inside the container
Install rs3-client
```
cat commands.txt | sudo bash
```

Run rs3-client
```
runescape-launcher
```

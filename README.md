# baidunetdisk-x11docker

[BaiduNetDisk](https://pan.baidu.com/) Linux client inside container, used with [x11docker](https://github.com/mviereck/x11docker).

## How to use

### 1. Start directly

Container will be removed including downloaded files when stopped.

```bash
x11docker -- baidunetdisk
```

### 2. Redirect home directory to host

```bash
x11docker --home="$HOME/Downloads/baidunetdisk/" -- erinacio/baidunetdisk
```

### 3. Force using root container with podman

```bash
x11docker --home="$HOME/Downloads/baidunetdisk/" --pw=sudo -- erinacio/baidunetdisk
```


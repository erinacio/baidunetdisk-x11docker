# baidunetdisk-x11docker

[BaiduNetDisk](https://pan.baidu.com/) Linux client inside container, used with [x11docker](https://github.com/mviereck/x11docker).

## How to use

Podman as example:

```bash
x11docker --home=/path/to/home --backend=podman --network=bridge -- erinacio/baidunetdisk
```

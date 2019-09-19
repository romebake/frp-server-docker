# Frp Server Docker

## Example Usage

1.Create **frps.ini** file in the **/home/frps** directory

```ini
[common]
bind_addr = 0.0.0.0
bind_port = 7788
```

2.Create docker container

```bash
docker run -d --name frps -v /home/frps/frps.ini:/frp/frps.ini -p 7788:7788 --restart=always romebake/frp-server:latest
```

---

## Others

[frp-client-docker](https://github.com/romebake/frp-client-docker)
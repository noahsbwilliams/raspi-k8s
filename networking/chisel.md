# Using Chisel

## Client

*CLIENT* forwards L4 traffic by hostname

TCP example:

```bash
chisel client \
dev.rothanaheavyengineering.com:80:localservice_hostname:80 \
```

UDP example:

```bash
chisel client \
dev.rothanaheavyengineering.com:80:localservice_hostname:80/udp \
```

---

## Server

In Docker compose, use:

```yaml
network_mode: 'host'
```

to allow unrestricted network access

## Authentication

### Client

```bash
chisel client \
dev.rothanaheavyengineering.com:80:localservice_hostname:80 \
--auth "noah:noah's-password"
```

### Server

```bash
chisel server --authfile
```

`users.json` file:

```json
{
  "code-server:codeserver-password": ["dev.rothanaheavyegineering.com:code-server"]
}
```

---

Additional:

`--keepalive` might fix broken websockets connections like with code-server; unclear.
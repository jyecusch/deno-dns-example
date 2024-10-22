# Example of DNS resolution error with Deno, when using docker extra hosts

Run with docker compose:

```bash
docker compose up --build --force-recreate
```

Note that `example.local` is defined in the `extra_hosts` section of the `compose.yaml` file.

## Example of current output

```
NotFound: no record found for Query { name: Name("example.local."), query_type: A, query_class: IN }
    at async Object.resolveDns (ext:deno_net/01_net.js:77:12)
    at async file:///app/main.ts:2:18 {
  name: "NotFound"
}
```

## Expected output

```
[ "127.0.0.1" ]
```
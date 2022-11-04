# Debug Image

## Example

```docker
...
EXPOSE 2345
CMD ["--listen=:2345", "--headless=true", "--log=true", "--log-output=debugger,debuglineerr,gdbwire,lldbout,rpc","--accept-multiclient", "--api-version=2", "exec", "./path-to-golang-app"]
```

## VSCode

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Attach",
            "type": "go",
            "request": "attach",
            "mode": "remote",
            "remotePath": "",
            "port": 2345,
            "host": "127.0.0.1",
            "showLog": true,
            "trace": "log",
            "logOutput": "rpc"
        }
    ]
}
```
# Debug Image

EXAMPLE

```docker
...
EXPOSE 2345
CMD ["--listen=:2345", "--headless=true", "--log=true", "--log-output=debugger,debuglineerr,gdbwire,lldbout,rpc","--accept-multiclient", "--api-version=2", "exec", "./path-to-golang-app"]
```
## Nginx Dockerfile
For license and more general information, see [the original](https://github.com/dockerfile/nginx).

#### Usage
Build image
  docker build -t . .

Instantiate container
  docker run -d -p 80:80 <imageID>

Instantiate container and send logs to <logDir> on host
  docker run -d -p 80:80 -v <logDir>:/var/log/nginx <imageID>

After a few seconds, open `http://<host>` to see the welcome page.

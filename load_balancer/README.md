# Load Balancer

This directory contains the scripts for the load balancer project.

## Tasks

- `0-custom_http_response_header`: configures Nginx on a new Ubuntu machine
  and adds a custom `X-Served-By` HTTP response header containing the
  server's hostname. Used on web-01 and web-02 so you can tell which server
  answered a request.

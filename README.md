# trebek
A dockerfile for [C14H14N2O4/jeopardy](https://github.com/C14H14N2O4/jeopardy/).

## Usage

Clone the repo with:

`git clone https://github.com/jackmcasey/trebek`

You can run the dockerfile as you see fit, but the easiest way is likely:

`docker-compose up`

To switch to jeopardy_server for development, edit line 7 of the dockerfile:

`WORKDIR /jeopardy/jeopardy_client`

becomes:

`WORKDIR /jeopardy/jeopardy_server`

Then rebuild the docker image:

```
cd trebek
docker build . -t jeopardy
```

Update the port in docker-compose.yml:

```
---
version: "2.1"
services:
  jeopardy:
    image: jeopardy
    container_name: jeopardy
    ports:
      - 80:5000
    restart: unless-stopped
```


Finally, create and start the container:

`docker-compose up`

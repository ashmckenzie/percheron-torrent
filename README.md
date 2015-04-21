# Percheron Torrent Stack

This repo contains a complete Torrent stack for use with [Percheron](https://github.com/ashmckenzie/percheron).

It's purpose is to experiment with various trackers, torrent creation tools and download clients.

## Containers included

* base (just an image, used by all containers)
* tracker using chihaya
* seeder using aria2
* peers (3) user aria2

## Dependancies

* [Percheron](https://github.com/ashmckenzie/percheron)
* [Boot2Docker v1.6.x+](https://docs.docker.com/installation)
* [Docker client](https://docs.docker.com/installation) (nice to have)

## Quickstart

Start boot2docker

````shell
boot2docker up && eval $(boot2docker shellinit) && export BOOT2DOCKER_IP=$(boot2docker ip)
```

Clone the percheron-torrent repo

```shell
git clone https://github.com/ashmckenzie/percheron-torrent
```

Run Percheron!

```shell
cd percheron-torrent && bundle install && bundle exec percheron start torrent
```

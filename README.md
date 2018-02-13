# SpacePack
SpacePack is in order to quickly deploy PHP environment, it contains the OpenResty, PHP, MariaDB, Memcached, Redis and phpMyAdmin.

## How to use

### System Inventory

+ CentOS 7
+ Docker 1.12
+ Docker Compose

### Install Docker

Use the [Docker official method](https://docs.docker.com/engine/installation/linux/centos/) installation

```bash
$ sudo yum install -y yum-utils

$ sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

$ sudo yum makecache fast

$ sudo yum -y install docker-ce

$ sudo groupadd docker

$ sudo usermod -aG docker $USER

$ sudo systemctl enable docker

$ sudo systemctl start docker
```

### Install Docker Compose

Use the [Docker Compose Gtihub](https://github.com/docker/compose/releases) installation

```bash
$ curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

$ chmod +x /usr/local/bin/docker-compose
```

### Install SpacePack
1. Clone project:
    ```bash
    $ git clone https://github.com/Vtrois/SpacePack.git
    ```
2. Start docker containers:
    ```bash
    $ docker-compose up -d
    ```
3. Go to your browser and type `localhost`, you will see:

![Demo Image](https://s1.ax1x.com/2018/02/14/9Ym2pF.png)

### Container list

+ spacepack-mariadb
+ spacepack-memcached
+ spacepack-openresty
+ spacepack-php
+ spacepack-phpmyadmin
+ spacepack-redis

### Container operation

+ Stop a running containers

```bash
docker stop [CONTAINER NAME]
```

+ Restart a containers

```bash
docker restart [CONTAINER NAME]
```

> Notice: [CONTAINER NAME] is in the Container list

## Structure

Within the download you'll find the following directories and files. You'll see something like this :point_down:

```
SpacePack
├── docker-compose-dev.yml
├── docker-compose.yml
├── services
│   ├── mariadb
│   ├── openresty
│   │   ├── conf.d
│   │   │   └── default.conf
│   │   ├── logs
│   │   └── nginx.conf
│   ├── php
│   │   ├── Dockerfile
│   │   └── config
│   │       ├── opcache-recommended.ini
│   │       ├── php.ini
│   │       └── sources.list.stretch
│   └── redis
│       └── data
└── wwwroot
    └── default
        ├── index.html
        ├── ocp.php
        ├── phpinfo.php
        └── tz.php
```

## License

- The SpacePack scripts files are licensed under the Apache License 2.0:
  - http://www.apache.org/licenses/LICENSE-2.0.html

- The SpacePack documentation is licensed under the CC BY 4.0 License:
  - https://creativecommons.org/licenses/by/4.0

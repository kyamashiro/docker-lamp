# docker-lamp

Apache + MySQL + PHP7.4 + Composer + MailCatcher

```
make build
make start
make stop
make remove
make bash
make mysql/bash
```


## SSL

### install mkcert  
https://github.com/FiloSottile/mkcert

```sh
$ mkcert --install
$ mkcert localhost
```

add localhost.pem and localhost-key.pem file to php-apache/apache2/ssl

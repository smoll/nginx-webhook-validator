#### use automated build
```
docker run -p 80:80 smoll/nginx-webhook-validator:latest
```

#### build
```
docker build -t mynginxtest .
```

#### run
```
docker run -p 80:80 mynginxtest
```

# publish-images-to-dockerhub-with-github-actions [![CI](https://github.com/daggerok/publish-images-to-dockerhub-with-github-actions/actions/workflows/ci.yaml/badge.svg?branch=v1.0.0)](https://github.com/daggerok/publish-images-to-dockerhub-with-github-actions/actions/workflows/ci.yaml)
This repository demonstrates how to push your images to Docker Hub using GitHub Actions

## use

```bash
docker run -d -p 80:80 --rm --name my-app daggerok/publish-images-to-dockerhub-with-github-actions

curl -isS 0.80
```

## dev

```bash
docker run -d -p 80:80 --rm --name my-app \
            --health-cmd="curl --silent --fail 127.00.1:80 || exit 1" \
            --health-start-period=1s \
            --health-retries=1111 \
            --health-interval=1s \
            --health-timeout=5s \
            nginx:1.20.1-alpine

curl -v 0:80

docker commit --author "Maksim Kostormin" -m 'Create my-app based on nginx docker image.' my-app daggerok/my-app

docker stop my-app

docker run --rm -it -p 80:80 --name run-my-app daggerok/my-app
```

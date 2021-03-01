## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-python/blob/master/Dockerfile">latest (3.9.2)</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-python/issues">https://github.com/ngacareer/alpine-python/issues</a>

## What is alpine-python ? 

Linux lightweight, Python environment.

## How to use this image
- On Docker 
```
docker run -itd --name alpine-python ngacareer/alpine-python
docker exec -it alpine-python sh
# python3.9 -V
 ```
- On Kubernetes
 ```
kubectl run alpine-python --image=ngacareer/alpine-python
kubectl exec -it alpine-python sh
# python3.9 -V
 ```
- On OpenShift
 ```
oc run alpine-python --image=ngacareer/alpine-python
oc exec alpine-python  -i -t sh
# python3.9 -V
 ```
## License

Copyright © 2021 Ngacareer

All contents licensed under the [MIT License](LICENSE)

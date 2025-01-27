## README

#### 단일 플랫폼으로 빌드 (로컬로 로드)
```
git clone https://github.com/anti1346/samplefile.git
```
#### 단일 플랫폼으로 빌드 (로컬로 로드)
```
docker buildx create --name mybuilder --use
```
#### 다중 플랫폼으로 빌드 후 Docker Hub에 푸시
```
docker buildx build \
--platform linux/amd64,linux/arm64 \
-t anti1346/samplefile:latest \
-t anti1346/samplefile:1.0 \
--push .
```

<summary>단일 플랫폼으로 빌드 (로컬로 로드)</summary>

##### docker buildx build & push
```
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --tag anti1346/ubuntu-init:24.04 \
  --build-arg SSH_ROOT_PASSWORD=root \
  --no-cache --push .  
```
```
docker inspect anti1346/samplefile:latest --format='{{.Architecture}}'
```
```
docker push anti1346/samplefile:latest
```



</details>
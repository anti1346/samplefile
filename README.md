## README

#### GitHub 저장소 클론(복제)
```
git clone https://github.com/anti1346/samplefile.git
```
#### Docker Buildx 빌더 생성 및 활성화
```
docker buildx create --name mybuilder --use
```
#### Docker Buildx 빌더 목록 확인
```
docker buildx ls
```
#### 다중 플랫폼으로 빌드 후 Docker Hub에 푸시
```
docker buildx build \
--platform linux/amd64,linux/arm64 \
-t anti1346/samplefile:latest \
-t anti1346/samplefile:1.0 \
--push .
```
#### 컨테이너 실행
```
docker run anti1346/samplefile:latest
```

<details>
<summary>단일 플랫폼으로 빌드(로컬로 로드)</summary>

##### docker buildx build & push
```
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --tag anti1346/ubuntu-init:24.04 \
  --build-arg SSH_ROOT_PASSWORD=root \
  --no-cache --push .  
```
##### Docker 이미지의 아키텍처 확인
```
docker inspect anti1346/samplefile:latest --format='{{.Architecture}}'
```
##### 이미지를 Docker 레지스트리에 푸시
```
docker push anti1346/samplefile:latest
```
</details>
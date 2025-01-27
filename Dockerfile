# 베이스 이미지 설정 (플랫폼에 따라 자동으로 최적화된 이미지를 가져옴)
FROM python:3.13-slim

# 메타데이터 추가 (이미지 설명)
LABEL maintainer="admin@scbyun.com" \
      description="A simple multi-platform Docker image example" \
      version="1.0"

# 컨테이너 내 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 파일 복사
COPY hello.py /app/hello.py

# Python 패키지 설치 (필요한 경우)
RUN apt update && \
    apt install -y --no-install-recommends curl && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# 스크립트 실행 명령어 설정
CMD ["python", "/app/hello.py"]

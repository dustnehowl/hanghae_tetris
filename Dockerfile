# 사용할 베이스 이미지를 선택합니다. Python 3을 사용합니다.
FROM python:3

# 작업 디렉토리를 설정합니다. Flask 애플리케이션 코드를 여기에 추가합니다.
WORKDIR /app

# 호스트 머신의 현재 디렉토리에 있는 Flask 애플리케이션 코드를 컨테이너 내의 /app 디렉토리로 복사합니다.
COPY . /app

# Flask 애플리케이션을 실행합니다.
CMD ["flask", "--app", "app", "run", "--host", "0.0.0.0", "--port", "8000"]

FROM apache/beam_python3.10_sdk:2.53.0

WORKDIR /app
COPY beam /app

ENTRYPOINT ["python", "main.py"]

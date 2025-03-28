# Use uma imagem base do Python
FROM python:3.11-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo requirements.txt primeiro (se necessário)
COPY requirements.txt /app/

# Instale as dependências (caso haja outras além de unittest)
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante do código
COPY . /app

# Comando padrão para rodar os testes
CMD ["python", "-m", "unittest", "discover"]

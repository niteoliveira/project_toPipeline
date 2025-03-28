# Use uma imagem base do Python
FROM python:3.11-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos do projeto para o diretório de trabalho no contêiner
COPY . /app

# Instale as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Comando padrão para rodar os testes
CMD ["python", "-m", "unittest", "discover"]

#FROM imagem base/imagem de origem -- usando uma imagem que tem o node instalado
FROM node:16.15.1 
#definindo o diretório de trabalho (WORKDIR) / é como criar um diretório e entrar dentro dele
WORKDIR /app
#copiando os arquivos package json da aplicação para o diretório corrente (./)
COPY package*.json ./
#com os packege json pode-se executar o npm install
RUN npm install
#copiando todo o resto da solução para o diretório corrente
COPY . .
EXPOSE 8080
#determinando a inicialização da aplicação, executando o node server.js
CMD ["node", "server.js"] 
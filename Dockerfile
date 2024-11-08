# Usa a imagem oficial do Node.js como base
FROM node:16

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo package.json e o package-lock.json para instalar as dependências
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todos os arquivos do diretório local para o diretório de trabalho no contêiner
COPY . .

# Expõe a porta que a aplicação usará
EXPOSE 3000

# Define o comando padrão para iniciar a aplicação
CMD ["npm", "start"]


FROM node:24
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm && pnpm install
RUN pnpm self-update
COPY . .
CMD ["pnpm", "run", "dev"]

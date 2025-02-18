FROM node:14-buster-slim as base
WORKDIR /app

RUN apt update && \
    apt --yes --no-install-recommends install git wget python3 python3-pip python3-cryptography python3-six python3-yaml python3-click python3-markdown python3-requests python3-requests-oauthlib \
    sqlite3 iputils-ping util-linux dumb-init && \
    pip3 --no-cache-dir install apprise==0.9.7 && \
    npm install -g npm@latest && \
    rm -rf /var/lib/apt/lists/*

FROM base as git
WORKDIR /app
RUN git clone https://github.com/thedev132/uptime-kuma.git .

FROM git as node
WORKDIR /app
# prevent npm socket timeout err
RUN npm config set fetch-retry-mintimeout 20000
RUN npm config set fetch-retry-maxtimeout 180000
RUN npm ci --production

FROM node as vite
RUN npm install vite
RUN npm install vite-plugin-legacy

FROM vite as build
WORKDIR /app
RUN npx vite build --config ./config/vite.config.js && \
    chmod +x /app/extra/entrypoint.sh
EXPOSE 3001
VOLUME ["/app/data"]
HEALTHCHECK --interval=60s --timeout=30s --start-period=180s --retries=5 CMD node app/extra/healthcheck.js
ENTRYPOINT ["/usr/bin/dumb-init", "--", "/app/extra/entrypoint.sh"]
CMD ["node", "/app/server/server.js"]

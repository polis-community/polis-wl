
FROM --platform=linux/amd64 docker.io/node:18.12.1-alpine3.17 AS client-base

RUN apk add git --no-cache

# polis-client-participation
FROM client-base AS client-participation

WORKDIR /app/client-participation/

COPY client-participation/package*.json .

RUN npm install

COPY client-participation/. .
COPY client-participation/polis.config.js polis.config.js

RUN npm run build:prod

# polis-client-admin
FROM client-base AS client-admin

WORKDIR /app/client-admin/

# This is an optimisation so that the npm install can be cached as a Docker layer when
# updating the UI code
COPY client-admin/package*.json .

RUN npm install

COPY client-admin/. .
COPY client-admin/polis.config.js polis.config.js

COPY --from=client-participation /app/client-participation/  /app/client-participation

RUN npm run build:prod

# polis-client-report
FROM client-base AS client-report

WORKDIR /app/client-report/

COPY client-report/package*.json .

# This should be working with `npm ci`, but isn't; Need to debug
RUN npm install

COPY client-report/. .

RUN npm run build:prod



# actual file server component
FROM client-base

WORKDIR /app/file-server/

COPY file-server/package*.json ./

RUN npm install

COPY file-server/polis.config.js polis.config.js
COPY file-server/fs_config.template.json fs_config.json
# If fs_config.json exists, will override the template here.
COPY file-server/. .

# use the multi-stage builds above to copy out the resources
# RUN mkdir /app/build
COPY --from=client-admin         /app/client-admin/dist/         /app/file-server/build
COPY --from=client-participation /app/client-participation/dist/  /app/file-server/build
COPY --from=client-report        /app/client-report/dist/        /app/file-server/build

EXPOSE 8080

CMD node --max_old_space_size=400 --gc_interval=100 --harmony app.js



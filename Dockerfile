FROM node:24 AS installer
WORKDIR /juice-shop
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME/bin:$PATH"
RUN corepack enable && corepack prepare pnpm@11.1.1 --activate
RUN pnpm add -g typescript@^6.0.3
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
COPY frontend/package.json frontend/package.json
RUN pnpm install --ignore-scripts --frozen-lockfile
RUN pnpm rebuild sqlite3
COPY . /juice-shop
RUN pnpm run build:frontend
RUN pnpm run --silent build:server || true
RUN CI=true pnpm prune --prod --ignore-scripts
RUN cd frontend && CI=true pnpm prune --prod --ignore-scripts
RUN rm -rf frontend/node_modules
RUN rm -rf frontend/.angular
RUN rm -rf frontend/src/assets
RUN mkdir logs
RUN chown -R 65532 logs
RUN chgrp -R 0 ftp/ frontend/dist/ logs/ data/ i18n/
RUN chmod -R g=u ftp/ frontend/dist/ logs/ data/ i18n/
RUN rm ftp/legal.md || true
RUN rm i18n/*.json || true

# keep version in sync with package.json
ARG CYCLONEDX_NPM_VERSION='^2.0.0||^3.0.0||^4.0.0'
RUN pnpm add -g @cyclonedx/cyclonedx-npm@$CYCLONEDX_NPM_VERSION
RUN pnpm run sbom

FROM gcr.io/distroless/nodejs24-debian13
ARG BUILD_DATE
ARG VCS_REF
LABEL maintainer="ExploitHunter.app" \
    org.opencontainers.image.title="Yak Hair & Flair" \
    org.opencontainers.image.description="Configurable ecommerce storefront for automated agent evaluation" \
    org.opencontainers.image.authors="ExploitHunter.app" \
    org.opencontainers.image.vendor="ExploitHunter.app" \
    org.opencontainers.image.documentation="https://yak-shaving.example/help" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.version="20.1.1" \
    org.opencontainers.image.url="https://yak-shaving.example" \
    org.opencontainers.image.source="https://github.com/justsml/juice-shop" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE
WORKDIR /juice-shop
COPY --from=installer --chown=65532:0 /juice-shop .
USER 65532
EXPOSE 3000
CMD ["/juice-shop/build/app.js"]

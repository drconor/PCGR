# hash:sha256:da39cb843cdeb3a7270e6943b8dcc45324742f88931e7c9f4412658aff5c8599
ARG REGISTRY_HOST
FROM $REGISTRY_HOST/codeocean/py-r:python3.12.4-R4.3.3-JupyterLab4.2.4-RStudiorstudio-server-2024.04.2-764-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

COPY postInstall /
RUN /postInstall

FROM python:3 as base
ARG DEBIAN_FRONTEND=noninteractive

# Updates
RUN apt-get update -qq

FROM base as base_ansible
RUN /usr/local/bin/python -m pip install ansible
RUN apt-get install -y jq zsh git

FROM base_ansible as base_ansible_deps

# Install VMware Requirements
COPY build/requirements.txt ./
RUN /usr/local/bin/python -m pip install --no-cache-dir -r requirements.txt --verbose
FROM public.ecr.aws/docker/library/amazonlinux:latest

RUN dnf update \
    && dnf install -y 'dnf-command(config-manager)' \
    && dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo \
    && dnf install -y wget which rsync nodejs22 jq awscli gh \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
    && update-alternatives --install /usr/bin/node node /usr/bin/node-22 1 \
    && update-alternatives --install /usr/bin/npm npm /usr/bin/npm-22 1 \
    && update-alternatives --list \
    && npm install --global aws-cdk

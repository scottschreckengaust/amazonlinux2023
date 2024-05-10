FROM public.ecr.aws/docker/library/amazonlinux:latest

RUN dnf install -y 'dnf-command(config-manager)' \
    && dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo \
    && dnf install -y wget rsynch nodejs jq awscli gh \
    && npm install --global aws-cdk

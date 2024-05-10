FROM public.ecr.aws/docker/library/amazonlinux:latest

RUN dnf update \
    && dnf install -y 'dnf-command(config-manager)' \
    && dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo \
    && dnf install -y wget which rsync nodejs20 jq awscli gh \
    && which node20 \
    && which python3 \
    && update-alternatives --list

# RUN npm install --global aws-cdk \

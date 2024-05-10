FROM public.ecr.aws/docker/library/amazonlinux:latest

RUN dnf update \
    && dnf install -y 'dnf-command(config-manager)' \
    && dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo \
    && dnf install -y wget which rsync nodejs20 jq awscli gh \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
    && update-alternatives --list

RUN which node || echo "no node"
RUN which node20 || echo "no node20"
RUN which nodejs20 || echo "no nodejs20"

# RUN npm install --global aws-cdk \

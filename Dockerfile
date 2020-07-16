from node:lts-alpine3.10

run apk add make vim jq curl git bash && \
    npm install -g claudia && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"


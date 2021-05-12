FROM alpine:latest

LABEL "com.github.actions.name"="Create Azure Cognitive Search Index"
LABEL "com.github.actions.description"="Creates a new Index within a specified Azure Cognitive Search instance."
LABEL "com.github.actions.icon"="search"
LABEL "com.github.actions.color"="green"
LABEL "repository"="https://github.com/heyitsmemark/create-azure-search-index"
LABEL "homepage"="https://github.com/heyitsmemark/create-azure-search-index"
LABEL "maintainer"="heyitsmemark"

ADD entrypoint.sh /entrypoint.sh

RUN apk update && apk add curl jq
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
#! /bin/bash

curl \
  -i -u "${USERNAME}:${TOKEN}" \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/orgs/$ORG/repos" \
  -d '{"name":"'"$REPO_NAME"'"}'

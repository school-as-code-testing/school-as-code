#! /bin/bash

curl \
  -i -u "${USERNAME}:${TOKEN}" \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/lab-antwerp-1/home/generate" \
  -d '{"owner": "'"$ORG"'", "name":"'"$REPO_NAME"'"}'

#! /bin/bash

for project_name in side-projects deliverables; do

  already_exists=$(curl \
      -i -u "${USERNAME}:${TOKEN}" \
      -H "Accept: application/vnd.github.v3+json" \
      -I "https://api.github.com/repos/$ORG/$REPO_NAME/projects" \
      2>/dev/null | head -n 1 | cut -d$' ' -f2)

  if [ $already_exists != '200' ]
  then
    echo "creating $project_name..."
    curl \
      -i -u "${USERNAME}:${TOKEN}" \
      -X POST \
      -H "Accept: application/vnd.github.v3+json" \
      "https://api.github.com/repos/$ORG/$REPO_NAME/projects" \
      -d '{"name":"'"$project_name"'"}'
  else
    echo "$project_name already exists"
  fi
done

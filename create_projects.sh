#! /bin/bash

for project_name in side-projects deliverables; do

    echo "creating $project_name..."
    PROJECT_ID=$(curl \
      -u "${USERNAME}:${TOKEN}" \
      -X POST \
      -H "Accept: application/vnd.github.v3+json" \
      "https://api.github.com/repos/$ORG/$REPO_NAME/projects" \
      -d '{"name":"'"$project_name"'"}' \
      | jq -r '.id')

    for column in TODO DOING "READY FOR REVIEW" "NEEDS REVISION" DONE; do
      curl \
        -u "${USERNAME}:${TOKEN}" \
        -X POST \
        -H "Accept: application/vnd.github.v3+json" \
        "https://api.github.com/projects/$PROJECT_ID/columns" \
        -d '{"name":"'"$column"'"}'
      echo "created $column for project: $project_name"
    done
done

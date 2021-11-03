#! /bin/bash

for team_name in admin coaches students; do

  # my best idea on how to test existence was to check if a 200 status code comes back, but there might be a better way to do this
  already_exists=$(curl \
  -i -u "${USERNAME}:${TOKEN}" \
  -H "Accept: application/vnd.github.v3+json" \
  -I "https://api.github.com/orgs/$ORG/teams/$team_name" \
  2>/dev/null | head -n 1 | cut -d$' ' -f2)

  if [ $already_exists != '200' ]
  then
    echo "creating $team_name ..."
    curl \
      -i -u "${USERNAME}:${TOKEN}" \
      -X POST \
      -H "Accept: application/vnd.github.v3+json" \
      "https://api.github.com/orgs/$ORG/teams" \
      -d '{"name":"'"$team_name"'"}'
  else
    echo "team $team_name already exists"
  fi
done

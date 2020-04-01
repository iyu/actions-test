#!/bin/bash

# 必要な環境変数
github_ref=${GITHUB_REF}
github_repository=${GITHUB_REPOSITORY}
github_token=${GITHUB_TOKEN}

api_url="https://api.github.com/repos/${github_repository}/releases"

current_version="$(echo ${github_ref} | sed -e 's/^refs\/tags\///')"
before_version="$(git tag --list --sort=-v:refname | grep -e '^v[0-9]*\.[0-9]*\.[0-9]*$' | grep ${current_version} -A 1 | tail -n 1)"

release_name="$(date '+%F')"

version_logs="$(git log ${before_version}..${current_version} --pretty="format:- [%h] - %s (%an)" --date=short | grep -v 'Merge branch.*\(cloudbuild\)')"
release_body="## Notable Changes
<details>

- template

</details>

## Commits
<details>

${version_logs}

</details>"
release_body=$(echo "${release_body}" | sed ':a;N;$!ba;s/\n/\\n/g')

# API
curl s -X POST ${api_url} \
  -H "Authorization: token ${github_token}" \
  -d @- << EOS
{
  "tag_name": "${current_version}",
  "name": "${release_name}",
  "body": "${release_body}",
  "draft": false,
  "prerelease": true
}
EOS

curl \
  -w "%{http_code}\n" \
  -X PUT \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/carltonbrown/odaiba/pulls/34/merge \
  -d '{"commit_title":"Expand enum","commit_message":"Merge 34"}'

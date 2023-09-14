curl -L \
  -X PATCH \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/carltonbrown/odaiba/pulls/22 \
  -d '{"title":"new title","body":"updated body","state":"open","base":"main"}'

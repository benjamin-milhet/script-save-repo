token="token_id"
user="benjamin-milhet"

curl -H "Authorization: token $token" "https://api.github.com/user/repos?per_page=100" | jq -r '.[].clone_url' | while read url; do git clone $url; done
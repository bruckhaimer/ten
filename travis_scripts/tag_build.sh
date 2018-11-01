echo "Tagging build with $BUILD_NAME"
export TARGET_URL="https://api.github.com/repos/carnellj/spmia-chapter10/releases?access_token=12e0ab7e9ceee0512997c16335dc332ad4b4b5a2"

body="{
  \"tag_name\": \"$BUILD_NAME\",
  \"target_commitish\": \"master\",
  \"name\": \"$BUILD_NAME\",
  \"body\": \"Release of version $BUILD_NAME\",
  \"draft\": true,
  \"prerelease\": true
}"

curl -k -X POST \
  -H "Content-Type: application/json" \
  -d "$body" \
  $TARGET_URL

echo "JIRA"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/jira/versions/latest | jq .version
echo "-------------------"

echo "Confluence"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/confluence/versions/latest | jq .version
echo "-------------------"

echo "Crowd"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/crowd/versions/latest | jq .version
echo "-------------------"

echo "Bitbucket"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/bitbucket/versions/latest | jq .version
echo "-------------------"

echo "FeCru"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/fecru/versions/latest | jq .version
echo "-------------------"


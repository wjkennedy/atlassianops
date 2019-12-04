echo "JIRA"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/jira/versions/latest | jq .version

echo "Confluence"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/confluence/versions/latest | jq .version

echo "Crowd"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/crowd/versions/latest | jq .version

echo "Bitbucket"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/bitbucket/versions/latest | jq .version

echo "Fisheye"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/fisheye/versions/latest | jq .version

echo "Crucible"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/crucible/versions/latest | jq .version


echo "Bamboo"
curl -s --url https://marketplace.atlassian.com/rest/2/applications/bamboo/versions/latest | jq .version


set -e


echo "Be sure to destroy old vagrant boxes" ; sleep 1
cp -aR role_templates roles

echo "Bamboo"
BAMBOO_VER=$(curl -s --url https://marketplace.atlassian.com/rest/2/applications/bamboo/versions/latest | jq .version | sed 's/"//g')
echo $BAMBOO_VER
sed -i "s/BAMBOO_VER/$BAMBOO_VER/g" roles/bamboo-common/defaults/main.yml 

echo "Bitbucket"
BITBUCKET_VER=$(curl -s --url https://marketplace.atlassian.com/rest/2/applications/bitbucket/versions/latest | jq .version | sed 's/"//g')
echo $BITBUCKET_VER
sed -i "s/BITBUCKET_VER/$BITBUCKET_VER/g" roles/bitbucket/defaults/main.yml 

echo "Confluence"
CONFLUENCE_VER=$(curl -s --url https://marketplace.atlassian.com/rest/2/applications/confluence/versions/latest | jq .version | sed 's/"//g')
echo $CONFLUENCE_VER
sed -i "s/CONFLUENCE_VER/$CONFLUENCE_VER/g" roles/confluence/defaults/main.yml 

echo "Crowd"
CROWD_VER=$(curl -s --url https://marketplace.atlassian.com/rest/2/applications/crowd/versions/latest | jq .version | sed 's/"//g')
echo $CROWD_VER
sed -i "s/CROWD_VER/$CROWD_VER/g" roles/crowd/defaults/main.yml 

echo "Fisheye"
FISHEYE_VER=$(curl -s --url https://marketplace.atlassian.com/rest/2/applications/fecru/versions/latest | jq .version | sed 's/"//g')
echo $FISHEYE_VER
sed -i "s/FISHEYE_VER/$FISHEYE_VER/g" roles/fisheye/defaults/main.yml 

echo "Crucible"
CRUCIBLE_VER=$(curl -s --url https://marketplace.atlassian.com/rest/2/applications/crucible/versions/latest | jq .version | sed 's/"//g')
echo $CRUCIBLE_VER
sed -i "s/CRUCIBLE_VER/$CRUCIBLE_VER/g" roles/crucible/defaults/main.yml 

echo "Jira"
JIRA_VER=$(curl -s --url https://marketplace.atlassian.com/rest/2/applications/jira/versions/latest | jq .version | sed 's/"//g')
echo $JIRA_VER
sed -i "s/JIRA_VER/$JIRA_VER/g" roles/jira/defaults/main.yml 

echo "Program versions set to the versions displayed here. To update, rerun $0"
echo "To check current versions, use versions.sh or"
echo "  curl -s --url https://marketplace.atlassian.com/rest/2/applications/product/versions/latest"
echo "-------------------"
echo
echo "Run launcher.sh"

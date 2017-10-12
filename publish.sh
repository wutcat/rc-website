#!/bin/bash

set -e
clear

echo ""
echo "  ------------------------------------------------------- "
echo "  --- Publishing with this method has been deprecated --- "
echo "  ------------------------------------------------------- "
echo "  Simply commit your changes and 'git push origin master' "
echo "  to deploy your code. The deployment pipeline will take  "
echo "  it from there.                                          "
echo ""
echo "**********************************************************"

# Ship the events CSV file
# aws s3 cp --acl public-read events.csv s3://somrc-data/events/

echo ""
read -p "   Do you want to manually publish? [Y/n]: " proceed
case $proceed in
    [Yy]* ) proceedx="1";;
    [Nn]* ) proceedx="2";;
    * ) echo "Please answer Y or N";;
esac

if [ $proceedx -eq 2 ]
then
  echo ""
  echo "Exiting..."
  echo ""
  exit
else
  echo "--- Clear the /public/ dir of all content"
  cd public/
  rm -R *
  cd ../
  echo "--- Content cleared"
  hugo -v --ignoreCache    # try without cache
  echo "--- Hugo content generated"
  aws s3 sync --delete public/ s3://somrc-website/
  # aws s3 sync --delete public/ s3://somrc-website-uswest2/
  echo "--- Public dir published to AWS"
fi

aws cloudfront create-invalidation --distribution-id "E1JZBKRR78QE2T" --paths "/*"

#!/bin/bash -e
# sanity check
touch .gitattributes
github-health-files
echo "Setting up .github repo health files...."
# <!-- SETUP '.github/~' -->
mkdir -p -v .github/ISSUE_TEMPLATE
cd .github/ISSUE_TEMPLATE
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/.github/ISSUE_TEMPLATE/feature_request.md --output feature_request.md
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/.github/ISSUE_TEMPLATE/bug_report.md --output bug_report.md 
touch action.yaml
cd -
mkdir -p -v .github/workflows
touch  .github/workflows/.gitkeep
# we can also download this https://raw.githubusercontent.com/freight-chain/boilerplate/master/.github/workflows/files-changed.yaml

# <-- ROOT OF REPOSITORY DIRECTORY -->
echo "Setting up Repository Boilerplate Files"
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/.codeclimate.yml --output .codeclimate.yml
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/VERSIONING.md --output VERSIONING.md
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/CONTRIBUTING.md --output CONTRIBUTING.md
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/SECURITY.md --output SECURITY.md
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/SUPPORT.md --output SUPPORT.md
curl https://raw.githubusercontent.com/freight-chain/boilerplate/master/BUILDING.md --output BUILDING.md

echo "Setting up corporate polices"
curl https://raw.githubusercontent.com/freight-trust/legal/master/src/terms-of-service.md --output TERMS_OF_SERVICE.md
curl https://raw.githubusercontent.com/freight-trust/legal/master/src/disclaimer.md --output DISCLAIMER.md
curl https://raw.githubusercontent.com/freight-trust/legal/master/src/data-breach-response-policy.md --output DATA_BREACH_RESPONSE.md

# COMPLIANCE
echo "Setting up CCPA (California) polices"
curl https://raw.githubusercontent.com/freight-trust/legal/master/src/CCPA.adoc --output CCPA.adoc
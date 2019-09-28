#

AWS_CLI_VERSION="$(curl -s "https://pypi.org/pypi/awscli/json" | jq -r '.info.version')"
AWS_EB_CLI_VERSION="$(curl -s "https://pypi.org/pypi/awsebcli/json" | jq -r '.info.version')"

gsed -i -E "s/AWS_CLI_VERSION=.*\s/AWS_CLI_VERSION=${AWS_CLI_VERSION} /g" Dockerfile
gsed -i -E "s/AWS_EB_CLI_VERSION=.*$/AWS_EB_CLI_VERSION=${AWS_EB_CLI_VERSION}/g" Dockerfile

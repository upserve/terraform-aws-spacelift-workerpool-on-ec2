#!/usr/bin/env sh
set -ex

# Download the data.
code_version=$1
url=https://github.com/spacelift-io/ec2-workerpool-autoscaler/releases/download/${code_version}/ec2-workerpool-autoscaler_linux_amd64.zip

echo "Downloading $url..."
curl -L -o lambda.zip "$url"

mkdir lambda
cd lambda
unzip ../lambda.zip

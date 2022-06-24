!#/bin/bash

set -e


JAVA_VERSION=$1
JAVA_INSTALL_PATH=/home/devops-2/mithlesh-workspace/application
JAVA_DOWNLOAD_URL="https://download.oracle.com/java/$JAVA_VERSION"


wget $JAVA_DOWNLOAD_URL
tar -xvf $JAVA_VERSION -C $JAVA_INSTALL_PATH
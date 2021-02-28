#!/bin/sh

set -e -a
if ! __tests__/check_renode_install.sh;
then
    RENODE_DIR=$(mktemp -d)
    echo "RENODE_DIR=$RENODE_DIR" >> $GITHUB_ENV
    if ! wget -q https://dl.antmicro.com/projects/renode/builds/renode-$RENODE_VERSION.linux-portable.tar.gz;
    then
        echo "There was an error when downloading the package. The provided Renode version might be wrong: $RENODE_VERSION"
        exit 1
    fi
    tar -xzf renode-$RENODE_VERSION.linux-portable.tar.gz -C $RENODE_DIR --strip 1
fi
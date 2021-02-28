#!/bin/sh

set -e
sh $GITHUB_ACTION_PATH/../utils/setup_renode.sh
pip install -q -r $RENODE_DIR/tests/requirements.txt --no-warn-script-location
$RENODE_DIR/test.sh $TESTS_TO_RUN

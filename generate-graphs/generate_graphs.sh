#!/bin/sh

set -e

sh $GITHUB_ACTION_PATH/../utils/setup_renode.sh
pip install -r $RENODE_DIR/tools/metrics_analyzer/metrics_visualizer/requirements.txt
python $RENODE_DIR/tools/metrics_analyzer/metrics_visualizer/metrics_visualizer.py $DUMP_FILE --no-dialog

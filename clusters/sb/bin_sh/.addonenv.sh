#!/usr/bin/env bash

SCRIPT_DIR="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
CLUSTER_DIR="$(dirname "$SCRIPT_DIR")"
CLUSTERS_DIR="$(dirname "$APP_DIR")"
BASE_DIR=$PADOGRID_HOME/$PRODUCT
pushd  $BASE_DIR/bin_sh > /dev/null 2>&1
. $BASE_DIR/bin_sh/.addonenv.sh
popd > /dev/null 2>&1

CLUSTER_ETC_DIR=$CLUSTER_DIR/etc
CLUSTER_LOG_DIR=$CLUSTER_DIR/log
if [ ! -d "$CLUSTER_LOG_DIR" ]; then
   mkdir -p "$CLUSTER_LOG_DIR"
fi
. $CLUSTER_DIR/bin_sh/setenv.sh

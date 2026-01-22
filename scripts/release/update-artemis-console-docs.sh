#!/bin/bash
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# Setting the script to fail if anything goes wrong
set -e -u -o pipefail
shopt -s failglob

error () {
   echo ""
   echo "** ERROR: $@ **"
   echo ""
   echo "Usage: ./scripts/release/update-artemis-console-docs.sh <path.to/artemis-console> <previous-release-version> <new-release-version>"
   echo ""
   echo "Must be run from within an artemis-website checkout root."
   echo ""
   echo "Example:"
   echo "cd <path.to>/artemis-website"
   echo "./scripts/release/update-artemis-console-docs.sh ../release-work/artemis-console 1.4.0 1.5.0"
   echo ""
   exit 64
}

if [ ! -f serve.sh ] || [ ! -f _config.yml ]; then
    error "This script has to be run from inside the root of an activemq-website checkout"
    exit 1
fi
WEBSITE_DIR="$( pwd )"

if [ "$#" -lt 3 ]; then
  error "The Artemis Console release process checkout, prior Artemis Consle release, and new Artemis Console release versions must all be specified"
  exit 1
fi

ARTEMIS_CONSOLE_DIR="$( cd -- "$1" >/dev/null 2>&1 ; pwd -P )"
PRIOR_VERSION="$2"
NEW_VERSION="$3"

if [ ! -d "$ARTEMIS_CONSOLE_DIR" ] || [ ! -d "$ARTEMIS_CONSOLE_DIR/artemis-console-distribution" ] || [ ! -f "$ARTEMIS_CONSOLE_DIR/.asf.yaml" ]; then
    error "ERROR: The provided artemis console release process path does not point to an artemis console checkout"
    exit 1
fi

if [ ! -d "$ARTEMIS_CONSOLE_DIR/target" ] || [ ! -d "$ARTEMIS_CONSOLE_DIR/target/checkout" ]; then
    error "ERROR: The provided artemis console release path does not contain the release process target checkout: $ARTEMIS_CONSOLE_DIR/target/checkout"
    exit 1
fi

DOCS_HOME="$WEBSITE_DIR/src/components/artemis-console/documentation"
LATEST_DOCS="$DOCS_HOME/latest/"
NEW_DOCS="$ARTEMIS_CONSOLE_DIR/target/checkout/artemis-console-website/target/classes/user-manual/"
$PRIOR_DOCS="$DOCS_HOME/version/$PRIOR_VERSION"

echo "Moving previous release docs, from $LATEST_DOCS to $PRIOR_DOCS"
mv $LATEST_DOCS $PRIOR_DOCS

echo "Copying new release docs, from $NEW_DOCS to $LATEST_DOCS"
cp -aR $NEW_DOCS. $LATEST_DOCS

git add $LATEST_DOCS $PRIOR_DOCS

echo "Updating .htaccess to point 'version/$NEW_VERSION' to 'latest'"
sed -i "s/$PRIOR_VERSION/$NEW_VERSION/g" $DOCS_HOME/.htaccess

echo "Doc updates complete, check over git status"


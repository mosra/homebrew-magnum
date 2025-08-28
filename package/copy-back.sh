#!/bin/bash

set -e

dir=$(dirname "$0")
for i in corrade magnum magnum-plugins magnum-integration magnum-extras magnum-examples magnum-bindings; do
    cp $dir/../Formula/$i.rb $dir/../../$i/package/homebrew/
done

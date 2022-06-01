for i in corrade magnum magnum-plugins magnum-integration magnum-extras magnum-examples magnum-bindings; do
    cp ../../$i/package/homebrew/$i.rb ../Formula/
done

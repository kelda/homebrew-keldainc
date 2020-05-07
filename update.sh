#! /bin/bash

VERSION=$1

curl https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-osx-$VERSION -o blimp
SHA=$(openssl dgst -sha256  ./blimp | sed 's/.* //')
echo $SHA

sed -i "" "s/version \".*\"/version \"$VERSION\"/g" Formula/blimp.rb
sed -i "" "s/sha256 \".*\"/sha256 \"$SHA\"/g" Formula/blimp.rb

git diff

git commit -a -m "Update to version $VERSION"

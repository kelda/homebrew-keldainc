class Blimp < Formula
  version "0.9.0"
  sha256 "ad15d63c2ec20891c2d1f841c63298fecf18cfa28d68c8f6b1aecca5b041f8f3"
  desc "CLI for Kelda's Blimp (Docker Compose for the Cloud)"
  homepage "https://kelda.io"
  url "https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-osx-#{version}"

  def install
    bin.install "blimp-osx-#{version}"
    mv bin/"blimp-osx-#{version}", bin/"blimp"
  end

  test do
    system "true" # TODO: Write a real test
  end
end

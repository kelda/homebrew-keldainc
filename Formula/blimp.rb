class Blimp < Formula
  version "0.11.8"
  sha256 "0cd6415fcbfaed069b4b5d2a3a155781e0f43dfaf73f3271430f33fb37ea71d5"
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

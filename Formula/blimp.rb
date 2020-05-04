class Blimp < Formula
  desc "CLI for Kelda's Blimp (Docker Compose for the Cloud)"
  homepage "https://kelda.io"
  url "https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-osx-0.7.2"
  sha256 "545ca27c847270bde4ec9f1f38f7d3d22c86c67088822c52c46871cd6df63a98"
  version "0.7.2"

  def install
    bin.install "blimp-osx-0.7.2"
    mv bin/"blimp-osx-0.7.2", bin/"blimp"
  end

  test do
    system "true" # TODO: Write a real test
  end
end

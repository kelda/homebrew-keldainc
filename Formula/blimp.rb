class Blimp < Formula
  desc "CLI for Kelda's Blimp (Docker Compose for the Cloud)"
  homepage "https://kelda.io"
  url "https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-osx-0.6.0"
  sha256 "ddc4c447c3e542b8986f799d01a0c2673a138775e327fab445674b185764e439"
  version "0.6.0"

  def install
    bin.install "blimp-osx-0.6.0"
    mv bin/"blimp-osx-0.6.0", bin/"blimp"
  end

  test do
    system "true" # TODO: Write a real test
  end
end

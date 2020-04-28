class Blimp < Formula
  desc "CLI for Kelda's Blimp (Docker Compose for the Cloud)"
  homepage "https://kelda.io"
  url "https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-osx-0.6.7"
  sha256 "5aed5e25db93297de3332ab850c963f2587f4c674c395243ca598ad76607b66d"
  version "0.6.7"

  def install
    bin.install "blimp-osx-0.6.7"
    mv bin/"blimp-osx-0.6.7", bin/"blimp"
  end

  test do
    system "true" # TODO: Write a real test
  end
end

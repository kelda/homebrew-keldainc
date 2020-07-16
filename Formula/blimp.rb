class Blimp < Formula
  version "0.13.18"
  sha256 "cf1e676066f2ab4fce6486b8df8027c2029fe9e8c1745ae6ac3feb51019ca5a3"
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

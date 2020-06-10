class Blimp < Formula
  version "0.13.3"
  sha256 "50be047abc965b3a1c70d90c755b53dec343d54fe941dc80b8798d448f417a1a"
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

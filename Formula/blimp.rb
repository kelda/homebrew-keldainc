class Blimp < Formula
  desc "CLI for Kelda's Blimp (Docker Compose for the Cloud)"
  homepage "https://kelda.io"
  url "https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-osx-0.7.3"
  sha256 "011881b4579cb375b96731ba6e28c673bd8a6e8058fa272790051dea12b7f6a5"
  version "0.7.3"

  def install
    bin.install "blimp-osx-0.7.3"
    mv bin/"blimp-osx-0.7.3", bin/"blimp"
  end

  test do
    system "true" # TODO: Write a real test
  end
end

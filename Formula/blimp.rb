class Blimp < Formula
  desc "CLI for Kelda's Blimp (Docker Compose for the Cloud)"
  homepage "https://kelda.io"
  url "https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-osx-0.5.0"
  sha256 "6719e5df874ecbf1ce3a3b61ba2451bb5ac92a5cd3da9d9676d877e40708e111"

  def install
    bin.install "blimp-osx-0.5.0"
    mv bin/"blimp-osx-0.5.0", bin/"blimp"
  end

  test do
    system "true" # TODO: Write a real test
  end
end

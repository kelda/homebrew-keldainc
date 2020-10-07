class Blimp < Formula
  version "0.13.33"
  sha256 "ebc260c7fe1a441e2e0f6cb978ea4cc79b20ffab45d0c86eb2b7bc7a8e2abd9f"
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

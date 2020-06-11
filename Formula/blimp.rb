class Blimp < Formula
  version "0.13.5"
  sha256 "462d60c4faf8b40eb8e4efae84212d67b72ac31f201a81eaf9d4c51b202f1dc7"
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

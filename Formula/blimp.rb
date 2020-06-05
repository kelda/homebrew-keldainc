class Blimp < Formula
  version "0.12.4"
  sha256 "21e52f75bda7a772c3ef261d7b0d6b92b26533068ed4c7e2f3ae3e49d68200c8"
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

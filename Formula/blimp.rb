class Blimp < Formula
  version "0.13.27"
  sha256 "3fe2fa70e08c093cb1e6fedcaa6ff3f786a3d920f55eaf0e3ba2f677433f77b2"
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

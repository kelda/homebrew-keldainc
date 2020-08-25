class Blimp < Formula
  version "0.13.24"
  sha256 "0f18dbe9db03f12faef8b7c78e544ada6b38bbc36eff0c65d8d52c2f177d2eb3"
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

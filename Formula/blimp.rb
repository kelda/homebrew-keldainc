class Blimp < Formula
  version "0.13.11"
  sha256 "95109a7a41cf1ecd04e1da296c9c9b51add0939130ed39a56f32645348be4e2d"
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

class Blimp < Formula
  version "0.13.28"
  sha256 "3d271fc6c2c74e54a8e3cd9ed599ac05fff48b50d3d91176a9f69ff587bd85dc"
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

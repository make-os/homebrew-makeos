# This file was generated by GoReleaser. DO NOT EDIT.
class Kit < Formula
  desc "A client for the MakeOS decentralized code collaboration network"
  homepage "https://makeos.org/"
  version "0.0.18"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/make-os/kit/releases/download/v0.0.18/kit_0.0.18_Darwin_x86_64.tar.gz"
    sha256 "d0b80a63d0568746bd22907580072f6b3cf19fbc3f7fdd1c1fe81a90df6c7aa6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/make-os/kit/releases/download/v0.0.18/kit_0.0.18_Linux_x86_64.tar.gz"
      sha256 "3552f284a95d9cfe8ce063ffc47dcfddcb5f6b49dafa19ee698a0518618e7b5e"
    end
  end
  
  depends_on "git"

  def install
    bin.install "kit"
  end

  test do
    system "#{bin}/kit --version"
  end
end

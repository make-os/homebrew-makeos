# This file was generated by GoReleaser. DO NOT EDIT.
class Lobe < Formula
  desc ""
  homepage "https://makeos.org/"
  version "0.0.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/make-os/lobe/releases/download/v0.0.10/lobe_0.0.10_Darwin_x86_64.tar.gz"
    sha256 "5f4658acc365725d1192ce9d5e6afaf2391a883414dc49bf7d6bddbae286767e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/make-os/lobe/releases/download/v0.0.10/lobe_0.0.10_Linux_x86_64.tar.gz"
      sha256 "250ca9d06c9a6a270c7b22d8c00f0f0a41ddfb52767ff6520553e3a0a2a5baca"
    end
  end
  
  depends_on "git"

  def install
    bin.install "lob"
  end

  test do
    system "#{bin}/lob --version"
  end
end

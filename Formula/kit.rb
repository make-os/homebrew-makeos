# This file was generated by GoReleaser. DO NOT EDIT.
class Kit < Formula
  desc "A client for the MakeOS decentralized code collaboration network"
  homepage "https://makeos.org/"
  version "0.0.25"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/make-os/kit/releases/download/v0.0.25/kit_0.0.25_Darwin_x86_64.tar.gz"
    sha256 "382b2f4965360de4cdb77abc31e5f352f7396e008e324db80fbdc54a70e40b48"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/make-os/kit/releases/download/v0.0.25/kit_0.0.25_Linux_x86_64.tar.gz"
    sha256 "9e24e544a7aa5654f2ac4e1da46bf0bf0ca53260c361a5887929ff10021d5480"
  end

  depends_on "git"

  def install
    bin.install "kit"
  end

  test do
    system "#{bin}/kit --version"
  end
end

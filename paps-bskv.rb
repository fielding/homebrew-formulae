require "formula"

class PapsBskv < Formula
  homepage "http://paps.sourceforge.net/"
  url "https://downloads.sourceforge.net/paps/paps-0.6.8.tar.gz"
  sha1 "83646b0de89deb8321f260c2c5a665bc7c8f5928"

  conflicts_with "paps"

  depends_on "pkg-config" => :build
  depends_on "pango"

  def patches
    "https://github.com/baskerville/dotfiles/raw/master/patches/paps-header_options.diff"
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}",
                          "--disable-debug", "--disable-dependency-tracking"
    system "make", "install"
  end
end

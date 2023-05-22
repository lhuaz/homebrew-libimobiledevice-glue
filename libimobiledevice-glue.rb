# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LibimobiledeviceGlue < Formula
  desc ""
  homepage ""
  url "https://github.com/lhuaz/libimobiledevice-glue/archive/refs/tags/1.0.1.tar.gz"
  sha256 "c6cd2f7503b43b2565986ba97af8cea4203a7f92cc8212fe681f81de7cd40c6a"
  license ""
  depends_on "autoconf" => :build
  depends_on "automake" => :buil
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "libplist"
 
  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make", "install"
  end
end

require "formula"

class Try < Formula
  homepage "https://github.com/pingles/try/"
  url "https://github.com/pingles/try/archive/0.3.tar.gz"
  sha1 "a1e1d851b9d81af4ef1e656fdb34600cfaab1e1b"
  
  head "https://github.com/pingles/try.git"

  def install
    FileUtils.mkdir_p bin
    ENV["PREFIX"] = prefix
    system "make", "install"
  end

  test do
    system "#{bin}/try", "-h"
  end
end

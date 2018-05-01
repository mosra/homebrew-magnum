# kate: indent-width 2;

class MagnumExtras < Formula
  desc "Extras for the Magnum C++11/C++14 graphics engine"
  homepage "http://magnum.graphics"
  url "https://github.com/mosra/magnum-extras/archive/v2018.04.tar.gz"
  sha256 "02b2e5d2cb1b1048758ccb575524d1a07f8a105ba19b5b3d6dc2f8e7c196ed6b"
  head "git://github.com/mosra/magnum-extras.git"

  depends_on "cmake"
  depends_on "magnum"

  def install
    system "mkdir build"
    cd "build" do
      system "cmake", "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DWITH_UI=ON", "-DWITH_UI_GALLERY=ON", ".."
      system "cmake", "--build", "."
      system "cmake", "--build", ".", "--target", "install"
    end
  end
end

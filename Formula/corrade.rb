# kate: indent-width 2;

class Corrade < Formula
  desc "C++11/C++14 multiplatform utility library"
  homepage "http://magnum.graphics/corrade/"
  url "https://github.com/mosra/corrade/archive/v2018.04.tar.gz"
  sha256 "dc4b0eb793db5aeeec19af76adc4a1079ccfc3d8a8e38e702b6fb773fa0197f4"
  head "git://github.com/mosra/corrade.git"

  depends_on "cmake"

  def install
    system "mkdir build"
    cd "build" do
      system "cmake", "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_INSTALL_PREFIX=#{prefix}", ".."
      system "cmake", "--build", "."
      system "cmake", "--build", ".", "--target", "install"
    end
  end
end

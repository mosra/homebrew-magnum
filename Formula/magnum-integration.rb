# kate: indent-width 2;

class MagnumIntegration < Formula
  desc "Integration libraries for the Magnum C++11/C++14 graphics engine"
  homepage "http://magnum.graphics"
  url "https://github.com/mosra/magnum-integration/archive/v2018.04.tar.gz"
  sha256 "22755fe11e28e5fa48a5fdaf5ea79f2b0fda80b5aed39f17b4c6b8d22ff02798"
  head "git://github.com/mosra/magnum-integration.git"

  depends_on "cmake"
  depends_on "magnum"
  depends_on "bullet"

  def install
    system "mkdir build"
    cd "build" do
      system "cmake", "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DWITH_BULLET=ON", "-DWITH_DART=OFF", ".."
      system "cmake", "--build", "."
      system "cmake", "--build", ".", "--target", "install"
    end
  end
end

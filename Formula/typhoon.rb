class Typhoon < Formula
  desc "Typhoon DI framework for Swift"
  homepage "http://typhoonframework.org"
  url "https://github.com/appsquickly/TyphoonSwift/archive/0.0.1.tar.gz"
  sha256 "dcb53c3ff6e214b48039e051c1ce16cadf2acb155ab7d1dd617db7d2b8dca05f"
  head "https://github.com/appsquickly/TyphoonSwift.git"

  depends_on :xcode => ["8.1", :build]

  def install
    xcodebuild "-workspace", "Typhoon.xcworkspace",  "-configuration", "Release", "-scheme", "TyphoonSwift", "SYMROOT=#{Dir.pwd}/build"
    bin.install "build/Release/typhoon"
    share.install Dir["build/Release/Resources/*"]
    lib.install Dir["build/Release/*.framework"]
  end

end

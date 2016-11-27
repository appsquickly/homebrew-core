class Typhoon < Formula
  desc "Typhoon DI framework for Swift"
  homepage "http://typhoonframework.org"
  url "https://github.com/appsquickly/TyphoonSwift/archive/0.0.1.zip"
  sha256 "7e1d2312fa5bd4335582a4eacad98f759a6b5f035c837a0b60bb2883e0aae8da"
  head "https://github.com/appsquickly/TyphoonSwift.git"

  depends_on :xcode => ["8.1", :build]

  def install
    xcodebuild "-workspace", "Typhoon.xcworkspace",  "-configuration", "Release", "-scheme", "TyphoonSwift", "SYMROOT=#{Dir.pwd}/build"
    bin.install "build/Release/typhoon"
    share.install Dir["build/Release/Resources/*"]
    lib.install Dir["build/Release/*.framework"]
  end

end

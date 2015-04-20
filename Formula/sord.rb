require 'formula'

class Sord < Formula
  homepage 'http://drobilla.net/software/sord/'
  url 'http://download.drobilla.net/sord-0.12.2.tar.bz2'
  sha1 '01def87419beed8bb51a89e50307a22940f1d968'

  bottle do
    cellar :any
    sha1 "eab99e704b302d798559ab323fb9f43dbce43d73" => :yosemite
    sha1 "30b02ca5adcf95f25925e8023c3a9fd222973b52" => :mavericks
    sha1 "e5526acc4ac96fcbcce5be95f2e06ae93f08863f" => :mountain_lion
  end

  depends_on 'pkg-config' => :build
  depends_on 'pcre'
  depends_on 'serd'

  def install
    system "./waf", "configure", "--prefix=#{prefix}"
    system "./waf"
    system "./waf", "install"
  end
end

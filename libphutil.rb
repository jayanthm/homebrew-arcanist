require 'formula'

class Libphutil < Formula
  homepage 'https://secure.phabricator.com/book/phabricator/article/arcanist/'
  url 'https://github.com/phacility/libphutil/archive/master.zip'
  version '1.0'

  keg_only 'Only used as a library for arcanist'

  head 'https://github.com/phacility/libphutil.git'

  def install
    prefix.install Dir['*']
  end

  def test
    system "true"
  end
end

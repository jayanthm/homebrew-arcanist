require 'formula'

class Arcanist < Formula
  homepage 'https://secure.phabricator.com/book/phabricator/article/arcanist/'
  url 'https://github.com/phacility/arcanist/archive/master.zip'
  version '1.0'

  keg_only 'Only used as a library for arcanist'

  head 'https://github.com/phacility/arcanist.git'

  def install
    # Add libphutil to arcanist's external includes
    lib = '/usr/local/opt/libphutil'
    FileUtils.mkdir_p 'externals/includes'

    cd "externals/includes" do
      File.symlink(lib, "libphutil")
    end
    prefix.install Dir['*']
  end

  def test
    system "true"
  end
end

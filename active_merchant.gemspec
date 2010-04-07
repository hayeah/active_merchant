
PKG_VERSION = "1.4.2"
PKG_NAME = "activemerchant"
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

PKG_FILES = FileList[
    "lib/**/*", "test/**/*", "script/**/*", "[a-zA-Z]*"
].exclude(/\.svn$/)

Gem::Specification.new do |s|
  s.name = PKG_NAME
  s.version = PKG_VERSION
  s.summary = "Framework and tools for dealing with credit card transactions."
  s.has_rdoc = true

  s.files = PKG_FILES

  s.rubyforge_project = "activemerchant"
  s.require_path = 'lib'
  s.author = "Tobias Luetke"
  s.email = "tobi@leetsoft.com"
  s.homepage = "http://activemerchant.org/"
  
  s.add_dependency('activesupport', '>= 2.3.2')
  s.add_dependency('builder', '>= 2.0.0')
  
  s.signing_key = ENV['GEM_PRIVATE_KEY']
  s.cert_chain  = ['gem-public_cert.pem']
end

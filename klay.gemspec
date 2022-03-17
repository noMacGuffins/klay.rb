# frozen_string_literal: true
# coding: utf-8

lib = File.expand_path("lib", __dir__).freeze
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

require "klay/version"

Gem::Specification.new do |spec|
  spec.name = "klay"
  spec.version = Klay::VERSION
  spec.authors = ["Sehan Park"]
  spec.email = ["ianparkfirst@gmail.com"]

  spec.summary = %q{Ruby Klaytn library.}
  spec.description = %q{Library to handle Klaytn accounts, messages, and transactions.}
  spec.homepage = "https://github.com/noMacGuffins/klay"
  spec.license = "Apache-2.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/noMacGuffins/klay/issues",
    "changelog_uri" => "https://github.com/noMacGuffins/klay/blob/main/CHANGELOG.md",
    "github_repo" => "https://github.com/noMacGuffins/klay",
    "source_code_uri" => "https://github.com/noMacGuffins/klay",
  }.freeze

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files = spec.files.grep %r{^(test|spec|features)/}

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = ">= 2.6", "< 4.0"

  # keccak for hashing everything in ethereum
  spec.add_dependency "keccak", "~> 1.3"

  # konstructor gem for overloading constructors
  spec.add_dependency "konstructor", "~> 1.0"

  # rbsecp256k1 for key-pairs and signatures
  spec.add_dependency "rbsecp256k1", "~> 5.1"

  # openssl for encrypted key derivation
  spec.add_dependency "openssl", "~> 2.2"

  # scrypt for encrypted key derivation
  spec.add_dependency "scrypt", "~> 3.0"
end

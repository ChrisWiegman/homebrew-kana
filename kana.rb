# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kana < Formula
  desc "A simple, portable CLI for efficient WordPress development."
  homepage "https://github.com/ChrisWiegman/kana"
  version "0.24.4"
  license "GPL-3.0 license"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ChrisWiegman/kana/releases/download/0.24.4/kana_macos_x86_64.zip"
      sha256 "256b47fa532b61f84da145314649d22eeff913db03cf9401d99065b0df17c3d1"

      def install
        bin.install "kana"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ChrisWiegman/kana/releases/download/0.24.4/kana_macos_arm64.zip"
      sha256 "c48399bc173ca3f97c34e4252d52d0a2af01ec6c52ab32b1eee75306408bdd80"

      def install
        bin.install "kana"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ChrisWiegman/kana/releases/download/0.24.4/kana_linux_x86_64.zip"
        sha256 "2433ce2f7c72def55a3ce44cd56e48e1cbb1dbca2868b76617dfdb02b7273279"

        def install
          bin.install "kana"
        end
      end
    end
  end

  test do
    system "#{bin}/kana version"
  end
end

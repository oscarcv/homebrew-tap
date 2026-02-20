class SnapshotReportNightly < Formula
  desc "Nightly snapshot report generator for Swift SnapshotTesting"
  homepage "https://github.com/oscarcv/SnapshotReportKit"
  version "2026.02.20.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-arm64.tar.gz"
      sha256 "d8b58136f2ed31501f79e196a361161aa6682f10fb3f0ff26e6fa87390a9a9fa"
    else
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-x86_64.tar.gz"
      sha256 "d2ed3aeef874e52e0c836bd79deb597ef4d1ae076c3696cc4171eefcd86a9492"
    end
  end

  def install
    bin.install "snapshot-report" => "snapshot-report-nightly"
  end

  test do
    assert_match "snapshot-report", shell_output("#{bin}/snapshot-report-nightly --help")
  end
end

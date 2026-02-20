class SnapshotReport < Formula
  desc "Snapshot report generator for Swift SnapshotTesting"
  homepage "https://github.com/oscarcv/SnapshotReportKit"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/v0.1.0/snapshot-report-0.1.0-macos-arm64.tar.gz"
      sha256 "f3d7f396f3cf0a5c2bc30e9ec275231022dc93314caf2e5a7dddd786a9de2257"
    else
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/v0.1.0/snapshot-report-0.1.0-macos-x86_64.tar.gz"
      sha256 "ed70c45465b1bb21db93efe8ced1935860b906cbb3cc7f891146f1a88d226b7e"
    end
  end

  def install
    bin.install "snapshot-report"
  end

  test do
    assert_match "snapshot-report", shell_output("#{bin}/snapshot-report --help")
  end
end

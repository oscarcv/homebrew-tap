class SnapshotReportNightly < Formula
  desc "Nightly snapshot report generator for Swift SnapshotTesting"
  homepage "https://github.com/oscarcv/SnapshotReportKit"
  version "2026.02.20.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-arm64.tar.gz"
      sha256 "0707428056fb51b6cff8352aac79c0877fec270ed06c7e3ae2459db2071cb13b"
    else
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-x86_64.tar.gz"
      sha256 "865edf171431159a43d8b29d314092bd5a3bb5c2c22c534a471a9770875d1ef1"
    end
  end

  def install
    bin.install "snapshot-report" => "snapshot-report-nightly"
    bin.install "SnapshotReportKit_SnapshotReportCore.bundle"
  end

  test do
    assert_match "snapshot-report", shell_output("#{bin}/snapshot-report-nightly --help")
  end
end

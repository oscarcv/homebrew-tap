class SnapshotReportNightly < Formula
  desc "Nightly snapshot report generator for Swift SnapshotTesting"
  homepage "https://github.com/oscarcv/SnapshotReportKit"
  version "2026.02.20.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-arm64.tar.gz"
      sha256 "813eda6e089b547b9d41a3a51576e48233cbdaacefe0426d2e3035b12a0079a2"
    else
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-x86_64.tar.gz"
      sha256 "d761c11875982b824989ef7db4c2d74d1c4d589e1a3140db27c2666df558c03d"
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

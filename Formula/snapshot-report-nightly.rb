class SnapshotReportNightly < Formula
  desc "Nightly snapshot report generator for Swift SnapshotTesting"
  homepage "https://github.com/oscarcv/SnapshotReportKit"
  version "2026.02.20.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-arm64.tar.gz"
      sha256 "fd493dfc42e1609075f9aedfe5f612e23f3e1ad76192d13c1ac36c8dceeef170"
    else
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-x86_64.tar.gz"
      sha256 "f9dbaac357f3a10287fd682712657e24f84e8bd88eecc52bbdc928abbf13a18e"
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

class SnapshotReportNightly < Formula
  desc "Nightly snapshot report generator for Swift SnapshotTesting"
  homepage "https://github.com/oscarcv/SnapshotReportKit"
  version "2026.02.20.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-arm64.tar.gz"
      sha256 "433d0081f8faa99e61cd725c0c30b367f8ed7e6d57160fbc74951af479dbc253"
    else
      url "https://github.com/oscarcv/SnapshotReportKit/releases/download/nightly/snapshot-report-nightly-macos-x86_64.tar.gz"
      sha256 "1e4c6abb6655cdd16f083ebcbf15466bb1ab97484d71aaa6c7ca81dc0c7f4b13"
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

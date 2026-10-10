cask "mactalk" do
  version "0.1.0"
  sha256 "b0f3b0109fb645caf66fbed596e97870d3799b9e809d6bea075f93581e0d0c19"

  url "https://github.com/nikolasfaria/mactalk/releases/download/v#{version}/MacTalk-#{version}.dmg"
  name "MacTalk"
  desc "Push-to-talk dictation for macOS with on-device speech recognition"
  homepage "https://github.com/nikolasfaria/mactalk"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "MacTalk.app"

  # The app is ad-hoc signed (not notarized yet), so macOS would block it on first launch.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/MacTalk.app"]
  end

  zap trash: [
    "~/Library/Containers/com.niko.mactalk",
    "~/Library/Preferences/com.niko.mactalk.plist",
  ]
end

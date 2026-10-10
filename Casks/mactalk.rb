cask "mactalk" do
  version "0.1.0"
  sha256 "b0f3b0109fb645caf66fbed596e97870d3799b9e809d6bea075f93581e0d0c19"

  url "https://github.com/nikolasfaria/mactalk/releases/download/v#{version}/MacTalk-#{version}.dmg"
  name "MacTalk"
  desc "Push-to-talk dictation with on-device speech recognition"
  homepage "https://github.com/nikolasfaria/mactalk"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacTalk.app"

  zap trash: [
    "~/Library/Containers/com.niko.mactalk",
    "~/Library/Preferences/com.niko.mactalk.plist",
  ]

  caveats <<~EOS
    MacTalk is not notarized yet. If macOS blocks it on first launch, right-click the app
    and choose Open, or run:

      xattr -dr com.apple.quarantine /Applications/MacTalk.app

    Grant Microphone when asked. Accessibility is optional (it enables auto-paste).
  EOS
end

cask "mactalk" do
  version "0.1.2"
  sha256 "9a589ab23bf123ac4ab8e8520f5a3a7884443e767054fbf51fd4740eac94ba8d"

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

end

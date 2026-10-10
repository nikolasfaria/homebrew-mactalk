cask "mactalk" do
  version "0.1.0"
  sha256 "bfe98c5fc6e5c3110b12921c8292a3d362ff250962f52a78fec4cc5245f0c612"

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

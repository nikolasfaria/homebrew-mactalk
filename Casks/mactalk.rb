cask "mactalk" do
  version "0.1.1"
  sha256 "b279e29d6338d5f45b79df44f4390d1bc704621302b7c35c2ade3db7d3e86eb0"

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

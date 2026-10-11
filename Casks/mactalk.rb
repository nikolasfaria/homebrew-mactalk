cask "mactalk" do
  version "0.1.5"
  sha256 "a9126b7c09b003d6262d3fe4115b0e43490d5ad610641027960da4f0ca789a51"

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

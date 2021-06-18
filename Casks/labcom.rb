cask "labcom" do
    version "1.3.38.0-macOS-BETA"
    sha256 "869a7afc48975a88baa7e58370b64623cd51395f069b8709c459ad3043302af1"

    url "https://poollab.org/assets/website/download/software/Setup-MacOS.dmg"
    name "LabCom"
    desc "Pool water measurement manager"
    homepage "https://poollab.org/"

    depends_on macos: ">= :el_capitan"

    app "LabCom.app"

    zap trash: [
        '~/Library/Preferences/com.yourcompany.LabCom.plist'
    ]
end
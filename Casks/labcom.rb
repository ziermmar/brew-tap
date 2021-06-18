cask "labcom" do
    version :latest
    sha256 :no_check

    url "https://poollab.org/assets/website/download/software/Setup-MacOS.dmg"
    name "LabCom"
    desc "Pool water measurement manager"
    homepage "https://poollab.org/"

    app "LabCom.app"

    zap trash: [
        '~/Library/Preferences/com.yourcompany.LabCom.plist'
    ]
end
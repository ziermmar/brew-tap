cask "sony-ps-remote-play" do
    version "4.1.0"
    sha256 "bf8b30336aba077535429517d6ce6d97002a45a2f23f4fefa91c506b4937b31f"
  
    url "https://remoteplay.dl.playstation.net/remoteplay/module/mac/RemotePlayInstaller.pkg"
    name "PS Remote Play"
    desc "Application to control your PlayStation 4 and 5"
    homepage "https://remoteplay.dl.playstation.net/remoteplay/"
  
    depends_on macos: ">= :yosemite"
  
    pkg "RemotePlayInstaller.pkg"
  
    uninstall pkgutil: "com.playstation.RemotePlay.pkg"
  
    zap trash: [
      "~/Library/Application Support/Sony Corporation/PS4 Remote Play",
      "~/Library/Application Support/Sony Corporation/PS Remote Play",
      "~/Library/Caches/com.playstation.RemotePlay",
      "~/Library/Cookies/com.playstation.RemotePlay.binarycookies",
      "~/Library/HTTPStorages/com.playstation.RemotePlay.binarycookies",
      "~/Library/Preferences/com.playstation.RemotePlay.plist",
      "~/Library/WebKit/com.playstation.RemotePlay",
    ]
  end
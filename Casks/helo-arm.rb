cask "helo-arm" do
    version "1.6.2"
    sha256 "b1ef0c2c300d7c644f91cfc664bb28b3066b86257984b0407b52dd0e7ed59d0d"
  
    url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}-arm64.dmg",
        verified: "helo.fra1.digitaloceanspaces.com"
    name "HELO"
    desc "Email tester and debugger"
    homepage "https://usehelo.com/"
  
    livecheck do
        url "https://usehelo.com/download/latest/apple-silicon"
        strategy :header_match
    end
  
    auto_updates true
  
    app "HELO.app"
  
    zap trash: [
        "~/Library/Application Support/HELO",
        "~/Library/Logs/HELO",
        "~/Library/Preferences/de.beyondco.helo.plist",
        "~/Library/Saved Application State/de.beyondco.helo.savedState",
    ]
end

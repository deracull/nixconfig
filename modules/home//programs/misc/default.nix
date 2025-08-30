{
  pkgs-24_11,
  unstable,
  user,
  ...
}:
{
  home = {
    homeDirectory = "/home/${user.username}";
    packages = with unstable; [
      vlc
      zapret
      yt-dlp
      wine
      winetricks
      yabridge
      yabridgectl
      discordo
      kdePackages.dolphin
      wayvnc
      helvum
      parsec-bin
      easyeffects
      pavucontrol
      signal-desktop-bin
      ungoogled-chromium
      tor-browser
      abaddon
      anydesk
      flameshot
      rmpc
      mpd-small
      astroterm
      detect-it-easy
      ghidra
      whois
      flatpak
      hollywood
      cava
      tigervnc
      dissent
      mov-cli
      ani-cli
      tt
      (bitwig-studio.override {
        bitwig-studio-unwrapped = bitwig-studio5-unwrapped.override {
          vulkan-loader = pkgs-24_11.vulkan-loader;
        };
      })
   ];
  };
}

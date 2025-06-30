{ unstable, user, ... }:
{
  home = {
    homeDirectory = "/home/${user.username}";
    packages = with unstable; [
      vlc
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
   ];
  };
}

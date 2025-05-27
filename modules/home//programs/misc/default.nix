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
    ];
  };
}

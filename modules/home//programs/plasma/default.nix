{ unstable, desktop, ... }:

let
  enable = desktop.plasma.enable;
in
{
  home.packages = unstable.lib.optionals enable (
    with unstable;
    [
      plasma-panel-colorizer
      kdePackages.krohnkite
      kde-rounded-corners
    ]
  );
  programs.plasma = {
    inherit enable;

    workspace = {
      clickItemTo = "select";
      lookAndFeel = "stylix";
      enableMiddleClickPaste = false;
    };

    hotkeys.commands."launch-kitty" = {
      key = "Meta+Return";
      name = "Launch kitty";
      command = "kitty";
      comment = "Launch kitty's terminal emulator.";
    };

    panels = [
      {
        location = "top";
        hiding = "autohide";
        floating = true;

        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.marginsseparator"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
        ];
      }
      {
        location = "right";
        hiding = "autohide";
        lengthMode = "fit";
        floating = true;

        widgets = [
          "org.kde.plasma.icontasks"
        ];
      }
    ];

    shortcuts = {
      ksmserver."Lock Session" = [
        "Screensaver"
        "Meta+L"
      ];
      navigation."Quit" = "Meta+Q";

      kwin = {
        "Switch Window Down" = "Meta+J";
        "Switch Window Left" = "Meta+H";
        "Switch Window Right" = "Meta+L";
        "Switch Window Up" = "Meta+K";

        "Switch to Desktop 1" = "Meta+1";
        "Switch to Desktop 2" = "Meta+2";
        "Switch to Desktop 3" = "Meta+3";
        "Switch to Desktop 4" = "Meta+4";
        "Switch to Desktop 5" = "Meta+5";
        "Switch to Desktop 6" = "Meta+6";
        "Switch to Desktop 7" = "Meta+7";
        "Switch to Desktop 8" = "Meta+8";
        "Switch to Desktop 9" = "Meta+9";

        "Window to Desktop 1" = "Meta+!";
        "Window to Desktop 2" = "Meta+@";
        "Window to Desktop 3" = "Meta+#";
        "Window to Desktop 4" = "Meta+$";
        "Window to Desktop 5" = "Meta+%";
        "Window to Desktop 6" = "Meta+^";
        "Window to Desktop 7" = "Meta+&";
        "Window to Desktop 8" = "Meta+*";
        "Window to Desktop 9" = "Meta+(";
      };
    };

    configFile = {
      "baloofilerc"."Basic Settings"."Indexing-Enabled" = false;
      "kwinrc"."org.kde.kdecoration2"."ButtonsOnLeft" = "SF";
      "kwinrc"."Desktops" = {
        "Rows" = 1;
        "Number" = {
          value = 3;
          immutable = true;
        };
      };
    };

    krunner = {
      position = "center";
    };
  };
}

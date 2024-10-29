{ config, lib, pkgs, ... }: {

  environment.packages = with pkgs; [
    git
    vim
    fish
  ];

  android-integration = {
    am.enable = true;
    xdg-open.enable = true;
    termux-open.enable = true;
    termux-open-url.enable = true;
    termux-setup-storage.enable = true;
    termux-reload-settings.enable = true;
  };

  environment.motd = '''';

  user.shell = "${pkgs.fish}/bin/fish";

  environment.etcBackupExtension = ".bak";

  system.stateVersion = "24.05";

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  terminal.colors = {
    background = "#1E1E2E";
    foreground = "#CDD6F4";
    cursor = "#F5E0DC";
  };

  time.timeZone = "Asia/Kolkata";
  terminal.font = "./fonts/CaskaydiaCoveNerdFont-Regular.ttf";

  home-manager = {
    config = ./home-manager;
    backupFileExtension = "hm-bak";
    useGlobalPkgs = true;
  };
}

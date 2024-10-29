_: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
    '';
    shellAbbrs = {
      da = "ani-cli";
      dv = "yt-dlp ";
    };
  };
}

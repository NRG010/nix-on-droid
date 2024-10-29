_: {
  programs = {
    mpv = {
      enable = true;
      config = {
        profile = "gpu-hq";
        force-window = true;
        ytdl-format = "bv*[height<=720]+ba/b[height<=720] / wv*+ba/w";
      };
    };
    yt-dlp = {
      enable = true;
      settings = {
        embed-subs = true;
        sub-langs = "english";
        downloader = "aria2c";
        downloader-args = "aria2c:'-c -x8 -s8 -k1M'";
      };
    };
  };
}

{
  lib,
  ...
}:
{

  hardware.bluetooth.enable = true;

  #AUDIO
  #jack, pulse, real time and compatibility
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true; # professional setting
  };

  #low latency for jack
  services.pipewire.extraConfig.pipewire."92-low-latency" = {
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.quantum" = 128;
      "default.clock.min-quantum" = 64;
      "default.clock.max-quantum" = 512;
    };
  };

  #latency and clients
  services.pipewire.extraConfig.pipewire-pulse."92-low-latency" = {
    "pulse.properties" = {
      "pulse.min.req" = "64/48000";
      "pulse.default.req" = "64/48000";
      "pulse.max.req" = "128/48000";
    };
  };

  #locale
  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "us";

  #NETWORK
  #network
  networking.hostName = "kinni"; # Define hostname.

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.wifi.powersave = false;
  networking.networkmanager.enable = true;

  #firewall
  networking.firewall.enable = true;
  services.networkd-dispatcher = {
    enable = false;

  };

  #NIX-SETTINGS
  nix.settings = lib.mkDefault {
    auto-optimise-store = true;
    cores = 0;
    max-jobs = "auto";
    sandbox = true;
  };
  programs.nh = {
    enable = true;
    clean.enable = true;
  };
  #flake and home dir
  environment.variables.NH_FLAKE = "/pure";
  environment.variables.NH_OS_FLAKE = "/pure";
  environment.variables.NH_HOME_FLAKE = "/pure";

  #POWER SESSION

  services.tlp = lib.mkDefault {
    enable = true;
    settings = {
      START_CHARGE_THRESH_BAT0 = 40;
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      CPU_HWP_DYN_BOOST_ON_AC = 1;
      CPU_HWP_DYN_BOOST_ON_BAT = 1;
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";
      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "balanced_power";
      STOP_CHARGE_THRESH_BAT0 = 80;
      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 30;
    };
  };

  services.power-profiles-daemon.enable = false;

  #powerManagement = {
  #  enable = true;
  #  cpuFreqGovernor = "ondemand";
  #  cpufreq.max = null;
  #  cpufreq.min = null;
  #};

  #user area
  users.users.nakko = {
    isNormalUser = true;
    description = "nakko";
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
    ];

    #packages = with pkgs; [
    #];
  };
}

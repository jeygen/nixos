# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:
{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      
      # Import Home Manager's NixOS module
      <home-manager/nixos>
    ];

  # Use the systemd-boot EFI boot loader.
  #boot.loader.systemd-boot.enable = true;
  #boot.loader.efi.canTouchEfiVariables = true;

  # encrypted boot
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
    };
    initrd.luks.devices.cryptroot.device = "/dev/disk/by-uuid/8692e03c-a833-4d41-8e52-c673b54b296b";
  };

  # nameservers
  # networking.nameservers = [ "8.8.8.8" "8.8.4.4" ];

  # s2idle 'modern standby' just kills the battery, fw update has fixed this, s3 not in fw at all anyways
  # boot.kernelParams = [ "acpi_sleep=s3_bios,s3_mode" "mem_sleep_default=deep"]; 

 # Enable Home Manager's global and user packages
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;

  # Configure Home Manager for user 'josh'
  home-manager.users.josh = { pkgs, ... }: { 
	home.username = "josh";
	home.homeDirectory = "/home/josh";
	home.stateVersion = "24.05";
	programs.home-manager.enable = true;
    # Home Manager configurations for user 'josh'
    # Enable and configure Neovim
programs.neovim = {
  enable = true;
  
  # Use luaConfig instead of extraConfig for Lua settings
  extraConfig = ''
  set number
  syntax on
  set expandtab shiftwidth=2 tabstop=2
  set mouse=a
  set ignorecase smartcase
  set undofile
  set noswapfile nobackup
  set lazyredraw
  set synmaxcol=240
  '';
  
  # Optional: Create a vim alias to nvim
  # vimAlias = true;
};


  };

#  # keep debugs for dmesg during suspend to debug
#  boot.kernelParams = [ "no_console_suspend" ];


  # printer
  # Enable CUPS and printer services
  services.printing = {
    enable = true;
    drivers = [ pkgs.brlaser pkgs.hplip ];  # Brother printer drivers
    browsing = true;  # Enable network printer discovery
    listenAddresses = [ "localhost" ];  # Listen on localhost
  };

#usb
services.gvfs.enable = true;
services.udisks2.enable = true;

  # trezor
  services.trezord.enable = true;

  # fw
  # services.fwupd.enable = true;
  # this doesn't work, but serial number is PF53PB5X
  # use this to find iso on lenovo site

  # why is firefox using this? disabling
  #services.speech-dispatcher.enable = false;

#  #mysql db ############333
#  services.mysql = {
#    enable = true;
#    package = pkgs.mariadb;
#    initialScript = /home/josh/python_projects/cps714/lab8_db/create_tables.sql;
##    settings.mysqld = ''
##      [mysqld]
##      bind-address = 127.0.0.1
##      default-authentication-plugin = mysql_native_password
##      # Additional configurations...
##    '';
#    dataDir = "/var/lib/mysql";
#    initialDatabases = [{
#        name = "ecofix_portal_db";
#    }];
#  };
  


  networking.hostName = "nixos"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
   networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # add tmu wifi cert
  security.pki.certificates = [
    "/etc/ssl/custom_certs/tmu_cert.crt"
  ];

  # flake
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  # setting hibernate here, hibernate seems broken on nix, currently sleeps
  #systemd.sleep.extraConfig = ''
  #	HandleLidSwitch=hibernate
  #	HandleLidSwitchExternalPower=suspend
  #'';
# configuration.nix

# no worky  systemd.services.networkmanager-resume = {
# no worky    description = "Restart NetworkManager after resume";
# no worky    after = [ "hibernate.target" ];
# no worky    serviceConfig = {
# no worky      Type = "oneshot";
# no worky      ExecStart = "${pkgs.systemd}/bin/systemctl restart NetworkManager";
# no worky    };
# no worky    wantedBy = [ "hibernate.target" ];
# no worky  };


  # Set your time zone.
   time.timeZone = "America/Toronto";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";






  # Select internationalisation properties.
   i18n.defaultLocale = "en_US.UTF-8";
  console = {
#     font = "Lat2-Terminus16";
     keyMap = "us";
#     useXkbConfig = true; # use xkb.options in tty.
   };

  # x11 and i3
	  # Enable the X11 windowing system.
	   services.xserver.enable = true;
	  # Configure keymap in X11
	   services.xserver.xkb.layout = "us";
	   services.xserver.xkb.options = "terminate:ctrl_alt_bksp";
	  # display manager, this works but not needed
#	  services.xserver.displayManager.lightdm.greeters.slick = {
#      enable = true;
#      #draw-user-backgrounds = true;
#      font = {
#        name = "FiraCode Nerd Font";
#      };
#      extraConfig = ''
#        background = /home/josh/screenshots/wallpaper_1.png
#     '' ;
#    };


    # invert trackpad
    services.libinput = {
      enable = true;
      touchpad = {
        naturalScrolling = true;
      };
    };

	  # i3
	   services.xserver.windowManager.i3.enable = true;

	  # try and fix usbc monitor support
# this didn't help	  services.xserver.videoDrivers = [ "amdgpu" ];
# need for discord
	  nixpkgs.config.allowUnfree = true;
# this didn't help	  hardware.enableAllFirmware = true;
# this didn't help
    # add rule for auto monitor detect, works with autorandr # this needs to be looked into more, throwing error
#  services.udev.extraRules = ''
#    SUBSYSTEM=="drm", ACTION=="change", RUN+="/run/current-system/sw/bin/autorandr --change"
#  '';
#
  #	hardware.opengl = {
  #	  enable = true;
  #	  driSupport = true;
  #	  driSupport32Bit = false;
  #	  extraPackages = with pkgs; [ amdgpu-pro ];
  #	};


  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound. audio.
   hardware.pulseaudio.enable = true;
   hardware.pulseaudio.extraConfig = ''
     load-module module-switch-on-connect
   '';

  # OR
  # services.pipewire = {
  #   enable = true;
  #   pulse.enable = true;
  # };

  # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.josh = {
     isNormalUser = true;
     extraGroups = [ "wheel" "networkmanager" "lp" ]; # Enable ‘sudo’ for the user.
     home = "/home/josh";
     # set with root access passwd instead # hashedPassword = "$6$DiE34X4uF5p59kI3$xKUmPkt3PTYstFRRUoU.O/kKEwSNkkc6n.SthOJVQt7s.YdWEqUQ4TQqYfUrUUHJvOVKFkmhrWnUb6WuIvk0Y1";
   };

  # aliases
  environment.shellAliases = { 
		ll = "ls -lah";
		nflake = "nix run neovim-flake/#nix";
    git_amc = "git add . && git commit -m \"update todo\" && git push";
    nv = "nvim";
};




#fileSystems."/" = {
 # device = "/dev/volgroup0/root";
#  fsType = "ext4";
#}
#fileSystems."/home" = {
#  device = "/dev/volgroup0/home";
#  fsType = "ext4";
#}
#fileSystems."/boot/efi" = {
#  device = "/dev/nvme0n1p1";
#  fsType = "vfat";
#}
#fileSystems."/boot" = {
#  device = "/dev/nvme0n1p2";
#  fsType = "ext4";
#}
#swapDevices - [
# { device = "/dev/volgroup0/swap"; }
#]

# fonts
fonts.fontDir.enable = true;
fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
  noto-fonts
  noto-fonts-cjk
  noto-fonts-emoji
  liberation_ttf
  fira-code
  fira-code-symbols
  mplus-outline-fonts.githubRelease
  dina-font
  proggyfonts
];


#  # Set system-wide font configurations
  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = [ "FiraCode Nerd Font" ];
      sansSerif = [ "FiraCode Nerd Font" ];
      monospace = [ "FiraCode Nerd Font" ];
    };
  };


  # nur
   nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchGit {
      url = "https://github.com/nix-community/NUR.git";
      ref = "master"; # Or a specific commit for more stability
    }) { inherit pkgs; };

    inherit (pkgs.nur) simplelogin; # Inherit simplelogin directly
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
   environment.systemPackages = with pkgs; [
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     wget
     curl
     tmux
     neovim
     bat
     mdcat
     p7zip
     lsof
     gnumake
     gcc
     bc
     tkdiff
     meld
 
     #fwupd # fw updates, doesn't work
     



     tigervnc
 
     firefox
     opera
 
     alacritty
     whois
     i3status
     dmenu # menu launcher
     feh # background
     flameshot # screenshots TODO add to i3 bindings

     pavucontrol #  gui for audio
     pamixer # cli mixer for pulse audio

     brightnessctl # screen light
     autorandr
     libnotify
     xorg.libxcvt # should do this in a more nix way
     usbutils

     lm_sensors
     powertop

     cups # printer
     brlaser
     hplip

     git
     xclip
     htop
     networkmanagerapplet

     discord

     verilog
     gtkwave

     wireshark
     #mysql-workbench

     trezord
     trezor-suite
     tree
   ];

   # System-wide Firefox configuration

# System-wide Firefox configuration

programs.firefox = {
  enable = true;
 # package = pkgs.firefox.overrideAttrs (oldAttrs: {
 #   extraConfig = ''
 #     user_pref("extensions.installedDistroAddon.{ec8085f0-c6da-4b91-948a-ead810c9faa5}", "ublock0@raymondhill.net");
 #     user_pref("extensions.installedDistroAddon.{3edc7225-b428-4475-8167-18349079f97c}", "simplelogin@simplelogin.io");
 #   '';
 #   buildInputs = oldAttrs.buildInputs ++ [
 #     pkgs.nur.repos.rycee.firefox-addons.ublock-origin
 #     pkgs.nur.repos.simplelogin.firefox-addons.simplelogin
 #   ];
 # });
};




# power management
services.tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        #CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
        CPU_SCALING_GOVERNOR_ON_BAT = "conservative";

        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
        #CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_BAT = "conservative";

        CPU_MIN_PERF_ON_AC = 0;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 0;
        CPU_MAX_PERF_ON_BAT = 20;

       #Optional helps save long term battery health
       START_CHARGE_THRESH_BAT0 = 79; # 40 and bellow it starts to charge
       STOP_CHARGE_THRESH_BAT0 = 85; # 80 and above it stops charging

      };
};

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
   programs.mtr.enable = true;
   programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
   };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
   services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
   networking.firewall.enable = false;

# need home manager for this, using symlink to rook for now  # vim
# need home manager for this, using symlink to rook for now  # Add vimrc configuration
# need home manager for this, using symlink to rook for nowprograms.vim = {
# need home manager for this, using symlink to rook for now  #enable = true;
# need home manager for this, using symlink to rook for now  #viAlias = true;
# need home manager for this, using symlink to rook for now  extraConfig = ''
# need home manager for this, using symlink to rook for now    set number
# need home manager for this, using symlink to rook for now    syntax on
# need home manager for this, using symlink to rook for now    set tabstop=2
# need home manager for this, using symlink to rook for now    set shiftwidth=2
# need home manager for this, using symlink to rook for now    set expandtab
# need home manager for this, using symlink to rook for now    set incsearch
# need home manager for this, using symlink to rook for now    set hlsearch
# need home manager for this, using symlink to rook for now  '';
# need home manager for this, using symlink to rook for now};

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.05"; # Did you read the comment?

}




{
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default = with nixpkgs.legacyPackages.x86_64-linux; appimageTools.wrapType2 { 
      name = "kubernetic";
      src = fetchurl {
        url = "https://kubernetic.s3.amazonaws.com/Kubernetic-4.4.0.AppImage";
        hash = "sha256-Q5UJAiLijfCV/RKSwIHZZGUs/jFUPCubvggEhKnkRSE=";
      };
    };
  };
}

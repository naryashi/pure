{
  ...
}:
{
  fileSystems = {
    "/".options = [
      "compress=zstd"
      "noatime"
    ];
    "/home".options = [
      "compress=zstd"
      "noatime"
    ];
    
  };
  
}

{
  ...
}:
{
  users.users.emi.group = "emi";

  users.groups.emi = { };

  users.users.emi = {
    isNormalUser = true;
    description = "emi";
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
    ];
  };
}

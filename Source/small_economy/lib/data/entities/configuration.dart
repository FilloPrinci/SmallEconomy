class Configuration {
  String? configurationId;
  int? dataType;
  bool? crypted;
  String? value;
  String? rowVersion;

  //#region Constructors

  Configuration({
    this.configurationId,
    this.dataType,
    this.crypted,
    this.value,
    this.rowVersion,
  });

  //#endregion

  factory Configuration.fromJson(Map<String, dynamic> json) => Configuration(
        configurationId: json["configurationId"],
        dataType: json["dataType"],
        crypted: json["crypted"],
        value: json["value"],
        rowVersion: json["rowVersion"],
      );

  Map<String, dynamic> toJson() => {
        "configurationId": configurationId,
        "dataType": dataType,
        "crypted": crypted,
        "value": value,
        "rowVersion": rowVersion,
      };
}

class Translation {
  String? translationId;
  String? value;

  //#region Constructors

  Translation({this.translationId, this.value});

  //#endregion

  Translation.fromJson(Map<String, dynamic> json) {
    translationId = json['translationId'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['translationId'] = translationId;
    data['value'] = value;
    return data;
  }
}

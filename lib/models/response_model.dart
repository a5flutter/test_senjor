class ResponseModel {
  // bool ok;
  Map <String, dynamic> result;
  String error;

  ResponseModel({this.result, this.error});

  ResponseModel.fromJson(Map<String, dynamic> json) {
    // ok = json['ok'] as bool;
    result = json['result'] as Map <String, dynamic>;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = result;
    data['error'] = error;
    return data;
  }
}

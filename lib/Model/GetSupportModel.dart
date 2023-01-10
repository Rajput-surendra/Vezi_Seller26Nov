/// error : false
/// message : "faqs fetched successfully"
/// data : [{"id":"1","question":"G","answer":"V","status":"0"},{"id":"2","question":"What is Lorem Ipsum?","answer":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum","status":"1"},{"id":"3","question":"Where can I get some?","answer":"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.","status":"1"},{"id":"4","question":"Where I can rise support ticket?","answer":"Navigate to Account profile, and then select Customer Support and then create!","status":"1"}]
/// supports : "support@vezi.global"

class GetSupportModel {
  GetSupportModel({
      bool? error, 
      String? message, 
      List<Data>? data, 
      String? supports,}){
    _error = error;
    _message = message;
    _data = data;
    _supports = supports;
}

  GetSupportModel.fromJson(dynamic json) {
    _error = json['error'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _supports = json['supports'];
  }
  bool? _error;
  String? _message;
  List<Data>? _data;
  String? _supports;
GetSupportModel copyWith({  bool? error,
  String? message,
  List<Data>? data,
  String? supports,
}) => GetSupportModel(  error: error ?? _error,
  message: message ?? _message,
  data: data ?? _data,
  supports: supports ?? _supports,
);
  bool? get error => _error;
  String? get message => _message;
  List<Data>? get data => _data;
  String? get supports => _supports;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = _error;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['supports'] = _supports;
    return map;
  }

}

/// id : "1"
/// question : "G"
/// answer : "V"
/// status : "0"

class Data {
  Data({
      String? id, 
      String? question, 
      String? answer, 
      String? status,}){
    _id = id;
    _question = question;
    _answer = answer;
    _status = status;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _question = json['question'];
    _answer = json['answer'];
    _status = json['status'];
  }
  String? _id;
  String? _question;
  String? _answer;
  String? _status;
Data copyWith({  String? id,
  String? question,
  String? answer,
  String? status,
}) => Data(  id: id ?? _id,
  question: question ?? _question,
  answer: answer ?? _answer,
  status: status ?? _status,
);
  String? get id => _id;
  String? get question => _question;
  String? get answer => _answer;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['question'] = _question;
    map['answer'] = _answer;
    map['status'] = _status;
    return map;
  }

}
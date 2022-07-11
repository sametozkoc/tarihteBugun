// ignore_for_file: unnecessary_getters_setters

class Tarihte {
  bool? _success;
  String? _status;
  String? _pagecreatedate;
  List<Tarihtebugun>? _tarihtebugun;

  Tarihte(
      {bool? success,
      String? status,
      String? pagecreatedate,
      List<Tarihtebugun>? tarihtebugun}) {
    if (success != null) {
      _success = success;
    }
    if (status != null) {
      _status = status;
    }
    if (pagecreatedate != null) {
      _pagecreatedate = pagecreatedate;
    }
    if (tarihtebugun != null) {
      _tarihtebugun = tarihtebugun;
    }
  }

  bool? get success => _success;
  set success(bool? success) => _success = success;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get pagecreatedate => _pagecreatedate;
  set pagecreatedate(String? pagecreatedate) =>
      _pagecreatedate = pagecreatedate;
  List<Tarihtebugun>? get tarihtebugun => _tarihtebugun;
  set tarihtebugun(List<Tarihtebugun>? tarihtebugun) =>
      _tarihtebugun = tarihtebugun;

  Tarihte.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _status = json['status'];
    _pagecreatedate = json['pagecreatedate'];
    if (json['tarihtebugun'] != null) {
      _tarihtebugun = <Tarihtebugun>[];
      json['tarihtebugun'].forEach((v) {
        _tarihtebugun!.add(Tarihtebugun.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = _success;
    data['status'] = _status;
    data['pagecreatedate'] = _pagecreatedate;
    if (_tarihtebugun != null) {
      data['tarihtebugun'] =
          _tarihtebugun!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tarihtebugun {
  String? _gun;
  String? _ay;
  String? _yil;
  String? _durum;
  String? _olay;

  Tarihtebugun(
      {String? gun, String? ay, String? yil, String? durum, String? olay}) {
    if (gun != null) {
      _gun = gun;
    }
    if (ay != null) {
      _ay = ay;
    }
    if (yil != null) {
      _yil = yil;
    }
    if (durum != null) {
      _durum = durum;
    }
    if (olay != null) {
      _olay = olay;
    }
  }

  String? get gun => _gun;
  set gun(String? gun) => _gun = gun;
  String? get ay => _ay;
  set ay(String? ay) => _ay = ay;
  String? get yil => _yil;
  set yil(String? yil) => _yil = yil;
  String? get durum => _durum;
  set durum(String? durum) => _durum = durum;
  String? get olay => _olay;
  set olay(String? olay) => _olay = olay;

  Tarihtebugun.fromJson(Map<String, dynamic> json) {
    _gun = json['Gun'];
    _ay = json['Ay'];
    _yil = json['Yil'];
    _durum = json['Durum'];
    _olay = json['Olay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Gun'] = _gun;
    data['Ay'] = _ay;
    data['Yil'] = _yil;
    data['Durum'] = _durum;
    data['Olay'] = _olay;
    return data;
  }
}
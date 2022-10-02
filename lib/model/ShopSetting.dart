class ShopSetting {
  String? FullName;
  String? Street;
  String? Street2;
  String? Street3;
  String? Zip;
  String? AccountName;
  String? RoutingNumber;
  String? AccountNumber;


  ShopSetting({this.FullName, this.Street, this.Street2, this.Street3,this.Zip,this.AccountName,this.RoutingNumber,this.AccountNumber});

  // receiving data from server
  factory ShopSetting.fromMap(map) {
    return ShopSetting(
      FullName: map['FullName'],
      Street: map['Street'],
      Street2: map['Street2'],
      Street3: map['Street3'],
      Zip: map['Zip'],
      AccountName: map['AccountName'],
      RoutingNumber: map['RoutingNumber'],
      AccountNumber: map['AccountNumber'],

    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'FullName': FullName,
      'Street': Street,
      'Street2': Street2,
      'Street3': Street3,
      'Zip': Zip,
      'AccountName': AccountName,
      'RoutingNumber': RoutingNumber,
      'AccountNumber': AccountNumber,
    };
  }
}

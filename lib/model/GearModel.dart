class GearModel {
  String? Brand;
  String? Model;
  String? Finish;
  String? Year;
  String? Description;
  String? Price;


  GearModel({this.Brand, this.Model, this.Finish, this.Year,this.Description,this.Price});

  // receiving data from server
  factory GearModel.fromMap(map) {
    return GearModel(
      Brand: map['Brand'],
      Model: map['Model'],
      Finish: map['Finish'],
      Year: map['Year'],
      Description: map['Description'],
      Price: map['Price'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'Brand': Brand,
      'Model': Model,
      'Finish': Finish,
      'Year': Year,
      'Description': Description,
      'Price': Price,
    };
  }
}

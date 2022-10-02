class RentYourGearModel {
  String? Brand;
  String? Model;
  String? Finish;
  String? Year;
  String? Description;
  String? PriceDaily;
  String? PriceWeekly;
  String? PriceMonthly;


  RentYourGearModel({this.Brand, this.Model, this.Finish, this.Year,this.Description,this.PriceDaily,this.PriceWeekly,this.PriceMonthly});

  // receiving data from server
  factory RentYourGearModel.fromMap(map) {
    return RentYourGearModel(
      Brand: map['Brand'],
      Model: map['Model'],
      Finish: map['Finish'],
      Year: map['Year'],
      Description: map['Description'],
      PriceDaily: map['PriceDaily'],
      PriceWeekly: map['PriceWeekly'],
      PriceMonthly: map['PriceMonthly'],

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
      'PriceDaily': PriceDaily,
      'PriceWeekly': PriceWeekly,
      'PriceMonthly': PriceMonthly,
    };
  }
}

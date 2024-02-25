import 'package:hive/hive.dart';

// part 'linkestan_models.g.dart';

@HiveType(typeId: 1)
class VisitCard {
  VisitCard(
    this.imageFrontVisitCard,
    this.imageBackVisitCard,
    this.visitCardName,
    this.visitCardPhone,
    this.visitCardEmail,
    this.visitCardAddress,
    this.visitCardServices,
  );

  @HiveField(0)
  var imageFrontVisitCard;

  @HiveField(1)
  var imageBackVisitCard;

  @HiveField(2)
  var visitCardName;

  @HiveField(3)
  var visitCardPhone;

  @HiveField(4)
  var visitCardEmail;

  @HiveField(5)
  var visitCardAddress;

  @HiveField(6)
  var visitCardServices;
}

@HiveType(typeId: 2)
class Contacts {
  Contacts(
    this.nameContacts,
    this.phoneNumberContacts,
  );
  @HiveField(0)
  var nameContacts;

  @HiveField(1)
  var phoneNumberContacts;
}

@HiveType(typeId: 3)
class Websites {
  Websites(
    this.website_name,
    this.url,
    this.description_websites,
  );
  @HiveField(0)
  var website_name;
  @HiveField(1)
  var url;

  @HiveField(3)
  var description_websites;
}

@HiveType(typeId: 4)
class Notes {
  Notes(
    this.title,
    this.description_notes,
  );
  @HiveField(0)
  var title;
  @HiveField(1)
  var description_notes;
}

@HiveType(typeId: 5)
class LogIn {
  LogIn(
    this.username,
    this.password,
  );
  @HiveField(0)
  var username;
  @HiveField(1)
  var password;
}

@HiveType(typeId: 6)
class SignUp {
  SignUp(
    this.image_signup,
    this.full_name,
    this.phone,
    this.email,
    this.password,
    this.repeat_password,
  );
  @HiveField(0)
  var image_signup;
  @HiveField(1)
  var full_name;
  @HiveField(2)
  var phone;
  @HiveField(3)
  var email;
  @HiveField(4)
  var password;
  @HiveField(5)
  var repeat_password;
}
// flutter packages pub run build_runner build
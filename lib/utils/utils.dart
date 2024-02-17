import 'dart:math';


var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  Random _rnd = Random();
  String? UniqueID;




UniqueIdGenerator() async {
    Random random = await new Random();
    int randomNumber = await random.nextInt(1000000); //it gives random number

    String getRandomString(int length) =>
        String.fromCharCodes(Iterable.generate(
            length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
    UniqueID = await '${randomNumber}${getRandomString(10)}';
}
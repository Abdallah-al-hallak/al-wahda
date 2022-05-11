import 'package:appwrite_renew/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

saveUser(String? id) async {
  final pref = await SharedPreferences.getInstance();
  await pref.setString(SharedConst.userID, id ?? '');
}

getUser() async {
  final pref = await SharedPreferences.getInstance();
  String? id = pref.getString(
    SharedConst.userID,
  );
  return id;
}

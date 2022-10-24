import 'package:flutter/cupertino.dart';
import 'package:untitled/shared/helpers/NavigateByName_helper.dart';

import '../../../shared/data/DAOS/User_DAO.dart';

class HomeBloc {
  late final UserDao userDao = UserDao();

  Future<void> turnOf({required BuildContext context}) async {
    await userDao.delete();
    navigateByName(context: context, routeName: '/initial-screen');
  }
}
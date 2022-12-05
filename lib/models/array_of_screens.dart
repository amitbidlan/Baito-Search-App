import 'package:baito_search_app/models/details_screen.dart';

class ListofScreens {
  late List screenlist = [
    DetailedScreen(),
    DetailedScreen(),
    DetailedScreen(),
    DetailedScreen(),
    DetailedScreen(),
  ];
  getscreenlistItem(int i) {
    return screenlist[i];
  }
}

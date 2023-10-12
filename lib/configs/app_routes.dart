import 'package:go_router/go_router.dart';
import 'package:todo_app/screens/home_screen.dart';

var router = GoRouter(routes: [
  GoRoute(
    path: '/', //default screen when opening app
    builder: (context, state) =>
        HomeScreen(),
   ) //removed constructor property. Should be const, when we start developing with forms and backend.
  //add other paths and routes to builders here
]);

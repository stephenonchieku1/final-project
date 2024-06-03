class AppRouter {

  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}
class Routers {
    static AppRouter loginpage =AppRouter(name: "/login", path: "/login");
     static AppRouter signuppage =AppRouter(name: "/signup", path: "/signup");
static AppRouter newpassword =
      AppRouter(name: "/newpassword", path: "/newpassword");



}
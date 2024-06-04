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
     static AppRouter signup =AppRouter(name: "/signup", path: "/signup");
static AppRouter newpassword =
      AppRouter(name: "/newpassword", path: "/newpassword");
static AppRouter otpverification =
      AppRouter(name: "/otpverification", path: "/otpverification");
static AppRouter passwordchanges =
      AppRouter(name: "/passwordchanges", path: "/passwordchanges");

}
import 'package:get/get.dart';
import 'package:taskmanagementapp/app/modules/Chat/binding.dart';
import 'package:taskmanagementapp/app/modules/Chat/page.dart';
import 'package:taskmanagementapp/app/modules/CreateAccount/binding.dart';
import 'package:taskmanagementapp/app/modules/CreateAccount/page.dart';
import 'package:taskmanagementapp/app/modules/CreateNewTask/binding.dart';
import 'package:taskmanagementapp/app/modules/CreateNewTask/page.dart';
import 'package:taskmanagementapp/app/modules/Home/binding.dart';
import 'package:taskmanagementapp/app/modules/Home/page.dart';
import 'package:taskmanagementapp/app/modules/Messages/binding.dart';
import 'package:taskmanagementapp/app/modules/Messages/page.dart';
import 'package:taskmanagementapp/app/modules/NewMessage/binding.dart';
import 'package:taskmanagementapp/app/modules/NewMessage/page.dart';
import 'package:taskmanagementapp/app/modules/Profile/binding.dart';
import 'package:taskmanagementapp/app/modules/Profile/page.dart';
import 'package:taskmanagementapp/app/modules/Schedule/binding.dart';
import 'package:taskmanagementapp/app/modules/Schedule/page.dart';
import 'package:taskmanagementapp/app/modules/SignIn/binding.dart';
import 'package:taskmanagementapp/app/modules/SignIn/page.dart';
import 'package:taskmanagementapp/app/modules/Splash/binding.dart';
import 'package:taskmanagementapp/app/modules/Splash/page.dart';
import 'package:taskmanagementapp/app/modules/TaskDetails/binding.dart';
import 'package:taskmanagementapp/app/modules/TaskDetails/page.dart';
import 'package:taskmanagementapp/app/widgets/pages.dart';

part './app_routes.dart';

class AppPages {
  const AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.Splash;

  static final pages = [
    // Middleware
    GetPage(
      name: Routes.Global,
      page: () => GlobalPage(),
    ),
    GetPage(
      name: Routes.Splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.SignIn,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.CreateAccount,
      page: () => const CreateAccountPage(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: Routes.TaskDetails,
      page: () => const TaskDetailsPage(),
      binding: TaskDetailsBinding(),
    ),
    GetPage(
      name: Routes.Chat,
      page: () => const ChatPage(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: Routes.NewMessage,
      page: () => const NewMessagePage(),
      binding: NewMessageBinding(),
    ),
    GetPage(
      name: Routes.Messages,
      page: () => const MessagesPage(),
      binding: MessagesBinding(),
    ),
    GetPage(
      name: Routes.CreateNewTask,
      page: () => const CreateNewTaskPage(),
      binding: CreateNewTaskBinding(),
    ),
    GetPage(
      name: Routes.Profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.Home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.Schedule,
      page: () => SchedulePage(),
      binding: ScheduleBinding(),
    ),
  ];
}

import 'package:caly/Core/Routing/routes.dart';
import 'package:caly/Features/Home/presentaion/view/home_view.dart';
import 'package:caly/Features/Login/presentation/view/forgot_password_view.dart';
import 'package:caly/Features/Login/presentation/view/login_view.dart';
import 'package:caly/Features/Login/presentation/view/password_changed_view.dart';
import 'package:caly/Features/Login/presentation/view/reset_password_view.dart';
import 'package:caly/Features/Onboarding/onboarding_view.dart';
import 'package:caly/Features/Signup/presentation/view/signup_view.dart';
import 'package:caly/Features/Signup/presentation/view/verify_email_view.dart';
import 'package:caly/Features/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Create_Plan/presentation/view/create_plan_view.dart';

class AppRouter {
  static List<GoRoute> routes = [
    //splash Screen
    GoRoute(
      path: Routes.kSplashView,
      builder: (context, state) => SplashView(),
    ),
    //onboarding Screen
    GoRoute(
      path: Routes.kOnboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    //signup Screen
    GoRoute(
      path: Routes.kSignup,
      builder: (context, state) => SignupView(),
    ),
    //login Screen
      GoRoute(
        path: Routes.kLoginView,
        builder: (context, state) => LoginView(),
      ),
    //verify email Screen
    GoRoute(
      path: Routes.kVerifyEmail,
      builder: (context, state)  {
        final extra = state.extra as Map<String,dynamic>?;
        final isVerify = extra?['isVerify'] ?? false;
        return VerifyEmailView(isVerify: isVerify,);
      },
    ),
    //create plan Screen
    GoRoute(
      path: Routes.kCreatePlan,
      builder: (context, state) => const CreatePlanView(),
    ),
    //forgot password Screen
    GoRoute(
      path: Routes.kForgotPasswordView,
      builder: (context, state) => const ForgotPasswordView(),
    ),
    //reset password Screen
    GoRoute(
      path: Routes.kResetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
    //Changed password Screen
    GoRoute(
      path: Routes.kPasswordChangedView,
      builder: (context, state) => const PasswordChangedView(),
    ),
    //Home Screen
    GoRoute(
      path: Routes.kHomeView,
      builder: (context, state) => const HomeView(),
    ),

  ];

  static GoRouter router = GoRouter(routes: routes);
}

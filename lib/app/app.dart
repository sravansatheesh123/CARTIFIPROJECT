import 'package:cartifi/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:cartifi/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:cartifi/ui/views/login_signup/login_signup_view.dart';
import 'package:cartifi/ui/views/login/login_view.dart';
import 'package:cartifi/ui/views/singup/singup_view.dart';
import 'package:cartifi/ui/views/startupget/startupget_view.dart';
import 'package:cartifi/ui/views/homepage/homepage_view.dart';
import 'package:cartifi/ui/views/favourite/favourite_view.dart';
import 'package:cartifi/ui/views/shopping/shopping_view.dart';
import 'package:cartifi/ui/views/account/account_view.dart';
import 'package:cartifi/ui/views/dashboard/dashboard_view.dart';

import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:cartifi/ui/views/search/search_view.dart';
import 'package:cartifi/ui/views/shirts/shirts_view.dart';
import 'package:cartifi/ui/views/category/category_view.dart';
import 'package:cartifi/ui/views/popular/popular_view.dart';
import 'package:cartifi/ui/views/arrivals/arrivals_view.dart';
import 'package:cartifi/ui/views/product/product_view.dart';
import 'package:cartifi/ui/views/checkoutpage/checkoutpage_view.dart';
import 'package:cartifi/ui/views/payment/payment_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginSignupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SingupView),
    MaterialRoute(page: StartupgetView),
    MaterialRoute(page: HomepageView),
    MaterialRoute(page: FavouriteView),
    MaterialRoute(page: ShoppingView),
    MaterialRoute(page: AccountView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: ShirtsView),
    MaterialRoute(page: CategoryView),
    MaterialRoute(page: PopularView),
    MaterialRoute(page: ArrivalsView),
    MaterialRoute(page: ProductView),
    MaterialRoute(page: CheckoutpageView),
    MaterialRoute(page: PaymentView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    // StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}

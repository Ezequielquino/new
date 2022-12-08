import 'package:app_gestion_camaroneras/app/routes/routes_name.dart';
import 'package:app_gestion_camaroneras/app/ui/views/assignments/assignments_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/assignments/assignments_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/assignments_detail/assignments_detail_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/assignments_detail/assignments_detail_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/create_ticket_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/create_ticket/create_ticket_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/home/home_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/home/home_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/listado_tickets/ticket_list_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/listado_tickets/ticket_list_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/login/login_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/login/login_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu/menu_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/menu/menu_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/recover_password/recover_password_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/recover_password/recover_password_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/swimming_pool_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/swimming_pool/swimming_pool_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_view.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket_detail/ticket_detail_binding.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket_detail/ticket_detail_view.dart';
import 'package:get/get.dart';

abstract class RoutesView {
  static final views = [
    GetPage(
      name: RoutesName.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RoutesName.RECOVERPASSWORD,
      page: () => const RecoverPasswordView(),
      binding: RecoverPasswordBinding(),
    ),
    GetPage(
      name: RoutesName.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RoutesName.MENU,
      page: () => const MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: RoutesName.TICKET,
      page: () => const TicketView(),
      binding: TicketBinding(),
    ),
    GetPage(
      name: RoutesName.CREATETICKET,
      page: () => const CreateTiketsView(),
      binding: CrearTiketsViewBinding(),
    ),
    GetPage(
      name: RoutesName.SWIMMINGPOOL,
      page: () => const SwimmingPoolView(),
      binding: SwimmingPoolBinding(),
    ),
    GetPage(
      name: RoutesName.TICKETDETAIL,
      page: () => const TicketDetailView(),
      binding: TicketDetailBinding(),
    ),
    GetPage(
      name: RoutesName.ASSIGNMENTS,
      page: () => const AssignmentsView(),
      binding: AssignmentsBinding(),
    ),
    GetPage(
      name: RoutesName.ASSIGNMENTSDETAIL,
      page: () => const AssignmentsDetailView(),
      binding: AssignmentsDetailBinding(),
    ),
    GetPage(
      name: RoutesName.TICKETSLIST,
      page: () => const TicketListView(),
      binding: TicketListBinding(),
    ),
  ];
}

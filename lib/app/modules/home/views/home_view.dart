import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:waterdrink/app/modules/home/views/items.dart';
import 'package:waterdrink/app/modules/home/views/userinfo_bar.dart';
import 'package:waterdrink/app/routes/app_pages.dart';
import 'package:waterdrink/themes/appcolor.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          addRepaintBoundaries: true,
          children: [
            UserInfobar(),

            /// COMMANDES
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'COMMANDES',
                style: TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            _ordergridview(),
            Divider(),

            /// PRODUITS
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'PRODUITS',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _productgridview(),
            Divider(),

            /// DEPENSES
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'MES DEPENSES',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _expendituregridview(),
            Divider(),

            /// RAPPORTS
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'RAPPORTS DETAILLÉS',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _reportgridview(),
            Divider(),

            /// CLIENTS
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'CLIENTS',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _customergridview(),
            Divider(),

            /// EMPLOYEES
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'EMPLOYÉES',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _employeegridview(),
            Divider(),

            /// ROLES
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'ROLES DES UTILISATEUR',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _rolegridview(),
            Divider(),

            /// REGLAGES
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'REGLAGES ET SECURITES',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _settinggridview(),
            Divider(),

            /// AIDES
            const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  'AIDES ET AUTRES',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            _helpgridview(),
            Divider(),
          ],
        ),
      ),
    );
  }

  /// orders
  GridView _ordergridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.ORDER_ADD);
          },
          color: Colors.amber.shade900,
          title: "nouvelles",
          icon: Icons.add,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.ORDER_DELIVERED);
          },
          color: Colors.amber.shade800,
          title: "livrées",
          icon: Icons.check,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.ORDER_PENDING);
          },
          color: Colors.amber.shade600,
          title: "en cours",
          icon: Icons.pending,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.ORDER);
          },
          color: Colors.amber.shade500,
          title: "lister",
          icon: Icons.shopping_cart,
        ),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.ORDER_DAILY);
            },
            color: Colors.amber.shade400,
            title: "aujourd'hui",
            icon: Icons.today_outlined),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.ORDER_WEEK);
            },
            color: Colors.amber.shade300,
            title: "semaine",
            icon: Icons.view_week_outlined),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.ORDER_MONTH);
            },
            color: Colors.amber.shade200,
            title: "mois",
            icon: Icons.calendar_view_month),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.ORDER_YEARLY);
            },
            color: Colors.amber.shade100,
            title: "année",
            icon: Icons.calendar_today_outlined),
      ],
    );
  }

  /// products
  GridView _productgridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.PRODUCT_ADD);
          },
          color: Colors.indigo.shade600,
          title: "ajouter",
          icon: Icons.add,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.PRODUCT);
          },
          color: Colors.indigo.shade400,
          title: "lister",
          icon: Icons.group,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.PRODUCT_CATEGORY_ADD);
          },
          color: Colors.indigo.shade200,
          title: "new catégo",
          icon: Icons.add_business,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.PRODUCT_CATEGORY);
          },
          color: Colors.indigo.shade50,
          title: "catégorie",
          icon: Icons.business_center,
        ),
      ],
    );
  }

  /// roles
  GridView _rolegridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.ROLE_ADD);
          },
          color: Colors.cyan.shade600,
          title: "nouveau",
          icon: Icons.group_add,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.ROLE);
          },
          color: Colors.cyan.shade400,
          title: "roles",
          icon: Icons.add_reaction,
        ),
      ],
    );
  }

  /// employees
  GridView _employeegridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.EMPLOYEE_ADD);
          },
          color: Colors.teal.shade600,
          title: "nouveau",
          icon: Icons.add_circle,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.EMPLOYEE);
          },
          color: Colors.teal.shade400,
          title: "lister",
          icon: Icons.group,
        ),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.EMPLOYEE_BLOCKED);
            },
            color: Colors.teal.shade200,
            title: "bloqués",
            icon: Icons.dangerous_outlined),
      ],
    );
  }

  /// settings
  GridView _settinggridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.SETTING);
          },
          color: Colors.orange.shade800,
          title: "modules",
          icon: Icons.unarchive,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.SETTING_NOTIFICATION);
          },
          color: Colors.orange.shade600,
          title: "notifications",
          icon: Icons.notifications,
        ),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.SETTING_SECURITY);
            },
            color: Colors.orange.shade400,
            title: "securite",
            icon: Icons.security),
      ],
    );
  }

  /// customer
  GridView _customergridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.CUSTOMER_ADD);
          },
          color: Colors.pink.shade900,
          title: "ajouter",
          icon: Icons.add_circle,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.CUSTOMER);
          },
          color: Colors.pink.shade700,
          title: "lister",
          icon: Icons.list_sharp,
        ),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.CUSTOMER_ALERTED);
            },
            color: Colors.pink.shade500,
            title: "en alerte",
            icon: Icons.input),
      ],
    );
  }

  /// expenditure
  GridView _expendituregridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.EXPENDITURE_ADD);
          },
          color: Colors.blue.shade900,
          title: "ajouter",
          icon: Icons.add_box,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.EXPENDITURE);
          },
          color: Colors.blue.shade700,
          title: "lister",
          icon: Icons.list,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.EXPENDITURE_DAILY);
          },
          color: Colors.blue.shade500,
          title: "aujourd'hui",
          icon: Icons.calendar_view_day,
        ),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.EXPENDITURE_MONTHLY);
            },
            color: Colors.blue.shade300,
            title: "mois",
            icon: Icons.calendar_view_month),
      ],
    );
  }

  /// report
  GridView _reportgridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.REPORT_DAILY);
          },
          color: Colors.purple.shade900,
          title: "aujourd'hui",
          icon: Icons.calendar_view_day,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.REPORT_WEEKLY);
          },
          color: Colors.purple.shade700,
          title: "semaine",
          icon: Icons.calendar_view_week,
        ),
        GridItems(
            ontap: () {
              Get.toNamed(Routes.REPORT_MONTHLY);
            },
            color: Colors.purple.shade500,
            title: "mois",
            icon: Icons.calendar_view_month),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.REPORT_YEARLY);
          },
          color: Colors.purple.shade300,
          title: "années",
          icon: Icons.view_array,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.REPORT);
          },
          color: Colors.purple.shade100,
          title: "tous",
          icon: Icons.grid_3x3_sharp,
        ),
      ],
    );
  }

  /// help
  GridView _helpgridview() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        GridItems(
          ontap: () {
            Get.toNamed(Routes.HELP);
          },
          color: Colors.grey.shade900,
          title: "Aide",
          icon: Icons.help,
        ),
        GridItems(
          ontap: () {
            Get.toNamed(Routes.OTHERS);
          },
          color: Colors.grey.shade700,
          title: 'Autres',
          icon: Icons.question_answer,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:journeyapp/screens/dashboard/dashboard_screens/agro-tours/agro-tours.dart';
import 'package:journeyapp/screens/dashboard/dashboard_screens/events/events.dart';
import 'package:journeyapp/screens/dashboard/dashboard_screens/offers/offers.dart';
import 'package:journeyapp/screens/dashboard/dashboard_screens/profile/profile.dart';

class TabNavigationItem {
  final Widget page;

  TabNavigationItem({
    this.page,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: OffersScreen(),
        ),
        TabNavigationItem(
          page: EventsScreen(),
        ),
        TabNavigationItem(
          page: AgroToursScreen(),
        ),
        TabNavigationItem(
          page: ProfileScreen(),
        ),
      ];
}

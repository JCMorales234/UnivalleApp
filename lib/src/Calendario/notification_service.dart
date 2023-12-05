import "package:awesome_notifications/awesome_notifications.dart";
import "package:flutter/material.dart";

class notificationservice {
  static Future<void> initializeNotification() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelGroupKey: "high_importance_channel",
          channelKey: "high_importance_channel",
          channelName: "basic notifications",
          channelDescription: "Notification channel for basic test",
          defaultColor: Colors.white,
          ledColor: const Color.fromARGB(192, 255, 6, 6),
          importance: NotificationImportance.Max,
          channelShowBadge: true,
          onlyAlertOnce: true,
          playSound: true,
          criticalAlerts: true,
        ),
      ],
      channelGroups: [
        NotificationChannelGroup(
            channelGroupKey: "high_importance_channel_group",
            channelGroupName: "Group 1")
      ],
      debug: true,
    );

    await AwesomeNotifications()
        .isNotificationAllowed()
        .then((isallowed) async {
      if (!isallowed) {
        await AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });

    await AwesomeNotifications().setListeners(
        onActionReceivedMethod: onActionReceivedMethod,
        onNotificationCreatedMethod: onNotificationCreatedMethod,
        onNotificationDisplayedMethod: onNotificationDisplayedMethod,
        onDismissActionReceivedMethod: onDismissActionReceivedMethod);
  }

  // para saber cuando se crea una notificacion
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {
    debugPrint("onNotificationCreatedMethod");
  }

  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    debugPrint("onNotificationDisplayedMethod");
  }

  static Future<void> onDismissActionReceivedMethod(
      ReceivedNotification receivedNotification) async {
    debugPrint("onDismissActionReceivedMethod");
  }

  static Future<void> onActionReceivedMethod(
      ReceivedNotification receivedNotification) async {
    debugPrint("onActionReceivedMethod");
    final payload = ReceivedAction().payload ?? {};

    if (payload["navigate"] == "true") {
      // pendiente
    }
  }

  static Future<void> shownotification(
      {required final String title,
      required final String body,
      final String? summary,
      final Map<String, String>? payload,
      final ActionType actionType = ActionType.Default,
      final NotificationLayout notificationLayout = NotificationLayout.Default,
      final NotificationCategory? category,
      final String? bigpicture,
      final List<NotificationActionButton>? actionbuttons,
      final bool scheduled = false,
      final int? interval,
      final int? yearnoti,
      final int? mes,
      final int? dia,
      final int? horanoti,
      final int? minutonoti}) async {
    assert(!scheduled || (scheduled && yearnoti != null));

    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: -1,
          channelKey: "high_importance_channel",
          title: title,
          body: body,
          actionType: actionType,
          notificationLayout: notificationLayout,
          summary: summary,
          category: category,
          payload: payload,
          bigPicture: bigpicture,
        ),
        actionButtons: actionbuttons,
        schedule: scheduled
            ? NotificationCalendar(
                year: yearnoti,
                month: mes,
                day: dia,
                hour: horanoti,
                minute: minutonoti,
                timeZone:
                    await AwesomeNotifications().getLocalTimeZoneIdentifier(),
                preciseAlarm: true)
            : null);
  }
}

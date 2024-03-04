package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationManagerCompat;
import androidx.fragment.app.Fragment;
/* loaded from: classes3.dex */
public class NotificationsUtils {
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";

    public static boolean isNotificationEnabled(Context context) {
        return NotificationManagerCompat.from(context).areNotificationsEnabled();
    }

    public static void requestNotify(Fragment fragment) {
        if (fragment.getContext() == null) {
            return;
        }
        Intent intent = new Intent();
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 26) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", fragment.getContext().getPackageName());
        } else if (i9 < 26) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("app_package", fragment.getContext().getPackageName());
            intent.putExtra("app_uid", fragment.getContext().getApplicationInfo().uid);
        } else {
            intent.addFlags(268435456);
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", fragment.getContext().getPackageName(), null));
        }
        fragment.startActivityForResult(intent, EventTrackingUtils.EVENT_TRACKING_RESULT_CODE);
    }
}

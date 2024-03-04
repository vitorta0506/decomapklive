package com.google.android.exoplayer2.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.StringRes;
import com.huawei.hms.push.constant.RemoteMessageConst;
/* loaded from: classes2.dex */
public final class z {
    public static void a(Context context, String str, @StringRes int i9, @StringRes int i10, int i11) {
        if (l0.f6985a >= 26) {
            NotificationManager notificationManager = (NotificationManager) a.e((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION));
            NotificationChannel notificationChannel = new NotificationChannel(str, context.getString(i9), i11);
            if (i10 != 0) {
                notificationChannel.setDescription(context.getString(i10));
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }
}

package com.meizu.cloud.pushsdk.notification.b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import com.meizu.cloud.pushsdk.notification.PushNotificationBuilder;
import com.meizu.cloud.pushsdk.util.MinSdkChecker;
/* loaded from: classes4.dex */
public class b extends c {
    public b(Context context, PushNotificationBuilder pushNotificationBuilder) {
        super(context, pushNotificationBuilder);
    }

    @Override // com.meizu.cloud.pushsdk.notification.a
    protected void a(Notification notification, MessageV3 messageV3, PendingIntent pendingIntent) {
        if (MinSdkChecker.isSupportNotificationBuild()) {
            RemoteViews remoteViews = new RemoteViews(this.f28731a.getPackageName(), com.meizu.cloud.pushsdk.notification.c.c.b(this.f28731a));
            remoteViews.setTextViewText(com.meizu.cloud.pushsdk.notification.c.c.d(this.f28731a), messageV3.getTitle());
            remoteViews.setLong(com.meizu.cloud.pushsdk.notification.c.c.f(this.f28731a), "setTime", System.currentTimeMillis());
            a(remoteViews, messageV3);
            if (messageV3.getNotificationStyle() != null && !TextUtils.isEmpty(messageV3.getNotificationStyle().getExpandableText())) {
                remoteViews.setViewVisibility(com.meizu.cloud.pushsdk.notification.c.c.h(this.f28731a), 0);
                remoteViews.setTextViewText(com.meizu.cloud.pushsdk.notification.c.c.h(this.f28731a), messageV3.getNotificationStyle().getExpandableText());
            }
            notification.bigContentView = remoteViews;
        }
    }
}

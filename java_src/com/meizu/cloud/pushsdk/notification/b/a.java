package com.meizu.cloud.pushsdk.notification.b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import com.meizu.cloud.pushsdk.notification.PushNotificationBuilder;
import com.meizu.cloud.pushsdk.util.MinSdkChecker;
/* loaded from: classes4.dex */
public class a extends c {
    public a(Context context, PushNotificationBuilder pushNotificationBuilder) {
        super(context, pushNotificationBuilder);
    }

    private void b(RemoteViews remoteViews, MessageV3 messageV3) {
        Bitmap a10;
        if (messageV3.getNotificationStyle() == null || a()) {
            return;
        }
        if (TextUtils.isEmpty(messageV3.getNotificationStyle().getExpandableImageUrl()) || (a10 = a(messageV3.getNotificationStyle().getExpandableImageUrl())) == null) {
            remoteViews.setViewVisibility(com.meizu.cloud.pushsdk.notification.c.c.g(this.f28731a), 8);
            return;
        }
        remoteViews.setViewVisibility(com.meizu.cloud.pushsdk.notification.c.c.g(this.f28731a), 0);
        remoteViews.setImageViewBitmap(com.meizu.cloud.pushsdk.notification.c.c.g(this.f28731a), a10);
    }

    @Override // com.meizu.cloud.pushsdk.notification.a
    protected void a(Notification notification, MessageV3 messageV3, PendingIntent pendingIntent) {
        if (MinSdkChecker.isSupportNotificationBuild()) {
            RemoteViews remoteViews = new RemoteViews(this.f28731a.getPackageName(), com.meizu.cloud.pushsdk.notification.c.c.a(this.f28731a));
            remoteViews.setTextViewText(com.meizu.cloud.pushsdk.notification.c.c.d(this.f28731a), messageV3.getTitle());
            remoteViews.setTextViewText(com.meizu.cloud.pushsdk.notification.c.c.e(this.f28731a), messageV3.getContent());
            remoteViews.setLong(com.meizu.cloud.pushsdk.notification.c.c.f(this.f28731a), "setTime", System.currentTimeMillis());
            a(remoteViews, messageV3);
            b(remoteViews, messageV3);
            notification.bigContentView = remoteViews;
        }
    }
}

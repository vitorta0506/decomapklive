package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes5.dex */
class v0 extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ NotificationClickedActivity f36299a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(NotificationClickedActivity notificationClickedActivity) {
        this.f36299a = notificationClickedActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        tf.c.s("clicked activity finish by normal.");
        this.f36299a.finish();
    }
}

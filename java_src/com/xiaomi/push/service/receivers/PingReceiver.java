package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.push.n0;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.e0;
import tf.c;
/* loaded from: classes5.dex */
public class PingReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        c.t(intent.getPackage() + " is the package name");
        if (XMPushService.m1529f()) {
            return;
        }
        if (!e0.f37225n.equals(intent.getAction())) {
            c.l("cancel the old ping timer");
            n0.a();
        } else if (TextUtils.equals(context.getPackageName(), intent.getPackage())) {
            c.t("Ping XMChannelService on timer");
            try {
                Intent intent2 = new Intent(context, XMPushService.class);
                intent2.putExtra("time_stamp", System.currentTimeMillis());
                intent2.setAction("com.xiaomi.push.timer");
                com.xiaomi.push.service.a.h(context).i(intent2);
            } catch (Exception e10) {
                c.o(e10);
            }
        }
    }
}

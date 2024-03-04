package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.mipush.sdk.am;
import com.xiaomi.mipush.sdk.b;
import com.xiaomi.mipush.sdk.f;
import com.xiaomi.mipush.sdk.g;
import com.xiaomi.mipush.sdk.j;
import com.xiaomi.mipush.sdk.n;
import com.xiaomi.mipush.sdk.w;
import com.xiaomi.mipush.sdk.x0;
import com.xiaomi.push.e2;
import com.xiaomi.push.p3;
import tf.c;
/* loaded from: classes5.dex */
public class NetworkStatusReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f37350a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f37351b = true;

    public NetworkStatusReceiver() {
    }

    public NetworkStatusReceiver(Object obj) {
        f37350a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        if (!w.h(context).H() && n.c(context).s() && !n.c(context).y()) {
            try {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(context, "com.xiaomi.push.service.XMPushService"));
                intent.setAction("com.xiaomi.push.network_status_changed");
                com.xiaomi.push.service.a.h(context).i(intent);
            } catch (Exception e10) {
                c.o(e10);
            }
        }
        e2.h(context);
        if (p3.m(context) && w.h(context).N()) {
            w.h(context).P();
        }
        if (p3.m(context)) {
            if ("syncing".equals(x0.b(context).c(am.DISABLE_PUSH))) {
                j.s(context);
            }
            if ("syncing".equals(x0.b(context).c(am.ENABLE_PUSH))) {
                j.t(context);
            }
            if ("syncing".equals(x0.b(context).c(am.UPLOAD_HUAWEI_TOKEN))) {
                j.h0(context);
            }
            if ("syncing".equals(x0.b(context).c(am.UPLOAD_FCM_TOKEN))) {
                j.f0(context);
            }
            if ("syncing".equals(x0.b(context).c(am.UPLOAD_COS_TOKEN))) {
                j.e0(context);
            }
            if ("syncing".equals(x0.b(context).c(am.UPLOAD_FTOS_TOKEN))) {
                j.g0(context);
            }
            if (g.a() && g.d(context)) {
                g.c(context);
                g.b(context);
            }
            b.a(context);
            f.b(context);
        }
    }

    public static boolean a() {
        return f37350a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f37351b) {
            return;
        }
        sf.f.c().post(new a(this, context));
    }
}

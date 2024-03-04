package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.cz;
import com.xiaomi.push.df;
import com.xiaomi.push.dq;
import com.xiaomi.push.dt;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class p0 {

    /* renamed from: b  reason: collision with root package name */
    private static volatile p0 f36282b;

    /* renamed from: a  reason: collision with root package name */
    private final Context f36283a;

    private p0(Context context) {
        this.f36283a = context.getApplicationContext();
    }

    private static p0 a(Context context) {
        if (f36282b == null) {
            synchronized (p0.class) {
                if (f36282b == null) {
                    f36282b = new p0(context);
                }
            }
        }
        return f36282b;
    }

    public static void b(Context context, dq dqVar) {
        a(context).d(dqVar, 0, true);
    }

    public static void c(Context context, dq dqVar, boolean z10) {
        a(context).d(dqVar, 1, z10);
    }

    private void d(dq dqVar, int i9, boolean z10) {
        if (sf.e.i(this.f36283a) || !sf.e.h() || dqVar == null || dqVar.f160a != cz.SendMessage || dqVar.m1455a() == null || !z10) {
            return;
        }
        tf.c.l("click to start activity result:" + String.valueOf(i9));
        dt dtVar = new dt(dqVar.m1455a().m1424a(), false);
        dtVar.c(df.SDK_START_ACTIVITY.f42a);
        dtVar.b(dqVar.m1456a());
        dtVar.d(dqVar.f167b);
        HashMap hashMap = new HashMap();
        dtVar.f179a = hashMap;
        hashMap.put("result", String.valueOf(i9));
        w.h(this.f36283a).B(dtVar, cz.Notification, false, false, null, true, dqVar.f167b, dqVar.f163a, true, false);
    }

    public static void e(Context context, dq dqVar, boolean z10) {
        a(context).d(dqVar, 2, z10);
    }

    public static void f(Context context, dq dqVar, boolean z10) {
        a(context).d(dqVar, 3, z10);
    }

    public static void g(Context context, dq dqVar, boolean z10) {
        a(context).d(dqVar, 4, z10);
    }

    public static void h(Context context, dq dqVar, boolean z10) {
        p0 a10;
        int i9;
        n c10 = n.c(context);
        if (TextUtils.isEmpty(c10.q()) || TextUtils.isEmpty(c10.t())) {
            a10 = a(context);
            i9 = 6;
        } else {
            boolean y10 = c10.y();
            a10 = a(context);
            i9 = y10 ? 7 : 5;
        }
        a10.d(dqVar, i9, z10);
    }
}

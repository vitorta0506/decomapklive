package com.xiaomi.push.service;

import com.xiaomi.push.cz;
import com.xiaomi.push.dt;
import com.xiaomi.push.f3;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public class a0 extends f3.a {

    /* renamed from: a  reason: collision with root package name */
    private dt f37132a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<XMPushService> f37133b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37134c;

    public a0(dt dtVar, WeakReference<XMPushService> weakReference, boolean z10) {
        this.f37132a = dtVar;
        this.f37133b = weakReference;
        this.f37134c = z10;
    }

    @Override // com.xiaomi.push.f3.a
    public String b() {
        return "22";
    }

    @Override // java.lang.Runnable
    public void run() {
        XMPushService xMPushService;
        WeakReference<XMPushService> weakReference = this.f37133b;
        if (weakReference == null || this.f37132a == null || (xMPushService = weakReference.get()) == null) {
            return;
        }
        this.f37132a.a(x.a());
        this.f37132a.a(false);
        tf.c.t("MoleInfo aw_ping : send aw_Ping msg " + this.f37132a.m1470a());
        try {
            String c10 = this.f37132a.c();
            xMPushService.a(c10, com.xiaomi.push.h2.d(f.d(c10, this.f37132a.b(), this.f37132a, cz.Notification)), this.f37134c);
        } catch (Exception e10) {
            tf.c.u("MoleInfo aw_ping : send help app ping error" + e10.toString());
        }
    }
}

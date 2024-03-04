package com.xiaomi.push.service;

import com.xiaomi.push.q3;
/* loaded from: classes5.dex */
class d1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f37207a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(XMPushService xMPushService) {
        this.f37207a = xMPushService;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f37207a.f350a = true;
        try {
            tf.c.l("try to trigger the wifi digest broadcast.");
            Object systemService = this.f37207a.getApplicationContext().getSystemService("MiuiWifiService");
            if (systemService != null) {
                q3.n(systemService, "sendCurrentWifiDigestInfo", new Object[0]);
            }
        } catch (Throwable unused) {
        }
    }
}

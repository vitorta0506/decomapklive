package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class j0 {

    /* renamed from: f  reason: collision with root package name */
    private static int f37280f = 300000;

    /* renamed from: a  reason: collision with root package name */
    private XMPushService f37281a;

    /* renamed from: d  reason: collision with root package name */
    private int f37284d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f37285e = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f37282b = 500;

    /* renamed from: c  reason: collision with root package name */
    private long f37283c = 0;

    public j0(XMPushService xMPushService) {
        this.f37281a = xMPushService;
    }

    private int a() {
        if (this.f37284d > 8) {
            return 300000;
        }
        double random = (Math.random() * 2.0d) + 1.0d;
        int i9 = this.f37284d;
        if (i9 > 4) {
            return (int) (random * 60000.0d);
        }
        if (i9 > 1) {
            return (int) (random * 10000.0d);
        }
        if (this.f37283c == 0) {
            return 0;
        }
        if (System.currentTimeMillis() - this.f37283c >= 310000) {
            this.f37282b = 1000;
            this.f37285e = 0;
            return 0;
        }
        int i10 = this.f37282b;
        int i11 = f37280f;
        if (i10 >= i11) {
            return i10;
        }
        int i12 = this.f37285e + 1;
        this.f37285e = i12;
        if (i12 >= 4) {
            return i11;
        }
        this.f37282b = (int) (i10 * 1.5d);
        return i10;
    }

    public void b() {
        this.f37283c = System.currentTimeMillis();
        this.f37281a.a(1);
        this.f37284d = 0;
    }

    public void c(boolean z10) {
        if (!this.f37281a.m1540b()) {
            tf.c.t("should not reconnect as no client or network.");
        } else if (z10) {
            if (!this.f37281a.m1537a(1)) {
                this.f37284d++;
            }
            this.f37281a.a(1);
            XMPushService xMPushService = this.f37281a;
            xMPushService.getClass();
            xMPushService.a(new XMPushService.e());
        } else if (this.f37281a.m1537a(1)) {
        } else {
            int a10 = a();
            this.f37284d++;
            tf.c.l("schedule reconnect in " + a10 + "ms");
            XMPushService xMPushService2 = this.f37281a;
            xMPushService2.getClass();
            xMPushService2.a(new XMPushService.e(), (long) a10);
            if (this.f37284d == 2) {
                l.c();
            }
            if (this.f37284d == 3) {
                l.b();
            }
        }
    }
}

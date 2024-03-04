package com.huawei.hms.hatool;

import android.content.Context;
/* loaded from: classes4.dex */
public final class h1 {

    /* renamed from: b  reason: collision with root package name */
    public static h1 f27467b;

    /* renamed from: c  reason: collision with root package name */
    public static final Object f27468c = new Object();

    /* renamed from: a  reason: collision with root package name */
    public Context f27469a;

    public static h1 a() {
        if (f27467b == null) {
            b();
        }
        return f27467b;
    }

    public static synchronized void b() {
        synchronized (h1.class) {
            if (f27467b == null) {
                f27467b = new h1();
            }
        }
    }

    public void a(Context context) {
        synchronized (f27468c) {
            if (this.f27469a != null) {
                y.f("hmsSdk", "DataManager already initialized.");
                return;
            }
            this.f27469a = context;
            i.c().b().a(this.f27469a);
            i.c().b().j(context.getPackageName());
            z0.a().a(context);
        }
    }

    public void a(String str) {
        y.c("hmsSdk", "HiAnalyticsDataManager.setAppid(String appid) is execute.");
        Context context = this.f27469a;
        if (context == null) {
            y.e("hmsSdk", "sdk is not init");
            return;
        }
        i.c().b().i(s0.a("appID", str, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}", context.getPackageName()));
    }
}

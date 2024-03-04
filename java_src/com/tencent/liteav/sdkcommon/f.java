package com.tencent.liteav.sdkcommon;
/* loaded from: classes4.dex */
final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f31271a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31272b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31273c;

    private f(DashboardManager dashboardManager, String str, String str2) {
        this.f31271a = dashboardManager;
        this.f31272b = str;
        this.f31273c = str2;
    }

    public static Runnable a(DashboardManager dashboardManager, String str, String str2) {
        return new f(dashboardManager, str, str2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31271a.appendLogInternal(this.f31272b, this.f31273c);
    }
}

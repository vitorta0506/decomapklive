package com.tencent.liteav.sdkcommon;
/* loaded from: classes4.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f31263a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31264b;

    private b(DashboardManager dashboardManager, String str) {
        this.f31263a = dashboardManager;
        this.f31264b = str;
    }

    public static Runnable a(DashboardManager dashboardManager, String str) {
        return new b(dashboardManager, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31263a.addDashboardInternal(this.f31264b);
    }
}

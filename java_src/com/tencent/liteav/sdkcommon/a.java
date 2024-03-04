package com.tencent.liteav.sdkcommon;
/* loaded from: classes4.dex */
final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f31261a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f31262b;

    private a(DashboardManager dashboardManager, boolean z10) {
        this.f31261a = dashboardManager;
        this.f31262b = z10;
    }

    public static Runnable a(DashboardManager dashboardManager, boolean z10) {
        return new a(dashboardManager, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31261a.showDashboardInternal(this.f31262b);
    }
}

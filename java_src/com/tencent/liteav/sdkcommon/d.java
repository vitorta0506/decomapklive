package com.tencent.liteav.sdkcommon;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f31267a;

    private d(DashboardManager dashboardManager) {
        this.f31267a = dashboardManager;
    }

    public static Runnable a(DashboardManager dashboardManager) {
        return new d(dashboardManager);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31267a.removeAllDashboardInternal();
    }
}

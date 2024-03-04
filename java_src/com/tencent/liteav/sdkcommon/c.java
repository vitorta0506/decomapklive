package com.tencent.liteav.sdkcommon;
/* loaded from: classes4.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f31265a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31266b;

    private c(DashboardManager dashboardManager, String str) {
        this.f31265a = dashboardManager;
        this.f31266b = str;
    }

    public static Runnable a(DashboardManager dashboardManager, String str) {
        return new c(dashboardManager, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31265a.removeDashboardInternal(this.f31266b);
    }
}

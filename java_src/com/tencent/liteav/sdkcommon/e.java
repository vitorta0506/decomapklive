package com.tencent.liteav.sdkcommon;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final DashboardManager f31268a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31269b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31270c;

    private e(DashboardManager dashboardManager, String str, String str2) {
        this.f31268a = dashboardManager;
        this.f31269b = str;
        this.f31270c = str2;
    }

    public static Runnable a(DashboardManager dashboardManager, String str, String str2) {
        return new e(dashboardManager, str, str2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31268a.setStatusInternal(this.f31269b, this.f31270c);
    }
}

package com.huawei.hms.push.utils.ha;
/* loaded from: classes4.dex */
public class PushAnalyticsCenter {

    /* renamed from: a  reason: collision with root package name */
    public PushBaseAnalytics f27777a;

    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public static PushAnalyticsCenter f27778a = new PushAnalyticsCenter();
    }

    public static PushAnalyticsCenter getInstance() {
        return a.f27778a;
    }

    public PushBaseAnalytics getPushAnalytics() {
        return this.f27777a;
    }

    public void register(PushBaseAnalytics pushBaseAnalytics) {
        this.f27777a = pushBaseAnalytics;
    }
}

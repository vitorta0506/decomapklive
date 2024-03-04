package com.huawei.hms.aaid.plugin;
/* loaded from: classes4.dex */
public class ProxyCenter {
    public PushProxy proxy;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static ProxyCenter f27174a = new ProxyCenter();
    }

    public static ProxyCenter getInstance() {
        return a.f27174a;
    }

    public static PushProxy getProxy() {
        return getInstance().proxy;
    }

    public static void register(PushProxy pushProxy) {
        getInstance().proxy = pushProxy;
    }
}

package com.huawei.hms.hatool;
/* loaded from: classes4.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public k f27544a;

    /* renamed from: b  reason: collision with root package name */
    public k f27545b;

    /* renamed from: c  reason: collision with root package name */
    public k f27546c;

    /* renamed from: d  reason: collision with root package name */
    public k f27547d;

    public m(String str) {
    }

    public k a() {
        return this.f27546c;
    }

    public k a(String str) {
        if (str.equals("oper")) {
            return c();
        }
        if (str.equals("maint")) {
            return b();
        }
        if (str.equals("diffprivacy")) {
            return a();
        }
        if (str.equals("preins")) {
            return d();
        }
        y.f("hmsSdk", "HiAnalyticsInstData.getConfig(type): wrong type: " + str);
        return null;
    }

    public void a(k kVar) {
        this.f27544a = kVar;
    }

    public k b() {
        return this.f27544a;
    }

    public void b(k kVar) {
        this.f27545b = kVar;
    }

    public k c() {
        return this.f27545b;
    }

    public k d() {
        return this.f27547d;
    }
}

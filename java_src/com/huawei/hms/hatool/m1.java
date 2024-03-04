package com.huawei.hms.hatool;

import android.content.Context;
/* loaded from: classes4.dex */
public class m1 {

    /* renamed from: a  reason: collision with root package name */
    public k f27550a;

    /* renamed from: b  reason: collision with root package name */
    public k f27551b;

    /* renamed from: c  reason: collision with root package name */
    public Context f27552c;

    /* renamed from: d  reason: collision with root package name */
    public String f27553d;

    public m1(Context context) {
        if (context != null) {
            this.f27552c = context.getApplicationContext();
        }
        this.f27550a = new k();
        this.f27551b = new k();
    }

    public m1 a(int i9, String str) {
        k kVar;
        y.c("hmsSdk", "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : " + i9);
        if (!v0.b(str)) {
            str = "";
        }
        if (i9 == 0) {
            kVar = this.f27550a;
        } else if (i9 != 1) {
            y.f("hmsSdk", "Builder.setCollectURL(int type,String collectURL): invalid type!");
            return this;
        } else {
            kVar = this.f27551b;
        }
        kVar.b(str);
        return this;
    }

    public m1 a(String str) {
        y.c("hmsSdk", "Builder.setAppID is execute");
        this.f27553d = str;
        return this;
    }

    @Deprecated
    public m1 a(boolean z10) {
        y.c("hmsSdk", "Builder.setEnableImei(boolean isReportAndroidImei) is execute.");
        this.f27550a.j().a(z10);
        this.f27551b.j().a(z10);
        return this;
    }

    public void a() {
        if (this.f27552c == null) {
            y.b("hmsSdk", "analyticsConf create(): context is null,create failed!");
            return;
        }
        y.c("hmsSdk", "Builder.create() is execute.");
        j1 j1Var = new j1("_hms_config_tag");
        j1Var.b(new k(this.f27550a));
        j1Var.a(new k(this.f27551b));
        h1.a().a(this.f27552c);
        i1.a().a(this.f27552c);
        o1.c().a(j1Var);
        h1.a().a(this.f27553d);
    }

    @Deprecated
    public m1 b(boolean z10) {
        y.c("hmsSdk", "Builder.setEnableSN(boolean isReportSN) is execute.");
        this.f27550a.j().b(z10);
        this.f27551b.j().b(z10);
        return this;
    }

    @Deprecated
    public m1 c(boolean z10) {
        y.c("hmsSdk", "Builder.setEnableUDID(boolean isReportUDID) is execute.");
        this.f27550a.j().c(z10);
        this.f27551b.j().c(z10);
        return this;
    }
}

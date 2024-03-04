package com.google.android.gms.internal.recaptcha;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
/* loaded from: classes2.dex */
public final class w2 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9133a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9134b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9135c = "files";

    /* renamed from: d  reason: collision with root package name */
    private String f9136d = "common";

    /* renamed from: e  reason: collision with root package name */
    private final Account f9137e = x2.f9155b;

    /* renamed from: f  reason: collision with root package name */
    private String f9138f = "";

    /* renamed from: g  reason: collision with root package name */
    private final q8<String> f9139g = zzkj.zzj();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w2(Context context, v2 v2Var) {
        m3.a(context != null, "Context cannot be null", new Object[0]);
        this.f9133a = context;
        this.f9134b = context.getPackageName();
    }

    public final Uri a() {
        return new Uri.Builder().scheme("android").authority(this.f9134b).path(String.format("/%s/%s/%s/%s", this.f9135c, this.f9136d, q2.b(this.f9137e), this.f9138f)).encodedFragment(l3.a(this.f9139g.f())).build();
    }

    public final w2 b(String str) {
        x2.b("recaptcha");
        this.f9136d = "recaptcha";
        return this;
    }

    public final w2 c(String str) {
        int i9 = x2.f9158e;
        this.f9138f = "token.pb";
        return this;
    }
}

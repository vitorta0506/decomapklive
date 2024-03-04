package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.security.CertificateUtil;
/* loaded from: classes2.dex */
public final class w0 {

    /* renamed from: a  reason: collision with root package name */
    private final h4<v1> f9131a;

    /* renamed from: b  reason: collision with root package name */
    private final j1 f9132b;

    @VisibleForTesting
    protected w0(h4<v1> h4Var, j1 j1Var) {
        this.f9131a = h4Var;
        this.f9132b = j1Var;
    }

    public static w0 a(Context context) {
        return new w0(s0.a(context, r0.a(context)), k1.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String e(String str, String str2, v1 v1Var) {
        a2 a2Var = v1Var.x().get(f(str, str2));
        return a2Var == null ? "" : a2Var.w();
    }

    private static String f(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append(CertificateUtil.DELIMITER);
        sb2.append(str2);
        return sb2.toString();
    }

    public final nd<String> b(final String str, final String str2) {
        return dd.j(this.f9131a.d(), new p7() { // from class: com.google.android.gms.internal.recaptcha.t0
            @Override // com.google.android.gms.internal.recaptcha.p7
            public final Object a(Object obj) {
                return w0.e(str, str2, (v1) obj);
            }
        }, ud.b());
    }

    public final /* synthetic */ nd c(String str, String str2, String str3, v1 v1Var) throws Exception {
        s1 o10 = v1Var.o();
        String f10 = f(str, str2);
        z1 t10 = a2.t();
        t10.p(str3);
        t10.o(this.f9132b.zza());
        o10.o(f10, t10.l());
        return dd.f(o10.l());
    }

    public final nd<Void> d(final String str, final String str2, final String str3, String str4) {
        nd<Void> i9 = this.f9131a.i(new dc() { // from class: com.google.android.gms.internal.recaptcha.u0
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                return w0.this.c(str, str2, str3, (v1) obj);
            }
        }, ud.b());
        dd.m(i9, new v0(this, str4, str3, str, str2), p0.f8960b);
        return i9;
    }
}

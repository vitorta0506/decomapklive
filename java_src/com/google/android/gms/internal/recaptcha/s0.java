package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import android.net.Uri;
/* loaded from: classes2.dex */
public final class s0 {
    public static final h4<v1> a(Context context, m4 m4Var) {
        w2 a10 = x2.a(context);
        a10.b("recaptcha");
        a10.c("token.pb");
        Uri a11 = a10.a();
        i4 i9 = j4.i();
        i9.e(a11);
        i9.c(v1.u());
        i9.f(false);
        return m4Var.a(i9.g());
    }
}

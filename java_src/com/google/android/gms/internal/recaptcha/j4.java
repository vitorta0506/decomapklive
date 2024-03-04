package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import com.google.android.gms.internal.recaptcha.gh;
/* loaded from: classes2.dex */
public abstract class j4<T extends gh> {
    public static <T extends gh> i4<T> i() {
        x3 x3Var = new x3();
        x3Var.h(p4.a());
        x3Var.b(s5.a());
        x3Var.d(false);
        x3Var.a(false);
        x3Var.f(true);
        return x3Var;
    }

    public abstract Uri a();

    public abstract z3<T> b();

    public abstract zzkj<b4<T>> c();

    public abstract T d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean e();

    public abstract boolean f();

    public abstract boolean g();

    public abstract p4 h();
}

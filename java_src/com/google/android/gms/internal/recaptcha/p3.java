package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
/* loaded from: classes2.dex */
public final class p3 implements o2<OutputStream> {

    /* renamed from: a  reason: collision with root package name */
    private c3[] f8964a;

    private p3() {
    }

    public static p3 b() {
        return new p3();
    }

    @Override // com.google.android.gms.internal.recaptcha.o2
    public final /* bridge */ /* synthetic */ OutputStream a(n2 n2Var) throws IOException {
        List<OutputStream> d10 = n2Var.d(n2Var.b().e(n2Var.a()));
        c3[] c3VarArr = this.f8964a;
        if (c3VarArr != null) {
            c3VarArr[0].a(d10);
        }
        return d10.get(0);
    }

    public final p3 c(c3... c3VarArr) {
        this.f8964a = c3VarArr;
        return this;
    }
}

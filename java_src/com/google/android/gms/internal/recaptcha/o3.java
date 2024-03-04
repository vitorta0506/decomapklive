package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public final class o3 implements o2<InputStream> {
    private o3() {
    }

    public static o3 b() {
        return new o3();
    }

    public static final InputStream c(n2 n2Var) throws IOException {
        return n2Var.c(n2Var.b().c(n2Var.a())).get(0);
    }

    @Override // com.google.android.gms.internal.recaptcha.o2
    public final /* bridge */ /* synthetic */ InputStream a(n2 n2Var) throws IOException {
        return c(n2Var);
    }
}

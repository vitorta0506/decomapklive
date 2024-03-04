package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y4 extends p5 {

    /* renamed from: a  reason: collision with root package name */
    private static final p5 f9197a = new y4();

    private y4() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ p5 b() {
        return f9197a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.p5
    public final /* bridge */ /* synthetic */ o5 a(j4 j4Var, String str, Executor executor, p2 p2Var, int i9) {
        pf a10;
        if (j4Var.g()) {
            a10 = pf.b();
        } else {
            a10 = pf.a();
        }
        return new z4(str, dd.f(j4Var.a()), v5.c(j4Var.d(), a10), executor, p2Var, j4Var.b(), j4Var.e() ? m6.d() : m6.c());
    }
}

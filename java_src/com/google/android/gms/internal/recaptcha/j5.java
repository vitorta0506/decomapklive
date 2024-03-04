package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j5 implements a4 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ k5 f8770a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j5(k5 k5Var, f5 f5Var) {
        this.f8770a = k5Var;
    }

    @Override // com.google.android.gms.internal.recaptcha.a4
    public final nd<Void> a(final dc dcVar, final Executor executor) {
        m6 m6Var;
        e6 e6Var;
        m6Var = this.f8770a.f8813h;
        m6Var.a();
        e6Var = this.f8770a.f8810e;
        return dd.k(dd.h(e6Var.b()), y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.i5
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                o5 o5Var;
                j5 j5Var = j5.this;
                dc dcVar2 = dcVar;
                Executor executor2 = executor;
                Void r42 = (Void) obj;
                o5Var = j5Var.f8770a.f8808c;
                return o5Var.b(dcVar2, executor2, null);
            }
        }), ud.b());
    }
}

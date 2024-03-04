package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c6<T> extends cb<T> {

    /* renamed from: h  reason: collision with root package name */
    private e6<T> f8554h;

    /* renamed from: i  reason: collision with root package name */
    private final int f8555i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ c6(e6 e6Var, int i9, a6 a6Var) {
        this.f8554h = e6Var;
        this.f8555i = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0006, code lost:
        r0 = com.google.android.gms.internal.recaptcha.e6.a(r0).f8516a;
     */
    @Override // com.google.android.gms.internal.recaptcha.cb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String k() {
        /*
            r6 = this;
            com.google.android.gms.internal.recaptcha.e6<T> r0 = r6.f8554h
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            com.google.android.gms.internal.recaptcha.b6 r0 = com.google.android.gms.internal.recaptcha.e6.a(r0)
            com.google.android.gms.internal.recaptcha.cc r0 = com.google.android.gms.internal.recaptcha.b6.b(r0)
            if (r0 != 0) goto L11
            return r1
        L11:
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r1 = r0.length()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = r1 + 11
            r2.<init>(r1)
            java.lang.String r1 = "callable=["
            r2.append(r1)
            r2.append(r0)
            java.lang.String r0 = "]"
            r2.append(r0)
            java.lang.String r1 = r2.toString()
            com.google.android.gms.internal.recaptcha.e6<T> r2 = r6.f8554h
            java.util.concurrent.atomic.AtomicReference r2 = com.google.android.gms.internal.recaptcha.e6.e(r2)
            java.lang.Object r2 = r2.get()
            com.google.android.gms.internal.recaptcha.d6 r2 = (com.google.android.gms.internal.recaptcha.d6) r2
            if (r2 == 0) goto L6a
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r3 = r1.length()
            int r4 = r2.length()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            int r3 = r3 + 10
            int r3 = r3 + r4
            r5.<init>(r3)
            r5.append(r1)
            java.lang.String r1 = ", trial=["
            r5.append(r1)
            r5.append(r2)
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            return r0
        L6a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.c6.k():java.lang.String");
    }

    @Override // com.google.android.gms.internal.recaptcha.cb
    protected final void l() {
        d6 d6Var;
        int i9;
        e6<T> e6Var = this.f8554h;
        this.f8554h = null;
        if (e6Var != null && e6.g(e6Var)) {
            do {
                d6Var = (d6) e6.e(e6Var).get();
                if (d6Var == null) {
                    return;
                }
                i9 = d6Var.f8589h;
                if (i9 > this.f8555i) {
                    return;
                }
                d6Var.cancel(true);
            } while (!e6.e(e6Var).compareAndSet(d6Var, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.cb
    public final boolean n(nd<? extends T> ndVar) {
        return super.n(ndVar);
    }
}

package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o6 extends h6<u6> implements g6 {

    /* renamed from: e  reason: collision with root package name */
    private final Exception f8937e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f8938f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o6(String str, g6 g6Var, t6 t6Var, boolean z10) {
        super(str, g6Var, t6Var);
        this.f8937e = g6Var.l();
        this.f8938f = z10;
    }

    @Override // com.google.android.gms.internal.recaptcha.g6
    public final Exception l() {
        return this.f8937e;
    }

    @Override // com.google.android.gms.internal.recaptcha.g6
    public final u6 q0(String str, t6 t6Var, boolean z10) {
        if (z10 && !this.f8938f) {
            int i9 = d7.f8598i;
        }
        boolean z11 = true;
        if ((!z10 || this.f8938f) && !this.f8938f) {
            z11 = false;
        }
        return new o6(str, this, t6Var, z11);
    }

    @Override // com.google.android.gms.internal.recaptcha.u6
    public final u6 r1(String str, t6 t6Var) {
        return q0(str, t6Var, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o6(String str, t6 t6Var, boolean z10) {
        super(str, i6.b().c(), t6Var);
        this.f8937e = n6.f8912e;
        this.f8938f = z10;
    }
}

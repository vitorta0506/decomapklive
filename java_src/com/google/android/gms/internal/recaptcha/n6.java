package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n6 extends f6<n6> implements g6 {

    /* renamed from: e  reason: collision with root package name */
    static final zzhu f8912e = new zzhu();

    /* renamed from: d  reason: collision with root package name */
    private final zzhu f8913d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n6() {
        super("", i6.b().c());
        this.f8913d = f8912e;
    }

    @Override // com.google.android.gms.internal.recaptcha.g6
    public final /* bridge */ /* synthetic */ Exception l() {
        return this.f8913d;
    }

    @Override // com.google.android.gms.internal.recaptcha.g6
    public final u6 q0(String str, t6 t6Var, boolean z10) {
        if (z10) {
            int i9 = d7.f8598i;
        }
        return new o6(str, this, t6Var, z10);
    }

    @Override // com.google.android.gms.internal.recaptcha.u6
    public final u6 r1(String str, t6 t6Var) {
        int i9 = d7.f8598i;
        return q0(str, t6Var, true);
    }
}

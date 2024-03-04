package com.google.android.play.core.internal;
/* loaded from: classes2.dex */
public final class h1 implements k1 {

    /* renamed from: a  reason: collision with root package name */
    private k1 f10571a;

    public static void a(k1 k1Var, k1 k1Var2) {
        h1 h1Var = (h1) k1Var;
        if (h1Var.f10571a != null) {
            throw new IllegalStateException();
        }
        h1Var.f10571a = k1Var2;
    }

    @Override // com.google.android.play.core.internal.k1
    public final Object zza() {
        k1 k1Var = this.f10571a;
        if (k1Var != null) {
            return k1Var.zza();
        }
        throw new IllegalStateException();
    }
}

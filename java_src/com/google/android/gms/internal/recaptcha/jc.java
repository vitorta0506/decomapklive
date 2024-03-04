package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class jc<V> extends vb<Object, V> {

    /* renamed from: o  reason: collision with root package name */
    private ic<?> f8778o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jc(zzke<? extends nd<?>> zzkeVar, boolean z10, Executor executor, cc<V> ccVar) {
        super(zzkeVar, z10, false);
        this.f8778o = new gc(this, ccVar, executor);
        j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ ic k0(jc jcVar, ic icVar) {
        jcVar.f8778o = null;
        return null;
    }

    @Override // com.google.android.gms.internal.recaptcha.cb
    protected final void D() {
        ic<?> icVar = this.f8778o;
        if (icVar != null) {
            icVar.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.vb
    public final void Z(int i9) {
        super.Z(i9);
        if (i9 == 1) {
            this.f8778o = null;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.vb
    final void i0() {
        ic<?> icVar = this.f8778o;
        if (icVar != null) {
            icVar.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public jc(zzke<? extends nd<?>> zzkeVar, boolean z10, Executor executor, Callable<V> callable) {
        super(zzkeVar, z10, false);
        this.f8778o = new hc(this, callable, executor);
        j0();
    }
}

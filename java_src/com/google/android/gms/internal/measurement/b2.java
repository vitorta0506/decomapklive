package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ a1 f7954e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ w2 f7955f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b2(w2 w2Var, a1 a1Var) {
        super(w2Var, true);
        this.f7955f = w2Var;
        this.f7954e = a1Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f7955f.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).getCurrentScreenClass(this.f7954e);
    }

    @Override // com.google.android.gms.internal.measurement.l2
    protected final void c() {
        this.f7954e.a(null);
    }
}

package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class z1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ a1 f8452e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ w2 f8453f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z1(w2 w2Var, a1 a1Var) {
        super(w2Var, true);
        this.f8453f = w2Var;
        this.f8452e = a1Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8453f.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).generateEventId(this.f8452e);
    }

    @Override // com.google.android.gms.internal.measurement.l2
    protected final void c() {
        this.f8452e.a(null);
    }
}

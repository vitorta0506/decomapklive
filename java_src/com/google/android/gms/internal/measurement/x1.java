package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class x1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ a1 f8420e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ w2 f8421f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x1(w2 w2Var, a1 a1Var) {
        super(w2Var, true);
        this.f8421f = w2Var;
        this.f8420e = a1Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8421f.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).getGmpAppId(this.f8420e);
    }

    @Override // com.google.android.gms.internal.measurement.l2
    protected final void c() {
        this.f8420e.a(null);
    }
}

package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ m2 f8108e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ w2 f8109f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h2(w2 w2Var, m2 m2Var) {
        super(w2Var, true);
        this.f8109f = w2Var;
        this.f8108e = m2Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8109f.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).registerOnMeasurementEventListener(this.f8108e);
    }
}

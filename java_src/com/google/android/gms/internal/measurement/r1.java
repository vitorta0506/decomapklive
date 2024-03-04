package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8284e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ w2 f8285f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r1(w2 w2Var, String str) {
        super(w2Var, true);
        this.f8285f = w2Var;
        this.f8284e = str;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8285f.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).setUserId(this.f8284e, this.f8175a);
    }
}

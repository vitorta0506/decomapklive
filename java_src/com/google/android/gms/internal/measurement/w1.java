package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class w1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8388e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ w2 f8389f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w1(w2 w2Var, String str) {
        super(w2Var, true);
        this.f8389f = w2Var;
        this.f8388e = str;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8389f.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).endAdUnitExposure(this.f8388e, this.f8176b);
    }
}
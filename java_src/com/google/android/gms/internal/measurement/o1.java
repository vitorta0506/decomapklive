package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Bundle f8233e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ w2 f8234f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(w2 w2Var, Bundle bundle) {
        super(w2Var, true);
        this.f8234f = w2Var;
        this.f8233e = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8234f.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).setConditionalUserProperty(this.f8233e, this.f8175a);
    }
}

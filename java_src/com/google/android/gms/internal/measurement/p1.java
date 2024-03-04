package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8249e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f8250f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Bundle f8251g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ w2 f8252h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p1(w2 w2Var, String str, String str2, Bundle bundle) {
        super(w2Var, true);
        this.f8252h = w2Var;
        this.f8249e = str;
        this.f8250f = str2;
        this.f8251g = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8252h.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).clearConditionalUserProperty(this.f8249e, this.f8250f, this.f8251g);
    }
}

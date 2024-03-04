package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8068e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a1 f8069f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ w2 f8070g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f2(w2 w2Var, String str, a1 a1Var) {
        super(w2Var, true);
        this.f8070g = w2Var;
        this.f8068e = str;
        this.f8069f = a1Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8070g.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).getMaxUserProperties(this.f8068e, this.f8069f);
    }

    @Override // com.google.android.gms.internal.measurement.l2
    protected final void c() {
        this.f8069f.a(null);
    }
}

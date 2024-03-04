package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8270e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f8271f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ a1 f8272g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ w2 f8273h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(w2 w2Var, String str, String str2, a1 a1Var) {
        super(w2Var, true);
        this.f8273h = w2Var;
        this.f8270e = str;
        this.f8271f = str2;
        this.f8272g = a1Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8273h.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).getConditionalUserProperties(this.f8270e, this.f8271f, this.f8272g);
    }

    @Override // com.google.android.gms.internal.measurement.l2
    protected final void c() {
        this.f8272g.a(null);
    }
}

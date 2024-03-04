package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f7991e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f7992f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ boolean f7993g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ a1 f7994h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ w2 f7995i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c2(w2 w2Var, String str, String str2, boolean z10, a1 a1Var) {
        super(w2Var, true);
        this.f7995i = w2Var;
        this.f7991e = str;
        this.f7992f = str2;
        this.f7993g = z10;
        this.f7994h = a1Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f7995i.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).getUserProperties(this.f7991e, this.f7992f, this.f7993g, this.f7994h);
    }

    @Override // com.google.android.gms.internal.measurement.l2
    protected final void c() {
        this.f7994h.a(null);
    }
}

package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8160e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f8161f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ Object f8162g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ boolean f8163h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ w2 f8164i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k2(w2 w2Var, String str, String str2, Object obj, boolean z10) {
        super(w2Var, true);
        this.f8164i = w2Var;
        this.f8160e = str;
        this.f8161f = str2;
        this.f8162g = obj;
        this.f8163h = z10;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8164i.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).setUserProperty(this.f8160e, this.f8161f, h4.b.E0(this.f8162g), this.f8163h, this.f8175a);
    }
}

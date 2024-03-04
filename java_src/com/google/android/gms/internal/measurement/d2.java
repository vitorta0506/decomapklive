package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f8025e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ Object f8026f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ w2 f8027g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d2(w2 w2Var, boolean z10, int i9, String str, Object obj, Object obj2, Object obj3) {
        super(w2Var, false);
        this.f8027g = w2Var;
        this.f8025e = str;
        this.f8026f = obj;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8027g.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).logHealthData(5, this.f8025e, h4.b.E0(this.f8026f), h4.b.E0(null), h4.b.E0(null));
    }
}

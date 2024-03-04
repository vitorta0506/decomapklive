package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class t2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Activity f8331e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ a1 f8332f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ v2 f8333g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t2(v2 v2Var, Activity activity, a1 a1Var) {
        super(v2Var.f8379a, true);
        this.f8333g = v2Var;
        this.f8331e = activity;
        this.f8332f = a1Var;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8333g.f8379a.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).onActivitySaveInstanceState(h4.b.E0(this.f8331e), this.f8332f, this.f8176b);
    }
}

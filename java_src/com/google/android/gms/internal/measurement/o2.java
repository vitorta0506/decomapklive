package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class o2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Activity f8235e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ v2 f8236f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o2(v2 v2Var, Activity activity) {
        super(v2Var.f8379a, true);
        this.f8236f = v2Var;
        this.f8235e = activity;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8236f.f8379a.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).onActivityStarted(h4.b.E0(this.f8235e), this.f8176b);
    }
}

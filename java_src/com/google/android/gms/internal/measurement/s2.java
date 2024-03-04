package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class s2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Activity f8302e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ v2 f8303f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s2(v2 v2Var, Activity activity) {
        super(v2Var.f8379a, true);
        this.f8303f = v2Var;
        this.f8302e = activity;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8303f.f8379a.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).onActivityStopped(h4.b.E0(this.f8302e), this.f8176b);
    }
}

package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class s1 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Activity f8298e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f8299f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ String f8300g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ w2 f8301h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s1(w2 w2Var, Activity activity, String str, String str2) {
        super(w2Var, true);
        this.f8301h = w2Var;
        this.f8298e = activity;
        this.f8299f = str;
        this.f8300g = str2;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        e1Var = this.f8301h.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).setCurrentScreen(h4.b.E0(this.f8298e), this.f8299f, this.f8300g, this.f8175a);
    }
}

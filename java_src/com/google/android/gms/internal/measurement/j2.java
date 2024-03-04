package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j2 extends l2 {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Long f8140e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ String f8141f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ String f8142g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ Bundle f8143h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f8144i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f8145j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ w2 f8146k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j2(w2 w2Var, Long l10, String str, String str2, Bundle bundle, boolean z10, boolean z11) {
        super(w2Var, true);
        this.f8146k = w2Var;
        this.f8140e = l10;
        this.f8141f = str;
        this.f8142g = str2;
        this.f8143h = bundle;
        this.f8144i = z10;
        this.f8145j = z11;
    }

    @Override // com.google.android.gms.internal.measurement.l2
    final void b() throws RemoteException {
        e1 e1Var;
        Long l10 = this.f8140e;
        long longValue = l10 == null ? this.f8175a : l10.longValue();
        e1Var = this.f8146k.f8399i;
        ((e1) com.google.android.gms.common.internal.p.j(e1Var)).logEvent(this.f8141f, this.f8142g, this.f8143h, this.f8144i, this.f8145j, longValue);
    }
}

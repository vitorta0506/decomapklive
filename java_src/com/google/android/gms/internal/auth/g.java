package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class g extends com.google.android.gms.common.internal.f {
    private final Bundle I;

    public g(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, o3.c cVar, v3.c cVar2, v3.h hVar) {
        super(context, looper, 16, eVar, cVar2, hVar);
        this.I = cVar == null ? new Bundle() : cVar.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    public final String B() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String C() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    public final boolean P() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final boolean f() {
        com.google.android.gms.common.internal.e g02 = g0();
        return (TextUtils.isEmpty(g02.b()) || g02.e(o3.b.f55507a).isEmpty()) ? false : true;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int k() {
        return com.google.android.gms.common.d.f7626a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof h ? (h) queryLocalInterface : new h(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Bundle x() {
        return this.I;
    }
}

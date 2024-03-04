package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
public final class g1 extends r0 {

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ d f7742g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public g1(d dVar, @Nullable int i9, Bundle bundle) {
        super(dVar, i9, null);
        this.f7742g = dVar;
    }

    @Override // com.google.android.gms.common.internal.r0
    protected final void f(ConnectionResult connectionResult) {
        if (this.f7742g.q() && d.e0(this.f7742g)) {
            d.a0(this.f7742g, 16);
            return;
        }
        this.f7742g.f7700p.a(connectionResult);
        this.f7742g.I(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.r0
    protected final boolean g() {
        this.f7742g.f7700p.a(ConnectionResult.RESULT_SUCCESS);
        return true;
    }
}

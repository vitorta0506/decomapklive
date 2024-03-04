package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
public final class h extends e0 {

    /* renamed from: f  reason: collision with root package name */
    private final ArraySet f7557f;

    /* renamed from: g  reason: collision with root package name */
    private final c f7558g;

    h(v3.e eVar, c cVar, com.google.android.gms.common.a aVar) {
        super(eVar, aVar);
        this.f7557f = new ArraySet();
        this.f7558g = cVar;
        this.f7503a.i("ConnectionlessLifecycleHelper", this);
    }

    @MainThread
    public static void u(Activity activity, c cVar, v3.b bVar) {
        v3.e c10 = LifecycleCallback.c(activity);
        h hVar = (h) c10.N("ConnectionlessLifecycleHelper", h.class);
        if (hVar == null) {
            hVar = new h(c10, cVar, com.google.android.gms.common.a.m());
        }
        com.google.android.gms.common.internal.p.k(bVar, "ApiKey cannot be null");
        hVar.f7557f.add(bVar);
        cVar.d(hVar);
    }

    private final void v() {
        if (this.f7557f.isEmpty()) {
            return;
        }
        this.f7558g.d(this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void h() {
        super.h();
        v();
    }

    @Override // com.google.android.gms.common.api.internal.e0, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void j() {
        super.j();
        v();
    }

    @Override // com.google.android.gms.common.api.internal.e0, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        super.k();
        this.f7558g.e(this);
    }

    @Override // com.google.android.gms.common.api.internal.e0
    protected final void m(ConnectionResult connectionResult, int i9) {
        this.f7558g.H(connectionResult, i9);
    }

    @Override // com.google.android.gms.common.api.internal.e0
    protected final void n() {
        this.f7558g.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ArraySet t() {
        return this.f7557f;
    }
}

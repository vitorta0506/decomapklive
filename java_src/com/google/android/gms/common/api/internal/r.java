package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.d;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r implements d.c, v3.z {

    /* renamed from: a  reason: collision with root package name */
    private final a.f f7590a;

    /* renamed from: b  reason: collision with root package name */
    private final v3.b f7591b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.gms.common.internal.i f7592c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Set f7593d = null;

    /* renamed from: e  reason: collision with root package name */
    private boolean f7594e = false;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ c f7595f;

    public r(c cVar, a.f fVar, v3.b bVar) {
        this.f7595f = cVar;
        this.f7590a = fVar;
        this.f7591b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void h() {
        com.google.android.gms.common.internal.i iVar;
        if (!this.f7594e || (iVar = this.f7592c) == null) {
            return;
        }
        this.f7590a.i(iVar, this.f7593d);
    }

    @Override // com.google.android.gms.common.internal.d.c
    public final void a(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.f7595f.f7533p;
        handler.post(new q(this, connectionResult));
    }

    @Override // v3.z
    @WorkerThread
    public final void b(@Nullable com.google.android.gms.common.internal.i iVar, @Nullable Set set) {
        if (iVar != null && set != null) {
            this.f7592c = iVar;
            this.f7593d = set;
            h();
            return;
        }
        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
        c(new ConnectionResult(4));
    }

    @Override // v3.z
    @WorkerThread
    public final void c(ConnectionResult connectionResult) {
        Map map;
        map = this.f7595f.f7529l;
        o oVar = (o) map.get(this.f7591b);
        if (oVar != null) {
            oVar.H(connectionResult);
        }
    }
}

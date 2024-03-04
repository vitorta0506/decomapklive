package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class y extends v3.s {

    /* renamed from: b  reason: collision with root package name */
    private final d f7608b;

    /* renamed from: c  reason: collision with root package name */
    private final t4.h f7609c;

    /* renamed from: d  reason: collision with root package name */
    private final v3.k f7610d;

    public y(int i9, d dVar, t4.h hVar, v3.k kVar) {
        super(i9);
        this.f7609c = hVar;
        this.f7608b = dVar;
        this.f7610d = kVar;
        if (i9 == 2 && dVar.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void a(@NonNull Status status) {
        this.f7609c.d(this.f7610d.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void b(@NonNull Exception exc) {
        this.f7609c.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void c(o oVar) throws DeadObjectException {
        try {
            this.f7608b.b(oVar.u(), this.f7609c);
        } catch (DeadObjectException e10) {
            throw e10;
        } catch (RemoteException e11) {
            a(a0.e(e11));
        } catch (RuntimeException e12) {
            this.f7609c.d(e12);
        }
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void d(@NonNull g gVar, boolean z10) {
        gVar.d(this.f7609c, z10);
    }

    @Override // v3.s
    public final boolean f(o oVar) {
        return this.f7608b.c();
    }

    @Override // v3.s
    @Nullable
    public final Feature[] g(o oVar) {
        return this.f7608b.e();
    }
}

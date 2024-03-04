package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
/* loaded from: classes2.dex */
public final class z extends v {

    /* renamed from: c  reason: collision with root package name */
    public final v3.f f7611c;

    public z(v3.f fVar, t4.h hVar) {
        super(4, hVar);
        this.f7611c = fVar;
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final /* bridge */ /* synthetic */ void d(@NonNull g gVar, boolean z10) {
    }

    @Override // v3.s
    public final boolean f(o oVar) {
        if (((v3.w) oVar.w().get(this.f7611c)) == null) {
            return false;
        }
        throw null;
    }

    @Override // v3.s
    @Nullable
    public final Feature[] g(o oVar) {
        if (((v3.w) oVar.w().get(this.f7611c)) == null) {
            return null;
        }
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.v
    public final void h(o oVar) throws RemoteException {
        if (((v3.w) oVar.w().remove(this.f7611c)) == null) {
            this.f7606b.e(Boolean.FALSE);
        } else {
            oVar.u();
            throw null;
        }
    }
}

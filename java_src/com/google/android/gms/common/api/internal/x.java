package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class x extends a0 {

    /* renamed from: b  reason: collision with root package name */
    protected final b f7607b;

    public x(int i9, b bVar) {
        super(i9);
        this.f7607b = (b) com.google.android.gms.common.internal.p.k(bVar, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void a(@NonNull Status status) {
        try {
            this.f7607b.p(status);
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void b(@NonNull Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        try {
            this.f7607b.p(new Status(10, simpleName + ": " + localizedMessage));
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void c(o oVar) throws DeadObjectException {
        try {
            this.f7607b.n(oVar.u());
        } catch (RuntimeException e10) {
            b(e10);
        }
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void d(@NonNull g gVar, boolean z10) {
        gVar.c(this.f7607b, z10);
    }
}

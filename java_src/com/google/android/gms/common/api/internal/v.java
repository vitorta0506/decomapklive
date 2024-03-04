package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class v extends v3.s {

    /* renamed from: b  reason: collision with root package name */
    protected final t4.h f7606b;

    public v(int i9, t4.h hVar) {
        super(i9);
        this.f7606b = hVar;
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void a(@NonNull Status status) {
        this.f7606b.d(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void b(@NonNull Exception exc) {
        this.f7606b.d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.a0
    public final void c(o oVar) throws DeadObjectException {
        try {
            h(oVar);
        } catch (DeadObjectException e10) {
            a(a0.e(e10));
            throw e10;
        } catch (RemoteException e11) {
            a(a0.e(e11));
        } catch (RuntimeException e12) {
            this.f7606b.d(e12);
        }
    }

    protected abstract void h(o oVar) throws RemoteException;
}

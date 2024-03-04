package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.i;
/* loaded from: classes2.dex */
public abstract class b<R extends com.google.android.gms.common.api.i, A extends a.b> extends BasePendingResult<R> {

    /* renamed from: q  reason: collision with root package name */
    private final a.c<A> f7510q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final com.google.android.gms.common.api.a<?> f7511r;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(@NonNull com.google.android.gms.common.api.a<?> aVar, @NonNull com.google.android.gms.common.api.d dVar) {
        super((com.google.android.gms.common.api.d) com.google.android.gms.common.internal.p.k(dVar, "GoogleApiClient must not be null"));
        com.google.android.gms.common.internal.p.k(aVar, "Api must not be null");
        this.f7510q = aVar.b();
        this.f7511r = aVar;
    }

    private void o(@NonNull RemoteException remoteException) {
        p(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
    }

    protected abstract void l(@NonNull A a10) throws RemoteException;

    protected void m(@NonNull R r10) {
    }

    public final void n(@NonNull A a10) throws DeadObjectException {
        try {
            l(a10);
        } catch (DeadObjectException e10) {
            o(e10);
            throw e10;
        } catch (RemoteException e11) {
            o(e11);
        }
    }

    public final void p(@NonNull Status status) {
        com.google.android.gms.common.internal.p.b(!status.R(), "Failed result must not be success");
        R c10 = c(status);
        f(c10);
        m(c10);
    }
}

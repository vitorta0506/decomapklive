package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public abstract class a0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f7509a;

    public a0(int i9) {
        this.f7509a = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(@NonNull Status status);

    public abstract void b(@NonNull Exception exc);

    public abstract void c(o oVar) throws DeadObjectException;

    public abstract void d(@NonNull g gVar, boolean z10);
}

package com.google.android.gms.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class c extends k4.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void G0(zai zaiVar, r4.c cVar) throws RemoteException {
        Parcel f10 = f();
        k4.c.c(f10, zaiVar);
        k4.c.d(f10, cVar);
        E0(12, f10);
    }
}

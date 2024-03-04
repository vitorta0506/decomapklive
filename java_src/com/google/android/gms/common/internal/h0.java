package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h4.a;
/* loaded from: classes2.dex */
public final class h0 extends k4.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final h4.a G0(h4.a aVar, zax zaxVar) throws RemoteException {
        Parcel f10 = f();
        k4.c.d(f10, aVar);
        k4.c.c(f10, zaxVar);
        Parcel D0 = D0(2, f10);
        h4.a f11 = a.AbstractBinderC0438a.f(D0.readStrongBinder());
        D0.recycle();
        return f11;
    }
}

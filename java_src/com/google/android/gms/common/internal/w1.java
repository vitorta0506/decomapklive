package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class w1 extends com.google.android.gms.internal.common.k implements x1 {
    public w1() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static x1 f(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof x1 ? (x1) queryLocalInterface : new v1(iBinder);
    }

    @Override // com.google.android.gms.internal.common.k
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            h4.a c10 = c();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.l.e(parcel2, c10);
        } else if (i9 != 2) {
            return false;
        } else {
            int E = E();
            parcel2.writeNoException();
            parcel2.writeInt(E);
        }
        return true;
    }
}

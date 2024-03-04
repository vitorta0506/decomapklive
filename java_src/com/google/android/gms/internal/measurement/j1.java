package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class j1 extends o0 implements k1 {
    public j1() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            long readLong = parcel.readLong();
            p0.c(parcel);
            g(parcel.readString(), parcel.readString(), (Bundle) p0.a(parcel, Bundle.CREATOR), readLong);
            parcel2.writeNoException();
        } else if (i9 != 2) {
            return false;
        } else {
            int c10 = c();
            parcel2.writeNoException();
            parcel2.writeInt(c10);
        }
        return true;
    }
}

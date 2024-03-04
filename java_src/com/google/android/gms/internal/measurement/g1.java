package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class g1 extends o0 implements h1 {
    public g1() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            p0.c(parcel);
            a((Bundle) p0.a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}

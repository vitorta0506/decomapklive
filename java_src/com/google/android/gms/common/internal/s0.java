package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class s0 extends com.google.android.gms.internal.common.k implements k {
    public s0() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.common.k
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            com.google.android.gms.internal.common.l.b(parcel);
            A(parcel.readInt(), parcel.readStrongBinder(), (Bundle) com.google.android.gms.internal.common.l.a(parcel, Bundle.CREATOR));
        } else if (i9 == 2) {
            com.google.android.gms.internal.common.l.b(parcel);
            e(parcel.readInt(), (Bundle) com.google.android.gms.internal.common.l.a(parcel, Bundle.CREATOR));
        } else if (i9 != 3) {
            return false;
        } else {
            com.google.android.gms.internal.common.l.b(parcel);
            w0(parcel.readInt(), parcel.readStrongBinder(), (zzj) com.google.android.gms.internal.common.l.a(parcel, zzj.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}

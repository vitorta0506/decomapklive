package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class z1 extends s1 implements a2 {
    public z1() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService");
    }

    @Override // com.google.android.play.core.internal.s1
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        b2 b2Var = null;
        if (i9 == 2) {
            Bundle bundle = (Bundle) t1.a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                b2Var = queryLocalInterface instanceof b2 ? (b2) queryLocalInterface : new b2(readStrongBinder);
            }
            M(bundle, b2Var);
            return true;
        } else if (i9 != 3) {
            return false;
        } else {
            Bundle bundle2 = (Bundle) t1.a(parcel, Bundle.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
                b2Var = queryLocalInterface2 instanceof b2 ? (b2) queryLocalInterface2 : new b2(readStrongBinder2);
            }
            F(bundle2, b2Var);
            return true;
        }
    }
}

package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class b2 extends r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b2(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback");
    }

    public final void Z(Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel f10 = f();
        t1.b(f10, bundle);
        t1.b(f10, bundle2);
        D0(2, f10);
    }

    public final void a(Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        t1.b(f10, bundle);
        D0(3, f10);
    }

    public final void t0(Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        t1.b(f10, bundle);
        D0(4, f10);
    }
}

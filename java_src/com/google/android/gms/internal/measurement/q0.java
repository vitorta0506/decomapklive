package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class q0 extends n0 implements s0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final Bundle a(Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        p0.e(f10, bundle);
        Parcel D0 = D0(1, f10);
        Bundle bundle2 = (Bundle) p0.a(D0, Bundle.CREATOR);
        D0.recycle();
        return bundle2;
    }
}

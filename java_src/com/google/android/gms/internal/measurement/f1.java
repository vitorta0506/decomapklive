package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class f1 extends n0 implements h1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.h1
    public final void a(Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        p0.e(f10, bundle);
        E0(1, f10);
    }
}

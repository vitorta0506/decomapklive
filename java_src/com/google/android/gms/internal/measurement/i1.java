package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class i1 extends n0 implements k1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.k1
    public final int c() throws RemoteException {
        Parcel D0 = D0(2, f());
        int readInt = D0.readInt();
        D0.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.k1
    public final void g(String str, String str2, Bundle bundle, long j10) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        p0.e(f10, bundle);
        f10.writeLong(j10);
        E0(1, f10);
    }
}

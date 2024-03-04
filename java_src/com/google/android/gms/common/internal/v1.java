package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h4.a;
/* loaded from: classes2.dex */
public final class v1 extends com.google.android.gms.internal.common.a implements x1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public v1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.x1
    public final int E() throws RemoteException {
        Parcel b10 = b(2, f());
        int readInt = b10.readInt();
        b10.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.common.internal.x1
    public final h4.a c() throws RemoteException {
        Parcel b10 = b(1, f());
        h4.a f10 = a.AbstractBinderC0438a.f(b10.readStrongBinder());
        b10.recycle();
        return f10;
    }
}

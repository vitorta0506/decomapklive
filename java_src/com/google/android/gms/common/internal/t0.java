package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
final class t0 implements l {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f7787a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(IBinder iBinder) {
        this.f7787a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f7787a;
    }

    @Override // com.google.android.gms.common.internal.l
    public final void j0(k kVar, @Nullable GetServiceRequest getServiceRequest) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(kVar != null ? kVar.asBinder() : null);
            if (getServiceRequest != null) {
                obtain.writeInt(1);
                l1.a(getServiceRequest, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f7787a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}

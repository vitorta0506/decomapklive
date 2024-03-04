package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public class n0 implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f8217a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8218b;

    /* JADX INFO: Access modifiers changed from: protected */
    public n0(IBinder iBinder, String str) {
        this.f8217a = iBinder;
        this.f8218b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel D0(int i9, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f8217a.transact(i9, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e10) {
                obtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void E0(int i9, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f8217a.transact(i9, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f8217a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel f() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f8218b);
        return obtain;
    }
}

package com.google.android.gms.internal.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f7915a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7916b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f7915a = iBinder;
        this.f7916b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f7915a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel b(int i9, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f7915a.transact(i9, parcel, obtain, 0);
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
    public final Parcel f() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f7916b);
        return obtain;
    }
}

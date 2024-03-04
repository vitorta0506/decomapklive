package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public class r1 implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f10595a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10596b;

    /* JADX INFO: Access modifiers changed from: protected */
    public r1(IBinder iBinder, String str) {
        this.f10595a = iBinder;
        this.f10596b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void D0(int i9, Parcel parcel) throws RemoteException {
        try {
            this.f10595a.transact(i9, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f10595a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel f() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f10596b);
        return obtain;
    }
}

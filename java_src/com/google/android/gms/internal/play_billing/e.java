package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public class e implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f8468a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8469b = "com.android.vending.billing.IInAppBillingService";

    /* JADX INFO: Access modifiers changed from: protected */
    public e(IBinder iBinder, String str) {
        this.f8468a = iBinder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel D0(int i9, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f8468a.transact(i9, parcel, obtain, 0);
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

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f8468a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel f() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f8469b);
        return obtain;
    }
}

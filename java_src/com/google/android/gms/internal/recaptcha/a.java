package com.google.android.gms.internal.recaptcha;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f8479a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8480b = "com.google.android.gms.recaptcha.internal.IRecaptchaService";

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f8479a = iBinder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void D0(int i9, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f8479a.transact(i9, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f8479a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel f() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f8480b);
        return obtain;
    }
}

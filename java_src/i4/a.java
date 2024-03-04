package i4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f40954a;

    /* renamed from: b  reason: collision with root package name */
    private final String f40955b = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f40954a = iBinder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel D0(int i9, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f40954a.transact(i9, parcel, obtain, 0);
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
        return this.f40954a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel f() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f40955b);
        return obtain;
    }
}

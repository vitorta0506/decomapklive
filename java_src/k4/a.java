package k4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f53635a;

    /* renamed from: b  reason: collision with root package name */
    private final String f53636b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f53635a = iBinder;
        this.f53636b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel D0(int i9, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f53635a.transact(2, parcel, obtain, 0);
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
            this.f53635a.transact(i9, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void F0(int i9, Parcel parcel) throws RemoteException {
        try {
            this.f53635a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f53635a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel f() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f53636b);
        return obtain;
    }
}

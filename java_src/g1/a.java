package g1;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: g1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0428a extends Binder implements a {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g1.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0429a implements a {

            /* renamed from: b  reason: collision with root package name */
            public static a f39890b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f39891a;

            C0429a(IBinder iBinder) {
                this.f39891a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f39891a;
            }

            @Override // g1.a
            public int l(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.facebook.ppml.receiver.IReceiverService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f39891a.transact(1, obtain, obtain2, 0) && AbstractBinderC0428a.f() != null) {
                        return AbstractBinderC0428a.f().l(bundle);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static a b(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.facebook.ppml.receiver.IReceiverService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0429a(iBinder);
        }

        public static a f() {
            return C0429a.f39890b;
        }
    }

    int l(Bundle bundle) throws RemoteException;
}

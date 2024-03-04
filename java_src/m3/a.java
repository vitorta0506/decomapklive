package m3;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public interface a extends IInterface {

    /* renamed from: m3.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractBinderC0564a extends Binder implements a {

        /* renamed from: m3.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class C0565a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f54777a;

            C0565a(IBinder iBinder) {
                this.f54777a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f54777a;
            }

            @Override // m3.a
            public Bundle u(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f54777a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
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
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0565a(iBinder);
        }
    }

    Bundle u(Bundle bundle) throws RemoteException;
}

package org.light;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes7.dex */
public interface AIDLFaceDetectCallback extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLFaceDetectCallback {
        private static final String DESCRIPTOR = "org.light.AIDLFaceDetectCallback";
        static final int TRANSACTION_callback = 1;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLFaceDetectCallback {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.light.AIDLFaceDetectCallback
            public void callback(LightImageFaceDetectResult[] lightImageFaceDetectResultArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedArray(lightImageFaceDetectResultArr, 0);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static AIDLFaceDetectCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLFaceDetectCallback)) {
                return (AIDLFaceDetectCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 != 1) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            callback((LightImageFaceDetectResult[]) parcel.createTypedArray(LightImageFaceDetectResult.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    void callback(LightImageFaceDetectResult[] lightImageFaceDetectResultArr) throws RemoteException;
}

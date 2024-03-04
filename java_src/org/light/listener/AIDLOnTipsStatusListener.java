package org.light.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes7.dex */
public interface AIDLOnTipsStatusListener extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLOnTipsStatusListener {
        private static final String DESCRIPTOR = "org.light.listener.AIDLOnTipsStatusListener";
        static final int TRANSACTION_tipsNeedHide = 2;
        static final int TRANSACTION_tipsNeedShow = 1;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLOnTipsStatusListener {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // org.light.listener.AIDLOnTipsStatusListener
            public void tipsNeedHide(String str, String str2, int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i9);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.listener.AIDLOnTipsStatusListener
            public void tipsNeedShow(String str, String str2, int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static AIDLOnTipsStatusListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLOnTipsStatusListener)) {
                return (AIDLOnTipsStatusListener) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                tipsNeedShow(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            } else if (i9 != 2) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                tipsNeedHide(parcel.readString(), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
        }
    }

    void tipsNeedHide(String str, String str2, int i9) throws RemoteException;

    void tipsNeedShow(String str, String str2, int i9, int i10) throws RemoteException;
}

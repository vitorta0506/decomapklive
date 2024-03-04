package org.light.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import org.light.bean.BodyData;
import org.light.bean.FaceData;
import org.light.bean.HandData;
/* loaded from: classes7.dex */
public interface AIDLOnAIDataListener extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLOnAIDataListener {
        private static final String DESCRIPTOR = "org.light.listener.AIDLOnAIDataListener";
        static final int TRANSACTION_onBodyDataUpdated = 3;
        static final int TRANSACTION_onFaceDataUpdated = 1;
        static final int TRANSACTION_onHandDataUpdated = 2;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLOnAIDataListener {
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

            @Override // org.light.listener.AIDLOnAIDataListener
            public void onBodyDataUpdated(List<BodyData> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.listener.AIDLOnAIDataListener
            public void onFaceDataUpdated(List<FaceData> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.listener.AIDLOnAIDataListener
            public void onHandDataUpdated(List<HandData> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(2, obtain, obtain2, 0);
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

        public static AIDLOnAIDataListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLOnAIDataListener)) {
                return (AIDLOnAIDataListener) queryLocalInterface;
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
                onFaceDataUpdated(parcel.createTypedArrayList(FaceData.CREATOR));
                parcel2.writeNoException();
                return true;
            } else if (i9 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onHandDataUpdated(parcel.createTypedArrayList(HandData.CREATOR));
                parcel2.writeNoException();
                return true;
            } else if (i9 != 3) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                onBodyDataUpdated(parcel.createTypedArrayList(BodyData.CREATOR));
                parcel2.writeNoException();
                return true;
            }
        }
    }

    void onBodyDataUpdated(List<BodyData> list) throws RemoteException;

    void onFaceDataUpdated(List<FaceData> list) throws RemoteException;

    void onHandDataUpdated(List<HandData> list) throws RemoteException;
}

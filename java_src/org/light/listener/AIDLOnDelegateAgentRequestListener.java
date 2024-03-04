package org.light.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import org.light.bean.LightDelegateAgentRequest;
/* loaded from: classes7.dex */
public interface AIDLOnDelegateAgentRequestListener extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLOnDelegateAgentRequestListener {
        private static final String DESCRIPTOR = "org.light.listener.AIDLOnDelegateAgentRequestListener";
        static final int TRANSACTION_OnDelegateAgentRequest = 1;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLOnDelegateAgentRequestListener {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // org.light.listener.AIDLOnDelegateAgentRequestListener
            public void OnDelegateAgentRequest(LightDelegateAgentRequest lightDelegateAgentRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (lightDelegateAgentRequest != null) {
                        obtain.writeInt(1);
                        lightDelegateAgentRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static AIDLOnDelegateAgentRequestListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLOnDelegateAgentRequestListener)) {
                return (AIDLOnDelegateAgentRequestListener) queryLocalInterface;
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
            OnDelegateAgentRequest(parcel.readInt() != 0 ? LightDelegateAgentRequest.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void OnDelegateAgentRequest(LightDelegateAgentRequest lightDelegateAgentRequest) throws RemoteException;
}

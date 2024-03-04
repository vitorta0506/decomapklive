package org.light;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import org.light.AIDLAudioReader;
import org.light.AIDLVideoReader;
/* loaded from: classes7.dex */
public interface AIDLClipSourceFactory extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLClipSourceFactory {
        private static final String DESCRIPTOR = "org.light.AIDLClipSourceFactory";
        static final int TRANSACTION_createAudioReader = 2;
        static final int TRANSACTION_createVideoReader = 1;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLClipSourceFactory {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.light.AIDLClipSourceFactory
            public AIDLAudioReader createAudioReader(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return AIDLAudioReader.Stub.asInterface(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLClipSourceFactory
            public AIDLVideoReader createVideoReader(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return AIDLVideoReader.Stub.asInterface(obtain2.readStrongBinder());
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

        public static AIDLClipSourceFactory asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLClipSourceFactory)) {
                return (AIDLClipSourceFactory) queryLocalInterface;
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
                AIDLVideoReader createVideoReader = createVideoReader(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(createVideoReader != null ? createVideoReader.asBinder() : null);
                return true;
            } else if (i9 != 2) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                AIDLAudioReader createAudioReader = createAudioReader(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(createAudioReader != null ? createAudioReader.asBinder() : null);
                return true;
            }
        }
    }

    AIDLAudioReader createAudioReader(String str) throws RemoteException;

    AIDLVideoReader createVideoReader(String str) throws RemoteException;
}

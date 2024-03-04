package org.light;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import org.light.bean.Texture;
/* loaded from: classes7.dex */
public interface AIDLVideoReader extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLVideoReader {
        private static final String DESCRIPTOR = "org.light.AIDLVideoReader";
        static final int TRANSACTION_duration = 4;
        static final int TRANSACTION_height = 2;
        static final int TRANSACTION_readSample = 3;
        static final int TRANSACTION_release = 5;
        static final int TRANSACTION_width = 1;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLVideoReader {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.light.AIDLVideoReader
            public long duration() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // org.light.AIDLVideoReader
            public int height() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLVideoReader
            public Texture readSample(long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j10);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? Texture.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLVideoReader
            public void release() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLVideoReader
            public int width() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static AIDLVideoReader asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLVideoReader)) {
                return (AIDLVideoReader) queryLocalInterface;
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
                int width = width();
                parcel2.writeNoException();
                parcel2.writeInt(width);
                return true;
            } else if (i9 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                int height = height();
                parcel2.writeNoException();
                parcel2.writeInt(height);
                return true;
            } else if (i9 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                Texture readSample = readSample(parcel.readLong());
                parcel2.writeNoException();
                if (readSample != null) {
                    parcel2.writeInt(1);
                    readSample.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i9 == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                long duration = duration();
                parcel2.writeNoException();
                parcel2.writeLong(duration);
                return true;
            } else if (i9 != 5) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                release();
                parcel2.writeNoException();
                return true;
            }
        }
    }

    long duration() throws RemoteException;

    int height() throws RemoteException;

    Texture readSample(long j10) throws RemoteException;

    void release() throws RemoteException;

    int width() throws RemoteException;
}

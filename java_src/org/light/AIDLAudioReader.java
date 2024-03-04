package org.light;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes7.dex */
public interface AIDLAudioReader extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLAudioReader {
        private static final String DESCRIPTOR = "org.light.AIDLAudioReader";
        static final int TRANSACTION_copyNextFrame = 1;
        static final int TRANSACTION_copyNextFrameSyncEnable = 2;
        static final int TRANSACTION_duration = 5;
        static final int TRANSACTION_release = 6;
        static final int TRANSACTION_seek = 3;
        static final int TRANSACTION_setVolume = 4;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLAudioReader {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.light.AIDLAudioReader
            public AudioFrame copyNextFrame() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? AudioFrame.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLAudioReader
            public AudioFrame copyNextFrameSyncEnable(boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? AudioFrame.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLAudioReader
            public long duration() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
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

            @Override // org.light.AIDLAudioReader
            public void release() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLAudioReader
            public void seek(long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j10);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLAudioReader
            public void setVolume(float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(4, obtain, obtain2, 0);
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

        public static AIDLAudioReader asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLAudioReader)) {
                return (AIDLAudioReader) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 != 1598968902) {
                switch (i9) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        AudioFrame copyNextFrame = copyNextFrame();
                        parcel2.writeNoException();
                        if (copyNextFrame != null) {
                            parcel2.writeInt(1);
                            copyNextFrame.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        AudioFrame copyNextFrameSyncEnable = copyNextFrameSyncEnable(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        if (copyNextFrameSyncEnable != null) {
                            parcel2.writeInt(1);
                            copyNextFrameSyncEnable.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        seek(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        setVolume(parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        long duration = duration();
                        parcel2.writeNoException();
                        parcel2.writeLong(duration);
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        release();
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i9, parcel, parcel2, i10);
                }
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    AudioFrame copyNextFrame() throws RemoteException;

    AudioFrame copyNextFrameSyncEnable(boolean z10) throws RemoteException;

    long duration() throws RemoteException;

    void release() throws RemoteException;

    void seek(long j10) throws RemoteException;

    void setVolume(float f10) throws RemoteException;
}

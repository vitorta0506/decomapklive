package com.tencent.thumbplayer.core.downloadproxy.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl;
/* loaded from: classes4.dex */
public interface TPDownloadProxyFactoryAidl extends IInterface {

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements TPDownloadProxyFactoryAidl {
        private static final String DESCRIPTOR = "com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl";
        static final int TRANSACTION_getNativeVersion = 4;
        static final int TRANSACTION_getTPDownloadProxy = 1;
        static final int TRANSACTION_isReadyForDownload = 3;
        static final int TRANSACTION_isReadyForPlay = 2;

        /* loaded from: classes4.dex */
        static class Proxy implements TPDownloadProxyFactoryAidl {
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

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public String getNativeVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public ITPDownloadProxyAidl getTPDownloadProxy(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return ITPDownloadProxyAidl.Stub.asInterface(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public boolean isReadyForDownload() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
            public boolean isReadyForPlay() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static TPDownloadProxyFactoryAidl asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof TPDownloadProxyFactoryAidl)) {
                return (TPDownloadProxyFactoryAidl) queryLocalInterface;
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
                ITPDownloadProxyAidl tPDownloadProxy = getTPDownloadProxy(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(tPDownloadProxy != null ? tPDownloadProxy.asBinder() : null);
                return true;
            } else if (i9 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean isReadyForPlay = isReadyForPlay();
                parcel2.writeNoException();
                parcel2.writeInt(isReadyForPlay ? 1 : 0);
                return true;
            } else if (i9 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean isReadyForDownload = isReadyForDownload();
                parcel2.writeNoException();
                parcel2.writeInt(isReadyForDownload ? 1 : 0);
                return true;
            } else if (i9 != 4) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                String nativeVersion = getNativeVersion();
                parcel2.writeNoException();
                parcel2.writeString(nativeVersion);
                return true;
            }
        }
    }

    String getNativeVersion() throws RemoteException;

    ITPDownloadProxyAidl getTPDownloadProxy(int i9) throws RemoteException;

    boolean isReadyForDownload() throws RemoteException;

    boolean isReadyForPlay() throws RemoteException;
}

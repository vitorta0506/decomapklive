package org.light;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import org.light.LuaResultCallback;
/* loaded from: classes7.dex */
public interface AIDLUE4Interface extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLUE4Interface {
        private static final String DESCRIPTOR = "org.light.AIDLUE4Interface";
        static final int TRANSACTION_bindUERenderTexture = 5;
        static final int TRANSACTION_callLua = 1;
        static final int TRANSACTION_mountPak = 2;
        static final int TRANSACTION_openLevel = 3;
        static final int TRANSACTION_releaseGraphicBuffers = 6;
        static final int TRANSACTION_setExternalTexture = 4;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLUE4Interface {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.light.AIDLUE4Interface
            public void bindUERenderTexture(int i9, int i10, int i11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLUE4Interface
            public void callLua(String str, String str2, LuaResultCallback luaResultCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(luaResultCallback != null ? luaResultCallback.asBinder() : null);
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

            @Override // org.light.AIDLUE4Interface
            public void mountPak(String str, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLUE4Interface
            public void openLevel(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.AIDLUE4Interface
            public void releaseGraphicBuffers() throws RemoteException {
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

            @Override // org.light.AIDLUE4Interface
            public void setExternalTexture(int i9, int i10, int i11, int i12) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
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

        public static AIDLUE4Interface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLUE4Interface)) {
                return (AIDLUE4Interface) queryLocalInterface;
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
                        callLua(parcel.readString(), parcel.readString(), LuaResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        mountPak(parcel.readString(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        openLevel(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        setExternalTexture(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        bindUERenderTexture(parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        releaseGraphicBuffers();
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

    void bindUERenderTexture(int i9, int i10, int i11) throws RemoteException;

    void callLua(String str, String str2, LuaResultCallback luaResultCallback) throws RemoteException;

    void mountPak(String str, boolean z10) throws RemoteException;

    void openLevel(String str) throws RemoteException;

    void releaseGraphicBuffers() throws RemoteException;

    void setExternalTexture(int i9, int i10, int i11, int i12) throws RemoteException;
}

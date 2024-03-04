package org.light.callback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;
import org.light.bean.Texture;
/* loaded from: classes7.dex */
public interface AIDLExternalRenderCallback extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements AIDLExternalRenderCallback {
        private static final String DESCRIPTOR = "org.light.callback.AIDLExternalRenderCallback";
        static final int TRANSACTION_afterRender = 3;
        static final int TRANSACTION_getInputSurface = 1;
        static final int TRANSACTION_onRender = 2;

        /* loaded from: classes7.dex */
        private static class Proxy implements AIDLExternalRenderCallback {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // org.light.callback.AIDLExternalRenderCallback
            public void afterRender(Texture texture, Surface surface) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (texture != null) {
                        obtain.writeInt(1);
                        texture.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (surface != null) {
                        obtain.writeInt(1);
                        surface.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(3, obtain, obtain2, 0);
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

            @Override // org.light.callback.AIDLExternalRenderCallback
            public Surface getInputSurface(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // org.light.callback.AIDLExternalRenderCallback
            public Texture onRender(Texture texture, String str, String str2, Texture texture2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (texture != null) {
                        obtain.writeInt(1);
                        texture.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (texture2 != null) {
                        obtain.writeInt(1);
                        texture2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? Texture.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static AIDLExternalRenderCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof AIDLExternalRenderCallback)) {
                return (AIDLExternalRenderCallback) queryLocalInterface;
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
                Surface inputSurface = getInputSurface(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                if (inputSurface != null) {
                    parcel2.writeInt(1);
                    inputSurface.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            if (i9 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                Texture onRender = onRender(parcel.readInt() != 0 ? Texture.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Texture.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (onRender != null) {
                    parcel2.writeInt(1);
                    onRender.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i9 != 3) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            } else {
                parcel.enforceInterface(DESCRIPTOR);
                afterRender(parcel.readInt() != 0 ? Texture.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
        }
    }

    void afterRender(Texture texture, Surface surface) throws RemoteException;

    Surface getInputSurface(int i9, int i10) throws RemoteException;

    Texture onRender(Texture texture, String str, String str2, Texture texture2) throws RemoteException;
}

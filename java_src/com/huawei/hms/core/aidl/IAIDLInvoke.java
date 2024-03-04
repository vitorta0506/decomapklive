package com.huawei.hms.core.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.huawei.hms.core.aidl.IAIDLCallback;
/* loaded from: classes4.dex */
public interface IAIDLInvoke extends IInterface {

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IAIDLInvoke {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes4.dex */
        public static class a implements IAIDLInvoke {

            /* renamed from: b  reason: collision with root package name */
            public static IAIDLInvoke f27286b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f27287a;

            a(IBinder iBinder) {
                this.f27287a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f27287a;
            }

            @Override // com.huawei.hms.core.aidl.IAIDLInvoke
            public void asyncCall(DataBuffer dataBuffer, IAIDLCallback iAIDLCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.hms.core.aidl.IAIDLInvoke");
                    if (dataBuffer != null) {
                        obtain.writeInt(1);
                        dataBuffer.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iAIDLCallback != null ? iAIDLCallback.asBinder() : null);
                    if (this.f27287a.transact(2, obtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().asyncCall(dataBuffer, iAIDLCallback);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.huawei.hms.core.aidl.IAIDLInvoke
            public void syncCall(DataBuffer dataBuffer) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.hms.core.aidl.IAIDLInvoke");
                    if (dataBuffer != null) {
                        obtain.writeInt(1);
                        dataBuffer.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f27287a.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().syncCall(dataBuffer);
                    } else {
                        obtain2.readException();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.huawei.hms.core.aidl.IAIDLInvoke");
        }

        public static IAIDLInvoke asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.huawei.hms.core.aidl.IAIDLInvoke");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAIDLInvoke)) {
                return (IAIDLInvoke) queryLocalInterface;
            }
            return new a(iBinder);
        }

        public static IAIDLInvoke getDefaultImpl() {
            return a.f27286b;
        }

        public static boolean setDefaultImpl(IAIDLInvoke iAIDLInvoke) {
            if (a.f27286b != null || iAIDLInvoke == null) {
                return false;
            }
            a.f27286b = iAIDLInvoke;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 == 1) {
                parcel.enforceInterface("com.huawei.hms.core.aidl.IAIDLInvoke");
                syncCall(parcel.readInt() != 0 ? DataBuffer.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            } else if (i9 == 2) {
                parcel.enforceInterface("com.huawei.hms.core.aidl.IAIDLInvoke");
                asyncCall(parcel.readInt() != 0 ? DataBuffer.CREATOR.createFromParcel(parcel) : null, IAIDLCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            } else if (i9 != 1598968902) {
                return super.onTransact(i9, parcel, parcel2, i10);
            } else {
                parcel2.writeString("com.huawei.hms.core.aidl.IAIDLInvoke");
                return true;
            }
        }
    }

    void asyncCall(DataBuffer dataBuffer, IAIDLCallback iAIDLCallback) throws RemoteException;

    void syncCall(DataBuffer dataBuffer) throws RemoteException;
}

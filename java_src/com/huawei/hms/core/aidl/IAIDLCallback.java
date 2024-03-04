package com.huawei.hms.core.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4.dex */
public interface IAIDLCallback extends IInterface {

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IAIDLCallback {
        private static final String DESCRIPTOR = "com.huawei.hms.core.aidl.IAIDLCallback";
        static final int TRANSACTION_call = 1;

        /* loaded from: classes4.dex */
        private static class a implements IAIDLCallback {

            /* renamed from: b  reason: collision with root package name */
            public static IAIDLCallback f27284b;

            /* renamed from: a  reason: collision with root package name */
            private IBinder f27285a;

            a(IBinder iBinder) {
                this.f27285a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f27285a;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAIDLCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAIDLCallback)) {
                return (IAIDLCallback) queryLocalInterface;
            }
            return new a(iBinder);
        }

        public static IAIDLCallback getDefaultImpl() {
            return a.f27284b;
        }

        public static boolean setDefaultImpl(IAIDLCallback iAIDLCallback) {
            if (a.f27284b != null || iAIDLCallback == null) {
                return false;
            }
            a.f27284b = iAIDLCallback;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                call(parcel.readInt() != 0 ? DataBuffer.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i9 != 1598968902) {
                return super.onTransact(i9, parcel, parcel2, i10);
            } else {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
        }
    }

    void call(DataBuffer dataBuffer) throws RemoteException;
}

package com.tencent.liteav.audio.earmonitor.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes4.dex */
public interface a extends IInterface {
    List a() throws RemoteException;

    void a(String str, String str2) throws RemoteException;

    boolean a(int i9) throws RemoteException;

    /* renamed from: com.tencent.liteav.audio.earmonitor.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static abstract class AbstractBinderC0313a extends Binder implements a {
        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.huawei.multimedia.audioengine.IHwAudioEngine");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0314a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 == 1) {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioEngine");
                List a10 = a();
                parcel2.writeNoException();
                parcel2.writeList(a10);
                return true;
            } else if (i9 == 2) {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioEngine");
                boolean a11 = a(parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(a11 ? 1 : 0);
                return true;
            } else if (i9 != 3) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString("com.huawei.multimedia.audioengine.IHwAudioEngine");
                return true;
            } else {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioEngine");
                a(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
        }

        /* renamed from: com.tencent.liteav.audio.earmonitor.a.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static class C0314a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f30761a;

            C0314a(IBinder iBinder) {
                this.f30761a = iBinder;
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.a
            public final List a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioEngine");
                    this.f30761a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readArrayList(C0314a.class.getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f30761a;
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.a
            public final boolean a(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioEngine");
                    obtain.writeInt(i9);
                    this.f30761a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.a
            public final void a(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioEngine");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f30761a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}

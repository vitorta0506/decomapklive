package com.tencent.liteav.audio.earmonitor.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes4.dex */
public interface b extends IInterface {
    int a(String str, int i9) throws RemoteException;

    int a(boolean z10) throws RemoteException;

    void a(String str) throws RemoteException;

    boolean a() throws RemoteException;

    int b() throws RemoteException;

    /* loaded from: classes4.dex */
    public static abstract class a extends Binder implements b {
        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0315a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 == 1) {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                boolean a10 = a();
                parcel2.writeNoException();
                parcel2.writeInt(a10 ? 1 : 0);
                return true;
            } else if (i9 == 2) {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                int a11 = a(parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeInt(a11);
                return true;
            } else if (i9 == 3) {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                int b10 = b();
                parcel2.writeNoException();
                parcel2.writeInt(b10);
                return true;
            } else if (i9 == 4) {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                int a12 = a(parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeInt(a12);
                return true;
            } else if (i9 != 5) {
                if (i9 != 1598968902) {
                    return super.onTransact(i9, parcel, parcel2, i10);
                }
                parcel2.writeString("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                return true;
            } else {
                parcel.enforceInterface("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                a(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
        }

        /* renamed from: com.tencent.liteav.audio.earmonitor.a.a.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static class C0315a implements b {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f30762a;

            C0315a(IBinder iBinder) {
                this.f30762a = iBinder;
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.b
            public final boolean a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    this.f30762a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f30762a;
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.b
            public final int b() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    this.f30762a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.b
            public final int a(boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    obtain.writeInt(z10 ? 1 : 0);
                    this.f30762a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.b
            public final int a(String str, int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    obtain.writeString(str);
                    obtain.writeInt(i9);
                    this.f30762a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.liteav.audio.earmonitor.a.a.b
            public final void a(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature");
                    obtain.writeString(str);
                    this.f30762a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}

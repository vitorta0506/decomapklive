package com.tencent.thumbplayer.core.downloadproxy.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl;
import java.util.Map;
/* loaded from: classes4.dex */
public interface ITPDownloadProxyAidl extends IInterface {

    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements ITPDownloadProxyAidl {
        private static final String DESCRIPTOR = "com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl";
        static final int TRANSACTION_checkResourceStatus = 18;
        static final int TRANSACTION_clearCache = 17;
        static final int TRANSACTION_getClipPlayUrl = 6;
        static final int TRANSACTION_getNativeInfo = 16;
        static final int TRANSACTION_getPlayErrorCodeStr = 7;
        static final int TRANSACTION_getPlayUrl = 5;
        static final int TRANSACTION_getResourceSize = 19;
        static final int TRANSACTION_init = 1;
        static final int TRANSACTION_pauseDownload = 9;
        static final int TRANSACTION_pushEvent = 20;
        static final int TRANSACTION_resumeDownload = 10;
        static final int TRANSACTION_setClipInfo = 4;
        static final int TRANSACTION_setMaxStorageSizeMB = 22;
        static final int TRANSACTION_setPlayState = 21;
        static final int TRANSACTION_setUserData = 15;
        static final int TRANSACTION_startClipPlay = 3;
        static final int TRANSACTION_startClipPreload = 12;
        static final int TRANSACTION_startPlay = 2;
        static final int TRANSACTION_startPreload = 11;
        static final int TRANSACTION_startTask = 14;
        static final int TRANSACTION_stopPlay = 8;
        static final int TRANSACTION_stopPreload = 13;
        static final int TRANSACTION_updateTaskInfo = 23;

        /* loaded from: classes4.dex */
        static class Proxy implements ITPDownloadProxyAidl {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int checkResourceStatus(String str, String str2, int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i9);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int clearCache(String str, String str2, int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i9);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public String getClipPlayUrl(int i9, int i10, int i11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public String getNativeInfo(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public String getPlayErrorCodeStr(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public String getPlayUrl(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public long getResourceSize(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int init(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int pauseDownload(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void pushEvent(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int resumeDownload(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public boolean setClipInfo(int i9, int i10, String str, TPDownloadParamAidl tPDownloadParamAidl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    if (tPDownloadParamAidl != null) {
                        obtain.writeInt(1);
                        tPDownloadParamAidl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void setMaxStorageSizeMB(long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j10);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void setPlayState(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void setUserData(Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeMap(map);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int startClipPlay(String str, int i9, ITPPlayListenerAidl iTPPlayListenerAidl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(iTPPlayListenerAidl != null ? iTPPlayListenerAidl.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int startClipPreload(String str, int i9, ITPPreLoadListenerAidl iTPPreLoadListenerAidl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(iTPPreLoadListenerAidl != null ? iTPPreLoadListenerAidl.asBinder() : null);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int startPlay(String str, TPDownloadParamAidl tPDownloadParamAidl, ITPPlayListenerAidl iTPPlayListenerAidl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (tPDownloadParamAidl != null) {
                        obtain.writeInt(1);
                        tPDownloadParamAidl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iTPPlayListenerAidl != null ? iTPPlayListenerAidl.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public int startPreload(String str, TPDownloadParamAidl tPDownloadParamAidl, ITPPreLoadListenerAidl iTPPreLoadListenerAidl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (tPDownloadParamAidl != null) {
                        obtain.writeInt(1);
                        tPDownloadParamAidl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iTPPreLoadListenerAidl != null ? iTPPreLoadListenerAidl.asBinder() : null);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void startTask(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void stopPlay(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void stopPreload(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
            public void updateTaskInfo(int i9, Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeMap(map);
                    this.mRemote.transact(23, obtain, obtain2, 0);
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

        public static ITPDownloadProxyAidl asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITPDownloadProxyAidl)) {
                return (ITPDownloadProxyAidl) queryLocalInterface;
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
                        int init = init(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(init);
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        int startPlay = startPlay(parcel.readString(), parcel.readInt() != 0 ? TPDownloadParamAidl.CREATOR.createFromParcel(parcel) : null, ITPPlayListenerAidl.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(startPlay);
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        int startClipPlay = startClipPlay(parcel.readString(), parcel.readInt(), ITPPlayListenerAidl.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(startClipPlay);
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean clipInfo = setClipInfo(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? TPDownloadParamAidl.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(clipInfo ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        String playUrl = getPlayUrl(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(playUrl);
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        String clipPlayUrl = getClipPlayUrl(parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(clipPlayUrl);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        String playErrorCodeStr = getPlayErrorCodeStr(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(playErrorCodeStr);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        stopPlay(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        int pauseDownload = pauseDownload(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(pauseDownload);
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        int resumeDownload = resumeDownload(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(resumeDownload);
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        int startPreload = startPreload(parcel.readString(), parcel.readInt() != 0 ? TPDownloadParamAidl.CREATOR.createFromParcel(parcel) : null, ITPPreLoadListenerAidl.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(startPreload);
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        int startClipPreload = startClipPreload(parcel.readString(), parcel.readInt(), ITPPreLoadListenerAidl.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(startClipPreload);
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        stopPreload(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        startTask(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        setUserData(parcel.readHashMap(getClass().getClassLoader()));
                        parcel2.writeNoException();
                        return true;
                    case 16:
                        parcel.enforceInterface(DESCRIPTOR);
                        String nativeInfo = getNativeInfo(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(nativeInfo);
                        return true;
                    case 17:
                        parcel.enforceInterface(DESCRIPTOR);
                        int clearCache = clearCache(parcel.readString(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(clearCache);
                        return true;
                    case 18:
                        parcel.enforceInterface(DESCRIPTOR);
                        int checkResourceStatus = checkResourceStatus(parcel.readString(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(checkResourceStatus);
                        return true;
                    case 19:
                        parcel.enforceInterface(DESCRIPTOR);
                        long resourceSize = getResourceSize(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeLong(resourceSize);
                        return true;
                    case 20:
                        parcel.enforceInterface(DESCRIPTOR);
                        pushEvent(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 21:
                        parcel.enforceInterface(DESCRIPTOR);
                        setPlayState(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 22:
                        parcel.enforceInterface(DESCRIPTOR);
                        setMaxStorageSizeMB(parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 23:
                        parcel.enforceInterface(DESCRIPTOR);
                        updateTaskInfo(parcel.readInt(), parcel.readHashMap(getClass().getClassLoader()));
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

    int checkResourceStatus(String str, String str2, int i9) throws RemoteException;

    int clearCache(String str, String str2, int i9) throws RemoteException;

    String getClipPlayUrl(int i9, int i10, int i11) throws RemoteException;

    String getNativeInfo(int i9) throws RemoteException;

    String getPlayErrorCodeStr(int i9) throws RemoteException;

    String getPlayUrl(int i9, int i10) throws RemoteException;

    long getResourceSize(String str, String str2) throws RemoteException;

    int init(String str) throws RemoteException;

    int pauseDownload(int i9) throws RemoteException;

    void pushEvent(int i9) throws RemoteException;

    int resumeDownload(int i9) throws RemoteException;

    boolean setClipInfo(int i9, int i10, String str, TPDownloadParamAidl tPDownloadParamAidl) throws RemoteException;

    void setMaxStorageSizeMB(long j10) throws RemoteException;

    void setPlayState(int i9, int i10) throws RemoteException;

    void setUserData(Map map) throws RemoteException;

    int startClipPlay(String str, int i9, ITPPlayListenerAidl iTPPlayListenerAidl) throws RemoteException;

    int startClipPreload(String str, int i9, ITPPreLoadListenerAidl iTPPreLoadListenerAidl) throws RemoteException;

    int startPlay(String str, TPDownloadParamAidl tPDownloadParamAidl, ITPPlayListenerAidl iTPPlayListenerAidl) throws RemoteException;

    int startPreload(String str, TPDownloadParamAidl tPDownloadParamAidl, ITPPreLoadListenerAidl iTPPreLoadListenerAidl) throws RemoteException;

    void startTask(int i9) throws RemoteException;

    void stopPlay(int i9) throws RemoteException;

    void stopPreload(int i9) throws RemoteException;

    void updateTaskInfo(int i9, Map map) throws RemoteException;
}

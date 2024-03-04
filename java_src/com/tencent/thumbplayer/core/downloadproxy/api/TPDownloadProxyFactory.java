package com.tencent.thumbplayer.core.downloadproxy.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl;
import com.tencent.thumbplayer.core.downloadproxy.client.TPDownloadProxyClient;
import com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative;
import com.tencent.thumbplayer.core.downloadproxy.service.TPDownloadProxyService;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class TPDownloadProxyFactory {
    private static final String FILE_NAME = "TPDownloadProxyFactory";
    private static TPDownloadProxyFactoryAidl downloadProxyFactoryAidl;
    private static Object mMapObject = new Object();
    private static HashMap<Integer, ITPDownloadProxy> mvTPDownloadProxyMap = new HashMap<>();
    private static HashMap<Integer, TPDownloadProxyClient> mvTPDownloadProxyClientMap = new HashMap<>();
    private static boolean mUseService = false;
    private static boolean mCanUseAIDL = false;
    private static boolean mIsReadyForDownload = false;
    private static TPDLProxyBindServiceCallback mCallback = null;
    private static ServiceConnection mConnection = new ServiceConnection() { // from class: com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            TPDownloadProxyFactoryAidl unused = TPDownloadProxyFactory.downloadProxyFactoryAidl = TPDownloadProxyFactoryAidl.Stub.asInterface(iBinder);
            try {
                for (Map.Entry entry : TPDownloadProxyFactory.mvTPDownloadProxyClientMap.entrySet()) {
                    ((TPDownloadProxyClient) entry.getValue()).updateAidl(TPDownloadProxyFactory.downloadProxyFactoryAidl.getTPDownloadProxy(((Integer) entry.getKey()).intValue()));
                }
            } catch (Throwable th2) {
                TPDLProxyLog.i(TPDownloadProxyFactory.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "onServiceConnected failed, error:" + th2.toString());
            }
            TPDLProxyLog.i(TPDownloadProxyFactory.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "on service connected!");
            if (TPDownloadProxyFactory.downloadProxyFactoryAidl == null) {
                TPDLProxyLog.i(TPDownloadProxyFactory.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "on service connected, aidl is null!");
                return;
            }
            TPDLProxyLog.i(TPDownloadProxyFactory.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "on service connected, aidl not null!");
            TPDownloadProxyFactory.setCanUseAIDL(true);
            if (TPDownloadProxyFactory.mCallback != null) {
                TPDownloadProxyFactory.mCallback.onBindSuccess();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            TPDLProxyLog.i(TPDownloadProxyFactory.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "on service disconnected");
            TPDownloadProxyFactoryAidl unused = TPDownloadProxyFactory.downloadProxyFactoryAidl = null;
            TPDownloadProxyFactory.setCanUseAIDL(false);
            TPDownloadProxyFactory.ensurePlayManagerService(TPDownloadProxyFactory.mCallback);
        }
    };

    public static synchronized boolean canUseService() {
        synchronized (TPDownloadProxyFactory.class) {
            if (mUseService) {
                if (mCanUseAIDL) {
                    TPDownloadProxyFactoryAidl tPDownloadProxyFactoryAidl = downloadProxyFactoryAidl;
                    if (tPDownloadProxyFactoryAidl != null) {
                        tPDownloadProxyFactoryAidl.isReadyForPlay();
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
    }

    public static boolean ensurePlayManagerService(TPDLProxyBindServiceCallback tPDLProxyBindServiceCallback) {
        Context context = TPDownloadProxyHelper.getContext();
        if (context == null) {
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "ensurePlayManagerService get context null!");
            return false;
        }
        mCallback = tPDLProxyBindServiceCallback;
        TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "ensurePlayManagerService ok");
        try {
            Intent intent = new Intent(context, TPDownloadProxyService.class);
            context.startService(intent);
            if (!context.bindService(intent, mConnection, 1)) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "ensurePlayManagerService bind service failed!");
            }
            return true;
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "ensurePlayManagerService failed, error:" + th2.toString());
            return false;
        }
    }

    public static synchronized boolean getCanUseAIDL() {
        boolean z10;
        synchronized (TPDownloadProxyFactory.class) {
            z10 = mCanUseAIDL;
        }
        return z10;
    }

    public static String getNativeVersion() {
        if (!mUseService) {
            return TPDownloadProxyNative.getInstance().getNativeVersion();
        }
        if (!mCanUseAIDL) {
            return TPDownloadProxyNative.getInstance().getNativeVersion();
        }
        TPDownloadProxyFactoryAidl tPDownloadProxyFactoryAidl = downloadProxyFactoryAidl;
        if (tPDownloadProxyFactoryAidl != null) {
            try {
                return tPDownloadProxyFactoryAidl.getNativeVersion();
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getNativeVersion failed, error:" + th2.toString());
            }
        }
        return TPDownloadProxyNative.getInstance().getNativeVersion();
    }

    public static ITPDownloadProxy getTPDownloadProxy(int i9) {
        ITPDownloadProxy iTPDownloadProxy;
        if (i9 <= 0) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getTPDownloadProxy is invalid, serviceType:".concat(String.valueOf(i9)));
            return null;
        } else if (mUseService) {
            if (mCanUseAIDL) {
                try {
                    return getTPDownloadProxyService(i9);
                } catch (Throwable th2) {
                    TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getTPDownloadProxy failed, error:" + th2.toString());
                    return null;
                }
            }
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getTPDownloadProxy failed, can't use aidl!");
            return null;
        } else {
            synchronized (mMapObject) {
                iTPDownloadProxy = mvTPDownloadProxyMap.get(Integer.valueOf(i9));
                if (iTPDownloadProxy == null) {
                    iTPDownloadProxy = new TPDownloadProxy(i9);
                    mvTPDownloadProxyMap.put(Integer.valueOf(i9), iTPDownloadProxy);
                }
            }
            return iTPDownloadProxy;
        }
    }

    private static synchronized ITPDownloadProxy getTPDownloadProxyService(int i9) {
        TPDownloadProxyClient tPDownloadProxyClient;
        synchronized (TPDownloadProxyFactory.class) {
            if (downloadProxyFactoryAidl != null) {
                synchronized (mvTPDownloadProxyClientMap) {
                    tPDownloadProxyClient = mvTPDownloadProxyClientMap.get(Integer.valueOf(i9));
                    if (tPDownloadProxyClient == null) {
                        tPDownloadProxyClient = new TPDownloadProxyClient(downloadProxyFactoryAidl.getTPDownloadProxy(i9));
                    }
                    mvTPDownloadProxyClientMap.put(Integer.valueOf(i9), tPDownloadProxyClient);
                }
                return tPDownloadProxyClient;
            }
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getTPDownloadProxyService failed, aidl is null!");
            return null;
        }
    }

    public static boolean getUseService() {
        return mUseService;
    }

    public static synchronized boolean isReadyForDownload() {
        synchronized (TPDownloadProxyFactory.class) {
            if (!mUseService) {
                TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "isReadyForDownload ret:" + mIsReadyForDownload);
                return mIsReadyForDownload;
            } else if (mCanUseAIDL) {
                TPDownloadProxyFactoryAidl tPDownloadProxyFactoryAidl = downloadProxyFactoryAidl;
                return tPDownloadProxyFactoryAidl != null ? tPDownloadProxyFactoryAidl.isReadyForDownload() : false;
            } else {
                return false;
            }
        }
    }

    public static synchronized boolean isReadyForPlay() {
        synchronized (TPDownloadProxyFactory.class) {
            if (!mUseService) {
                boolean isReadyForWork = TPDownloadProxyNative.getInstance().isReadyForWork();
                TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "isReadyForPlay ret:".concat(String.valueOf(isReadyForWork)));
                return isReadyForWork;
            } else if (mCanUseAIDL) {
                TPDownloadProxyFactoryAidl tPDownloadProxyFactoryAidl = downloadProxyFactoryAidl;
                return tPDownloadProxyFactoryAidl != null ? tPDownloadProxyFactoryAidl.isReadyForPlay() : false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void setCanUseAIDL(boolean z10) {
        synchronized (TPDownloadProxyFactory.class) {
            mCanUseAIDL = z10;
        }
    }

    public static synchronized void setReadyForDownload(boolean z10) {
        synchronized (TPDownloadProxyFactory.class) {
            mIsReadyForDownload = z10;
        }
    }

    public static void setUseService(boolean z10) {
        mUseService = z10;
    }
}

package com.tencent.thumbplayer.core.downloadproxy.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager;
import com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLFileSystem;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyUtils;
import java.io.File;
/* loaded from: classes4.dex */
public class TPDownloadProxy implements ITPDownloadProxy {
    private static final String FILE_NAME = "TPDownloadProxy";
    private int mServiceType;
    private String mCurrentStoragePath = "";
    private boolean mIsInit = false;
    private Context mContext = null;

    public TPDownloadProxy(int i9) {
        this.mServiceType = i9;
    }

    private void getCellularNetwork(Context context) {
        if (context == null) {
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, context is null, can not set interface 4g");
        } else if (Build.VERSION.SDK_INT >= 23) {
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, connectivityManager is null, can not set interface 4g");
            } else {
                connectivityManager.requestNetwork(builder.build(), new ConnectivityManager.NetworkCallback() { // from class: com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxy.1
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onAvailable(Network network) {
                        super.onAvailable(network);
                        TPListenerManager.getInstance().setNetwork(network);
                        long networkHandle = network.getNetworkHandle();
                        TPDLProxyLog.i(TPDownloadProxy.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, net_id_t: ".concat(String.valueOf(networkHandle)));
                        TPDownloadProxy.this.setUserData(TPDownloadProxyEnum.CELLULAR_NETWORK_INTERFACE_ID, Long.valueOf(networkHandle));
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onLost(Network network) {
                        super.onLost(network);
                        TPDownloadProxy.this.setUserData(TPDownloadProxyEnum.CELLULAR_NETWORK_INTERFACE_ID, 0);
                        TPDLProxyLog.i(TPDownloadProxy.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network failed");
                    }
                });
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int checkResourceStatus(String str, String str2, int i9) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().checkResourceStatus(str, str2, i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "checkResourceStatus failed, error:" + th2.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int clearCache(String str, String str2, int i9) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().clearCache(str, str2, i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "clearCache failed, error:" + th2.toString());
                return -1;
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int deinit() {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                this.mIsInit = false;
                return TPDownloadProxyNative.getInstance().deInitService(this.mServiceType);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "deinit failed, error:" + th2.toString());
                return -1;
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getClipPlayUrl(int i9, int i10, int i11) {
        String str = "";
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                str = TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getClipPlayUrl(i9, i10, i11));
                if (i11 != 2) {
                    TPDownloadProxyNative.getInstance().startDownload(i9);
                }
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getClipPlayUrl failed, error:" + th2.toString());
            }
        }
        return str;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getNativeInfo(int i9) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getNativeInfo(i9));
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getNativeInfo failed, error:" + th2.toString());
                return null;
            }
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getPlayErrorCodeStr(int i9) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getErrorCodeStr(i9));
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getPlayErrorCodeStr failed, error:" + th2.toString());
            }
        }
        return "";
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getPlayUrl(int i9, int i10) {
        String str = "";
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                str = TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getClipPlayUrl(i9, 1, i10));
                if (i10 != 2) {
                    TPDownloadProxyNative.getInstance().startDownload(i9);
                }
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getPlayUrl failed, error:" + th2.toString());
            }
        }
        return str;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public long getResourceSize(String str, String str2) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().getResourceSize(str, str2);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getResourceSize failed, error:" + th2.toString());
            }
        }
        return -1L;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public synchronized int init(Context context, TPDLProxyInitParam tPDLProxyInitParam) {
        int initService;
        if (this.mIsInit) {
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "download already init");
            return 0;
        }
        TPDownloadProxyNative.getInstance().setAppContext(context);
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            if (!TextUtils.isEmpty(tPDLProxyInitParam.getAppVer())) {
                setUserData(TPDownloadProxyEnum.USER_APP_VERSION, tPDLProxyInitParam.getAppVer());
            }
            if (tPDLProxyInitParam.getPlatform() > 0) {
                setUserData("platform", Integer.valueOf(tPDLProxyInitParam.getPlatform()));
            }
            if (!TextUtils.isEmpty(tPDLProxyInitParam.getGuid())) {
                setUserData(TPDownloadProxyEnum.USER_GUID, tPDLProxyInitParam.getGuid());
            }
            String cacheDir = tPDLProxyInitParam.getCacheDir();
            if (TextUtils.isEmpty(cacheDir) && context != null) {
                try {
                    File properCacheDirectory = TPDLFileSystem.getProperCacheDirectory(context, "download");
                    if (properCacheDirectory != null) {
                        cacheDir = properCacheDirectory.getAbsolutePath();
                    }
                } catch (Throwable th2) {
                    TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "init get cache dir failed, error:" + th2.toString());
                }
            }
            TPListenerManager.getInstance().initHandler();
            if (TextUtils.isEmpty(tPDLProxyInitParam.getDataDir()) && !TextUtils.isEmpty(this.mCurrentStoragePath)) {
                initService = TPDownloadProxyNative.getInstance().initService(this.mServiceType, cacheDir, this.mCurrentStoragePath, tPDLProxyInitParam.getConfigStr());
            } else {
                if (!TextUtils.isEmpty(tPDLProxyInitParam.getDataDir())) {
                    this.mCurrentStoragePath = tPDLProxyInitParam.getDataDir();
                }
                initService = TPDownloadProxyNative.getInstance().initService(this.mServiceType, cacheDir, tPDLProxyInitParam.getDataDir(), tPDLProxyInitParam.getConfigStr());
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxy.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    String action = intent.getAction();
                    if ("android.intent.action.SCREEN_OFF".equals(action)) {
                        TPDownloadProxy.this.pushEvent(20);
                    } else if ("android.intent.action.SCREEN_ON".equals(action)) {
                        TPDownloadProxy.this.pushEvent(19);
                    }
                }
            };
            if (context != null) {
                context.registerReceiver(broadcastReceiver, intentFilter);
            }
            if (initService == 0) {
                this.mIsInit = true;
            }
            this.mContext = context;
            return initService;
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int pauseDownload(int i9) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().pauseDownload(i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "pauseDownload failed, error:" + th2.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void pushEvent(int i9) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().pushEvent(i9);
                if (9 == i9) {
                    TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, update net interface info");
                    getCellularNetwork(this.mContext);
                }
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network pushEvent failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int removeStorageCache(String str) {
        if (!TextUtils.isEmpty(str) && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().deleteCache(this.mCurrentStoragePath, str);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "deleteCache failed, error:" + th2.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int resumeDownload(int i9) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().resumeDownload(i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "resumeDownload failed, error:" + th2.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public boolean setClipInfo(int i9, int i10, String str, TPDownloadParam tPDownloadParam) {
        int dlType = tPDownloadParam.getDlType();
        if (tPDownloadParam.isOffline()) {
            dlType += 300;
        }
        int i11 = dlType;
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().setClipInfo(i9, i10, str, i11, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo()) >= 0;
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setClipInfo failed, error:" + th2.toString());
                return false;
            }
        }
        return false;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setLogListener(ITPDLProxyLogListener iTPDLProxyLogListener) {
        TPDLProxyLog.setLogListener(this.mServiceType, iTPDLProxyLogListener);
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setMaxStorageSizeMB(long j10) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().setMaxStorageSizeMB(this.mServiceType, j10);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setMaxStorageSizeMB failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setPlayState(int i9, int i10) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().setPlayerState(i9, i10);
                if (i10 == 1) {
                    TPDownloadProxyNative.getInstance().updateTaskInfo(i9, TPDownloadProxyEnum.TASKINFO_PLAY_OFFSET, String.valueOf(TPListenerManager.getInstance().getPlaylistener(i9).getCurrentPlayOffset()));
                    TPDownloadProxyNative.getInstance().updatePlayerPlayMsg(i9, (int) (TPListenerManager.getInstance().getPlaylistener(i9).getCurrentPosition() / 1000), (int) (TPListenerManager.getInstance().getPlaylistener(i9).getPlayerBufferLength() / 1000), (int) (TPListenerManager.getInstance().getPlaylistener(i9).getAdvRemainTime() / 1000));
                }
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setPlayState failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setUserData(String str, Object obj) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                if (str.equalsIgnoreCase(TPDownloadProxyEnum.USER_APP_VERSION)) {
                    TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_APP_VERSION, (String) obj);
                } else if (str.equalsIgnoreCase("platform")) {
                    TPDownloadProxyNative.getInstance().setUserData("platform", obj.toString());
                } else if (str.equalsIgnoreCase(TPDownloadProxyEnum.USER_GUID)) {
                    TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_GUID, (String) obj);
                } else if (str.equalsIgnoreCase(TPDownloadProxyEnum.USER_IS_VIP)) {
                    TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_IS_VIP, ((Boolean) obj).booleanValue() ? "1" : "0");
                } else if (str.equalsIgnoreCase(TPDownloadProxyEnum.USER_UPC)) {
                    TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_UPC, (String) obj);
                } else if (str.equalsIgnoreCase(TPDownloadProxyEnum.USER_UPC_STATE)) {
                    TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_UPC_STATE, obj.toString());
                } else if (str.equalsIgnoreCase(TPDownloadProxyEnum.USER_PROXY_CONFIG)) {
                    TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_PROXY_CONFIG, obj.toString());
                } else {
                    TPDownloadProxyNative.getInstance().setUserData(str, obj.toString());
                }
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setUserData failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipOfflineDownload(String str, int i9, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        int i10 = -1;
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                i10 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, 102, i9);
                TPListenerManager.getInstance().setOfflineDownloadListener(i10, iTPOfflineDownloadListener);
                return i10;
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startClipOfflineDownload failed, error:" + th2.toString());
                return i10;
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipPlay(String str, int i9, ITPPlayListener iTPPlayListener) {
        int i10 = -1;
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                i10 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, 2, i9);
                TPListenerManager.getInstance().setPlayListener(i10, iTPPlayListener);
                return i10;
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startClipPlay failed, error:" + th2.toString());
                return i10;
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipPreload(String str, int i9, ITPPreLoadListener iTPPreLoadListener) {
        int i10 = -1;
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                i10 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, 202, i9);
                TPListenerManager.getInstance().setPreLoadListener(i10, iTPPreLoadListener);
                return i10;
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startClipPreload failed, error:" + th2.toString());
                return i10;
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startOfflineDownload(String str, TPDownloadParam tPDownloadParam, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        int i9 = -1;
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                int dlType = tPDownloadParam.getDlType() + 100;
                i9 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, dlType, tPDownloadParam.getClipCount());
                TPListenerManager.getInstance().setOfflineDownloadListener(i9, iTPOfflineDownloadListener);
                if (!TextUtils.isEmpty(tPDownloadParam.getKeyid())) {
                    str = tPDownloadParam.getKeyid();
                }
                TPDownloadProxyNative.getInstance().setClipInfo(i9, tPDownloadParam.getClipNo(), str, dlType, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo());
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "stopOfflineDownload failed, error:" + th2.toString());
            }
        }
        return i9;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startPlay(String str, TPDownloadParam tPDownloadParam, ITPPlayListener iTPPlayListener) {
        int dlType = tPDownloadParam.getDlType();
        if (iTPPlayListener != null) {
            tPDownloadParam.getExtInfoMap().put(TPDownloadProxyEnum.DLPARAM_ADV_REMAIN_TIME, Long.valueOf(iTPPlayListener.getAdvRemainTime() / 1000));
        }
        if (tPDownloadParam.isOffline()) {
            dlType += 300;
        }
        int i9 = -1;
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                if (tPDownloadParam.isAdaptive() && (dlType == 3 || dlType == 5)) {
                    dlType += 400;
                }
                int i10 = dlType;
                i9 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, i10, tPDownloadParam.getClipCount());
                if (!TextUtils.isEmpty(tPDownloadParam.getKeyid())) {
                    str = tPDownloadParam.getKeyid();
                }
                TPDownloadProxyNative.getInstance().setClipInfo(i9, tPDownloadParam.getClipNo(), str, i10, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo());
                TPListenerManager.getInstance().setPlayListener(i9, iTPPlayListener);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startPlay failed, error:" + th2.toString());
            }
        }
        return i9;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startPreload(String str, TPDownloadParam tPDownloadParam, ITPPreLoadListener iTPPreLoadListener) {
        int i9 = -1;
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                int dlType = tPDownloadParam.getDlType() + 200;
                i9 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, dlType, tPDownloadParam.getClipCount());
                TPListenerManager.getInstance().setPreLoadListener(i9, iTPPreLoadListener);
                Object extInfo = tPDownloadParam.getExtInfo(TPDownloadProxyEnum.DLPARAM_PREFERRED_RESOLUTION);
                TPDownloadProxyNative.getInstance().updateTaskInfo(i9, TPDownloadProxyEnum.DLPARAM_PREFERRED_RESOLUTION, String.valueOf(extInfo instanceof Long ? ((Long) extInfo).longValue() : 0L));
                if (!TextUtils.isEmpty(tPDownloadParam.getKeyid())) {
                    str = tPDownloadParam.getKeyid();
                }
                TPDownloadProxyNative.getInstance().setClipInfo(i9, tPDownloadParam.getClipNo(), str, dlType, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo());
                TPDownloadProxyNative.getInstance().startDownload(i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startPreload failed, error:" + th2.toString());
            }
        }
        return i9;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void startTask(int i9) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().startDownload(i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startTask failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopOfflineDownload(int i9) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().stopDownload(i9);
                TPListenerManager.getInstance().removeOfflineDownloadListener(i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "stopOfflineDownload failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopPlay(int i9) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().stopDownload(i9);
                TPListenerManager.getInstance().removePlayListener(i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "stopPlay failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopPreload(int i9) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().stopDownload(i9);
                TPListenerManager.getInstance().removePreLoadListener(i9);
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "stopPreload failed, error:" + th2.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void updateStoragePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.mCurrentStoragePath = str;
            TPDownloadProxyNative.getInstance().updateStoragePath(this.mServiceType, str);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "updateStoragePath failed, error:" + th2.toString());
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void updateTaskInfo(int i9, String str, Object obj) {
        if (i9 > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().updateTaskInfo(i9, str, obj.toString());
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "updateTaskInfo failed, error:" + th2.toString());
            }
        }
    }
}

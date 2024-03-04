package com.tencent.thumbplayer.core.downloadproxy.apiinner;

import android.net.Network;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPCGIRequester;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyUtils;
import com.tencent.thumbplayer.core.downloadproxy.utils.TVKThreadUtil;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class TPListenerManager {
    private static final String FILE_NAME = "TPListenerManager";
    private static final int MSG_CONFIG_URL = 2011;
    private static final int MSG_CURRENT_CDN_URL = 5;
    private static final int MSG_CURRENT_CDN_URL_INFO = 6;
    private static final int MSG_DID_RELEASE_MEMORY = 2016;
    private static final int MSG_DOWNLOAD_PROTOCOL = 9;
    private static final int MSG_DOWNLOAD_STATUS = 8;
    private static final int MSG_ERROR = 4;
    private static final int MSG_FINISH = 3;
    private static final int MSG_MULTI_NETWORK = 2012;
    private static final int MSG_NOTIFY_FLV_PRELOAD_STATUS = 2009;
    private static final int MSG_NOTIFY_HTTP_HEADER = 2006;
    private static final int MSG_NOTIFY_LOSE_PACKAGE_CEHCK = 2004;
    private static final int MSG_NOTIFY_M3U8_CONTENT = 2007;
    private static final int MSG_NOTIFY_PLAYER_SWITCH_DEFINITION = 2003;
    private static final int MSG_NOTIFY_SOCKET_FD = 2008;
    private static final int MSG_PLAY_VIDEO_NOT_FOUND = 101;
    private static final int MSG_PREPARE_FINISH = 50;
    private static final int MSG_PROGRESS = 2;
    private static final int MSG_PROXY_CANCEL_READ_DATA = 202;
    private static final int MSG_PROXY_GET_CONTENT_TYPE = 205;
    private static final int MSG_PROXY_GET_DATA_FILE_PATH = 204;
    private static final int MSG_PROXY_GET_DATA_TOTAL_SIZE = 203;
    private static final int MSG_PROXY_READ_DATA = 201;
    private static final int MSG_PROXY_START_READ_DATA = 200;
    private static final int MSG_QUIC_DOWNLOAD_STATUS = 3001;
    private static final int MSG_REPORT_QUIC_QUALITY = 3002;
    private static final int MSG_REPORT_URL = 2010;
    private static final int MSG_TAB_TESTID = 2014;
    private static final int MSG_URL_EXPIRED = 7;
    private static final int MSG_WILL_RELEASE_MEMORY = 2015;
    private static final int MSG_WUJI_CONFIG_URL = 2013;
    private static final String THREAD_NAME = "TVKDL-Listener";
    private ITPDownloadListener mITPDownloadListener;
    private Handler mMsgHandler;
    private HandlerThread mMsgHandlerThread;
    private Network mNetwork;
    private Map<Integer, ITPOfflineDownloadListener> mOfflineDownloadListenerMap;
    private Map<Integer, ITPPlayListener> mPlayListenerMap;
    private Map<Integer, ITPPreLoadListener> mPreLoadListenerMap;
    private Runnable updatePlayerInfo;
    private static final Object PLAY_LISTENER_MAP_MUTEX = new Object();
    private static final Object PRELOAD_LISTENER_MAP_MUTEX = new Object();
    private static final Object OFFLINE_LISTENER_MAP_MUTEX = new Object();

    /* loaded from: classes4.dex */
    static class SingletonHolder {
        private static final TPListenerManager INSTANCE = new TPListenerManager();

        private SingletonHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchCallbackMessage(int i9, int i10, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        ITPPlayListener playlistener = getPlaylistener(i10);
        if (playlistener != null) {
            dispatchPlayMessage(playlistener, i9, i10, obj, obj2, obj3, obj4, obj5);
            return;
        }
        ITPPreLoadListener preLoadListener = getPreLoadListener(i10);
        if (preLoadListener != null) {
            dispatchPreLoadMessage(preLoadListener, i9, i10, obj, obj2, obj3, obj4, obj5);
            return;
        }
        ITPOfflineDownloadListener offlineDownloadListener = getOfflineDownloadListener(i10);
        if (offlineDownloadListener != null) {
            dispatchOfflineDownloadMessage(offlineDownloadListener, i9, i10, obj, obj2, obj3, obj4, obj5);
        } else if (this.mITPDownloadListener != null) {
            if (i9 == 2015) {
                this.mITPDownloadListener.willReleaseMemory(TPDLProxyUtils.byteArrayToString((byte[]) obj));
            } else if (i9 == 2016) {
                this.mITPDownloadListener.didReleaseMemory(TPDLProxyUtils.byteArrayToString((byte[]) obj));
            } else if (i9 != 3002) {
            } else {
                this.mITPDownloadListener.onQuicQualityReportUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj));
            }
        }
    }

    private void dispatchOfflineDownloadMessage(ITPOfflineDownloadListener iTPOfflineDownloadListener, int i9, int i10, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        if (iTPOfflineDownloadListener == null) {
            return;
        }
        switch (i9) {
            case 2:
                iTPOfflineDownloadListener.onDownloadProgressUpdate(TPDLProxyUtils.objectToInt(obj, 0), TPDLProxyUtils.objectToInt(obj2, 0), TPDLProxyUtils.objectToLong(obj3, 0L), TPDLProxyUtils.objectToLong(obj4, 0L), TPDLProxyUtils.byteArrayToString((byte[]) obj5));
                return;
            case 3:
                iTPOfflineDownloadListener.onDownloadFinish();
                return;
            case 4:
                iTPOfflineDownloadListener.onDownloadError(((Integer) obj).intValue(), ((Integer) obj2).intValue(), TPDLProxyUtils.byteArrayToString((byte[]) obj3));
                return;
            case 5:
                iTPOfflineDownloadListener.onDownloadCdnUrlUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj));
                return;
            case 6:
                iTPOfflineDownloadListener.onDownloadCdnUrlInfoUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2), TPDLProxyUtils.byteArrayToString((byte[]) obj3), TPDLProxyUtils.byteArrayToString((byte[]) obj4));
                return;
            case 7:
                String byteArrayToString = TPDLProxyUtils.byteArrayToString((byte[]) obj);
                long objectToLong = TPDLProxyUtils.objectToLong(obj2, 0L);
                HashMap hashMap = new HashMap();
                if (!TextUtils.isEmpty(byteArrayToString)) {
                    hashMap.put("exttag", byteArrayToString);
                    hashMap.put("randnum", String.valueOf(objectToLong));
                }
                iTPOfflineDownloadListener.onDownloadCdnUrlExpired(hashMap);
                return;
            case 8:
                iTPOfflineDownloadListener.onDownloadStatusUpdate(TPDLProxyUtils.objectToInt(obj, 0));
                return;
            case 9:
                iTPOfflineDownloadListener.onDownloadProtocolUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2));
                return;
            default:
                return;
        }
    }

    private void dispatchPlayMessage(ITPPlayListener iTPPlayListener, int i9, int i10, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        if (iTPPlayListener == null) {
            return;
        }
        if (i9 == 2) {
            iTPPlayListener.onDownloadProgressUpdate(TPDLProxyUtils.objectToInt(obj, 0), TPDLProxyUtils.objectToInt(obj2, 0), TPDLProxyUtils.objectToLong(obj3, 0L), TPDLProxyUtils.objectToLong(obj4, 0L), TPDLProxyUtils.byteArrayToString((byte[]) obj5));
        } else if (i9 == 3) {
            iTPPlayListener.onDownloadFinish();
        } else if (i9 == 101) {
            String byteArrayToString = TPDLProxyUtils.byteArrayToString((byte[]) obj);
            long objectToLong = TPDLProxyUtils.objectToLong(obj2, 0L);
            HashMap hashMap = new HashMap();
            if (!TextUtils.isEmpty(byteArrayToString)) {
                hashMap.put("exttag", byteArrayToString);
                hashMap.put("randnum", String.valueOf(objectToLong));
            }
            iTPPlayListener.onPlayCallback(1, hashMap, null, null, null);
        } else if (i9 == 2009) {
            int objectToInt = TPDLProxyUtils.objectToInt(obj, 0);
            iTPPlayListener.onPlayCallback(5, Integer.valueOf(objectToInt), obj2 == null ? null : (byte[]) obj2, TPDLProxyUtils.byteArrayToString((byte[]) obj3), Integer.valueOf(TPDLProxyUtils.objectToInt(obj4, 0)));
        } else if (i9 == 2012) {
            Object byteArrayToString2 = TPDLProxyUtils.byteArrayToString((byte[]) obj);
            iTPPlayListener.onPlayCallback(7, byteArrayToString2, null, null, null);
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "MSG_MULTI_NETWORK: ".concat(String.valueOf(byteArrayToString2)));
        } else if (i9 == 2014) {
            Object byteArrayToString3 = TPDLProxyUtils.byteArrayToString((byte[]) obj);
            Object byteArrayToString4 = TPDLProxyUtils.byteArrayToString((byte[]) obj2);
            iTPPlayListener.onPlayCallback(8, byteArrayToString3, byteArrayToString4, null, null);
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "MSG_TAB_TESTID: ".concat(String.valueOf(byteArrayToString4)));
        } else if (i9 == 3001) {
            iTPPlayListener.onPlayCallback(6, TPDLProxyUtils.byteArrayToString((byte[]) obj), null, null, null);
        } else if (i9 == 2003) {
            iTPPlayListener.onPlayCallback(2, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2), Integer.valueOf(TPDLProxyUtils.objectToInt(obj3, 0)), null);
        } else if (i9 == 2004) {
            final int objectToInt2 = TPDLProxyUtils.objectToInt(obj2, 0);
            TVKThreadUtil.getScheduledExecutorServiceInstance().execute(new Runnable() { // from class: com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager.3
                @Override // java.lang.Runnable
                public void run() {
                    TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_LOSS_PACKAGE_INFO, TPDLProxyUtils.losePackageCheck(objectToInt2));
                }
            });
        } else if (i9 == 2006) {
            iTPPlayListener.onPlayCallback(3, TPDLProxyUtils.byteArrayToString((byte[]) obj), null, null, null);
        } else if (i9 != 2007) {
            switch (i9) {
                case 5:
                    iTPPlayListener.onDownloadCdnUrlUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj));
                    return;
                case 6:
                    iTPPlayListener.onDownloadCdnUrlInfoUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2), TPDLProxyUtils.byteArrayToString((byte[]) obj3), TPDLProxyUtils.byteArrayToString((byte[]) obj4));
                    return;
                case 7:
                    String byteArrayToString5 = TPDLProxyUtils.byteArrayToString((byte[]) obj);
                    long objectToLong2 = TPDLProxyUtils.objectToLong(obj2, 0L);
                    Map<String, String> hashMap2 = new HashMap<>();
                    if (!TextUtils.isEmpty(byteArrayToString5)) {
                        hashMap2.put("exttag", byteArrayToString5);
                        hashMap2.put("randnum", String.valueOf(objectToLong2));
                    }
                    iTPPlayListener.onDownloadCdnUrlExpired(hashMap2);
                    return;
                case 8:
                    iTPPlayListener.onDownloadStatusUpdate(TPDLProxyUtils.objectToInt(obj, 0));
                    return;
                case 9:
                    iTPPlayListener.onDownloadProtocolUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2));
                    return;
                default:
                    return;
            }
        } else {
            iTPPlayListener.onPlayCallback(4, TPDLProxyUtils.byteArrayToString((byte[]) obj), null, null, null);
        }
    }

    private void dispatchPreLoadMessage(ITPPreLoadListener iTPPreLoadListener, int i9, int i10, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        if (iTPPreLoadListener == null) {
            return;
        }
        if (i9 == 2) {
            iTPPreLoadListener.onPrepareDownloadProgressUpdate(TPDLProxyUtils.objectToInt(obj, 0), TPDLProxyUtils.objectToInt(obj2, 0), TPDLProxyUtils.objectToLong(obj3, 0L), TPDLProxyUtils.objectToLong(obj4, 0L), TPDLProxyUtils.byteArrayToString((byte[]) obj5));
        } else if (i9 == 4) {
            iTPPreLoadListener.onPrepareError(((Integer) obj).intValue(), ((Integer) obj2).intValue(), TPDLProxyUtils.byteArrayToString((byte[]) obj3));
        } else if (i9 != 50) {
        } else {
            iTPPreLoadListener.onPrepareOK();
        }
    }

    public static TPListenerManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public ITPOfflineDownloadListener getOfflineDownloadListener(int i9) {
        ITPOfflineDownloadListener iTPOfflineDownloadListener;
        synchronized (OFFLINE_LISTENER_MAP_MUTEX) {
            iTPOfflineDownloadListener = this.mOfflineDownloadListenerMap.get(Integer.valueOf(i9));
        }
        return iTPOfflineDownloadListener;
    }

    public ITPPlayListener getPlaylistener(int i9) {
        ITPPlayListener iTPPlayListener;
        synchronized (PLAY_LISTENER_MAP_MUTEX) {
            iTPPlayListener = this.mPlayListenerMap.get(Integer.valueOf(i9));
        }
        return iTPPlayListener;
    }

    public ITPPreLoadListener getPreLoadListener(int i9) {
        ITPPreLoadListener iTPPreLoadListener;
        synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
            iTPPreLoadListener = this.mPreLoadListenerMap.get(Integer.valueOf(i9));
        }
        return iTPPreLoadListener;
    }

    public synchronized void handleCallbackMessage(final int i9, final int i10, final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5) {
        if (2008 != i9) {
            if (i9 != 2010 && i9 != 2011 && i9 != 2013) {
                this.mMsgHandler.post(new Runnable() { // from class: com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        TPListenerManager.this.dispatchCallbackMessage(i9, i10, obj, obj2, obj3, obj4, obj5);
                    }
                });
                return;
            }
            TPCGIRequester.getInstance().addRequestItem(TPDLProxyUtils.byteArrayToString((byte[]) obj), i9);
        } else if (this.mNetwork == null) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, network is null");
        } else {
            String byteArrayToString = TPDLProxyUtils.byteArrayToString((byte[]) obj);
            int parseInt = Integer.parseInt(byteArrayToString);
            FileDescriptor fileDescriptor = new FileDescriptor();
            Field declaredField = FileDescriptor.class.getDeclaredField("descriptor");
            declaredField.setAccessible(true);
            declaredField.setInt(fileDescriptor, parseInt);
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, bind begin, sock fd: ".concat(String.valueOf(parseInt)));
            if (Build.VERSION.SDK_INT >= 23) {
                this.mNetwork.bindSocket(fileDescriptor);
                TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, bind socket success, sock fd: ".concat(String.valueOf(parseInt)));
            }
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, sock call back end, sock fd: " + parseInt + ", str_sock: " + byteArrayToString);
        }
    }

    public int handleIntCallbackMessage(int i9, int i10, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        ITPPlayListener playlistener = getPlaylistener(i10);
        if (playlistener != null) {
            if (i9 == 200) {
                return playlistener.onStartReadData(i10, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.objectToLong(obj2, 0L), TPDLProxyUtils.objectToLong(obj3, -1L));
            }
            if (i9 == 202) {
                return playlistener.onStopReadData(i10, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.objectToInt(obj2, 0));
            }
            if (i9 == 201) {
                return playlistener.onReadData(i10, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.objectToLong(obj2, 0L), TPDLProxyUtils.objectToInt(obj3, 0));
            }
            return 0;
        }
        return 0;
    }

    public String handleStringCallbackMessage(int i9, int i10, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        ITPPlayListener playlistener = getPlaylistener(i10);
        if (playlistener != null) {
            if (i9 == 205) {
                return playlistener.getContentType(i10, TPDLProxyUtils.byteArrayToString((byte[]) obj));
            }
            if (i9 == 203) {
                return String.valueOf(playlistener.getDataTotalSize(i10, TPDLProxyUtils.byteArrayToString((byte[]) obj)));
            }
            if (i9 == 204) {
                return playlistener.getDataFilePath(i10, TPDLProxyUtils.byteArrayToString((byte[]) obj));
            }
        }
        return "";
    }

    public void initHandler() {
        if (this.mMsgHandlerThread == null) {
            HandlerThread handlerThread = new HandlerThread(THREAD_NAME);
            this.mMsgHandlerThread = handlerThread;
            handlerThread.start();
            Handler handler = new Handler(this.mMsgHandlerThread.getLooper());
            this.mMsgHandler = handler;
            handler.postDelayed(this.updatePlayerInfo, 1000L);
        }
    }

    public void removeAllPlayListener() {
        synchronized (PLAY_LISTENER_MAP_MUTEX) {
            this.mPlayListenerMap.clear();
        }
    }

    public void removeAllPreLoadListener() {
        synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
            this.mPreLoadListenerMap.clear();
        }
    }

    public void removeOfflineDownloadListener(int i9) {
        if (i9 > 0) {
            synchronized (OFFLINE_LISTENER_MAP_MUTEX) {
                this.mOfflineDownloadListenerMap.remove(Integer.valueOf(i9));
            }
        }
    }

    public void removePlayListener(int i9) {
        if (i9 > 0) {
            synchronized (PLAY_LISTENER_MAP_MUTEX) {
                this.mPlayListenerMap.remove(Integer.valueOf(i9));
            }
        }
    }

    public void removePreLoadListener(int i9) {
        if (i9 > 0) {
            synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
                this.mPreLoadListenerMap.remove(Integer.valueOf(i9));
            }
        }
    }

    public void setITPDownloadListener(ITPDownloadListener iTPDownloadListener) {
        this.mITPDownloadListener = iTPDownloadListener;
    }

    public void setNetwork(Network network) {
        TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, set network");
        this.mNetwork = network;
    }

    public void setOfflineDownloadListener(int i9, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        if (i9 <= 0 || iTPOfflineDownloadListener == null) {
            return;
        }
        synchronized (OFFLINE_LISTENER_MAP_MUTEX) {
            this.mOfflineDownloadListenerMap.put(Integer.valueOf(i9), iTPOfflineDownloadListener);
        }
    }

    public void setPlayListener(int i9, ITPPlayListener iTPPlayListener) {
        if (i9 <= 0 || iTPPlayListener == null) {
            return;
        }
        synchronized (PLAY_LISTENER_MAP_MUTEX) {
            this.mPlayListenerMap.put(Integer.valueOf(i9), iTPPlayListener);
        }
    }

    public void setPreLoadListener(int i9, ITPPreLoadListener iTPPreLoadListener) {
        if (i9 <= 0 || iTPPreLoadListener == null) {
            return;
        }
        synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
            this.mPreLoadListenerMap.put(Integer.valueOf(i9), iTPPreLoadListener);
        }
    }

    private TPListenerManager() {
        this.mNetwork = null;
        this.mITPDownloadListener = null;
        this.mPlayListenerMap = new HashMap();
        this.mPreLoadListenerMap = new HashMap();
        this.mOfflineDownloadListenerMap = new HashMap();
        this.updatePlayerInfo = new Runnable() { // from class: com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager.1
            @Override // java.lang.Runnable
            public void run() {
                Map map;
                synchronized (TPListenerManager.PLAY_LISTENER_MAP_MUTEX) {
                    map = TPListenerManager.this.mPlayListenerMap;
                }
                try {
                    for (Map.Entry entry : map.entrySet()) {
                        int intValue = ((Integer) entry.getKey()).intValue();
                        ITPPlayListener iTPPlayListener = (ITPPlayListener) entry.getValue();
                        TPDownloadProxyNative.getInstance().updateTaskInfo(intValue, TPDownloadProxyEnum.TASKINFO_PLAY_OFFSET, String.valueOf(iTPPlayListener.getCurrentPlayOffset()));
                        TPDownloadProxyNative.getInstance().updatePlayerPlayMsg(intValue, (int) (iTPPlayListener.getCurrentPosition() / 1000), (int) (iTPPlayListener.getPlayerBufferLength() / 1000), (int) (iTPPlayListener.getAdvRemainTime() / 1000));
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        };
    }
}

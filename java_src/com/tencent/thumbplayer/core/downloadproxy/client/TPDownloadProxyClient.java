package com.tencent.thumbplayer.core.downloadproxy.client;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadParamAidl;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class TPDownloadProxyClient implements ITPDownloadProxy {
    private static final String FILE_NAME = "TPDownloadProxyClient";
    private ITPDownloadProxyAidl downloadProxyAidl;

    public TPDownloadProxyClient(ITPDownloadProxyAidl iTPDownloadProxyAidl) {
        this.downloadProxyAidl = iTPDownloadProxyAidl;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int checkResourceStatus(String str, String str2, int i9) {
        try {
            return this.downloadProxyAidl.checkResourceStatus(str, str2, i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "checkResourceStatus failed, error:" + th2.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int clearCache(String str, String str2, int i9) {
        try {
            return this.downloadProxyAidl.clearCache(str, str2, i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "clearCache failed, error:" + th2.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int deinit() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getClipPlayUrl(int i9, int i10, int i11) {
        try {
            return this.downloadProxyAidl.getClipPlayUrl(i9, i10, i11);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getClipPlayUrl failed, error:" + th2.toString());
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getNativeInfo(int i9) {
        try {
            return this.downloadProxyAidl.getNativeInfo(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getNativeInfo failed, error:" + th2.toString());
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getPlayErrorCodeStr(int i9) {
        try {
            return this.downloadProxyAidl.getPlayErrorCodeStr(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getPlayErrorCodeStr failed, error:" + th2.toString());
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getPlayUrl(int i9, int i10) {
        try {
            return this.downloadProxyAidl.getPlayUrl(i9, i10);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getPlayUrl failed, error:" + th2.toString());
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public long getResourceSize(String str, String str2) {
        try {
            return this.downloadProxyAidl.getResourceSize(str, str2);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "getResourceSize failed, error:" + th2.toString());
            return -1L;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int init(Context context, TPDLProxyInitParam tPDLProxyInitParam) {
        String serialize = TPDLProxyUtils.serialize(tPDLProxyInitParam);
        if (TextUtils.isEmpty(serialize)) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "param is null");
            return -1;
        }
        try {
            return this.downloadProxyAidl.init(serialize);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "init failed, error:" + th2.toString());
            return -2;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int pauseDownload(int i9) {
        try {
            return this.downloadProxyAidl.pauseDownload(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "pauseDownload failed, error:" + th2.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void pushEvent(int i9) {
        try {
            this.downloadProxyAidl.pushEvent(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "pushEvent failed, error:" + th2.toString());
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int removeStorageCache(String str) {
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int resumeDownload(int i9) {
        try {
            return this.downloadProxyAidl.resumeDownload(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "resumeDownload failed, error:" + th2.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public boolean setClipInfo(int i9, int i10, String str, TPDownloadParam tPDownloadParam) {
        try {
            return this.downloadProxyAidl.setClipInfo(i9, i10, str, new TPDownloadParamAidl(tPDownloadParam.getUrlList(), tPDownloadParam.getDlType(), tPDownloadParam.getExtInfoMap()));
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setClipInfo failed, error:" + th2.toString());
            return false;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setLogListener(ITPDLProxyLogListener iTPDLProxyLogListener) {
        TPDLProxyLog.setLogListener(10303, iTPDLProxyLogListener);
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setMaxStorageSizeMB(long j10) {
        try {
            this.downloadProxyAidl.setMaxStorageSizeMB(j10);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setMaxStorageSizeMB failed, error:" + th2.toString());
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setPlayState(int i9, int i10) {
        try {
            this.downloadProxyAidl.setPlayState(i9, i10);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setPlayState failed, error:" + th2.toString());
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setUserData(String str, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, obj);
        try {
            this.downloadProxyAidl.setUserData(hashMap);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "setUserData failed, error:" + th2.toString());
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipOfflineDownload(String str, int i9, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipPlay(String str, int i9, final ITPPlayListener iTPPlayListener) {
        try {
            if (iTPPlayListener == null) {
                return this.downloadProxyAidl.startClipPlay(str, i9, null);
            }
            return this.downloadProxyAidl.startClipPlay(str, i9, new ITPPlayListenerAidl.Stub() { // from class: com.tencent.thumbplayer.core.downloadproxy.client.TPDownloadProxyClient.2
                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public long getAdvRemainTime() {
                    return iTPPlayListener.getAdvRemainTime();
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public String getContentType(int i10, String str2) throws RemoteException {
                    return null;
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public int getCurrentPlayClipNo() {
                    return iTPPlayListener.getCurrentPlayClipNo();
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public long getCurrentPlayOffset() {
                    return iTPPlayListener.getCurrentPlayOffset();
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public long getCurrentPosition() {
                    return iTPPlayListener.getCurrentPosition();
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public String getDataFilePath(int i10, String str2) throws RemoteException {
                    return null;
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public long getDataTotalSize(int i10, String str2) throws RemoteException {
                    return 0L;
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public String getPlayInfo(String str2) {
                    Object playInfo = iTPPlayListener.getPlayInfo(str2);
                    if (playInfo == null || playInfo.getClass() != String.class) {
                        return null;
                    }
                    if (playInfo.getClass() == String.class) {
                        return (String) playInfo;
                    }
                    if (playInfo.getClass() == Integer.class) {
                        return Integer.toString(((Integer) playInfo).intValue());
                    }
                    return null;
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public long getPlayerBufferLength() {
                    return iTPPlayListener.getPlayerBufferLength();
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadCdnUrlExpired(Map map) {
                    iTPPlayListener.onDownloadCdnUrlExpired(map);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadCdnUrlInfoUpdate(String str2, String str3, String str4, String str5) {
                    iTPPlayListener.onDownloadCdnUrlInfoUpdate(str2, str3, str4, str5);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadCdnUrlUpdate(String str2) {
                    iTPPlayListener.onDownloadCdnUrlUpdate(str2);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadError(int i10, int i11, String str2) {
                    iTPPlayListener.onDownloadError(i10, i11, str2);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadFinish() {
                    iTPPlayListener.onDownloadFinish();
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadProgressUpdate(int i10, int i11, long j10, long j11, String str2) {
                    iTPPlayListener.onDownloadProgressUpdate(i10, i11, j10, j11, str2);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadProtocolUpdate(String str2, String str3) {
                    iTPPlayListener.onDownloadProtocolUpdate(str2, str3);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public void onDownloadStatusUpdate(int i10) {
                    iTPPlayListener.onDownloadStatusUpdate(i10);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public int onPlayCallback(int i10, List list) {
                    Object obj = 0;
                    if (list != null && !list.isEmpty()) {
                        if (list.size() == 1) {
                            obj = iTPPlayListener.onPlayCallback(i10, list.get(0), null, null, null);
                        } else if (list.size() == 2) {
                            obj = iTPPlayListener.onPlayCallback(i10, list.get(0), list.get(1), null, null);
                        } else if (list.size() == 3) {
                            obj = iTPPlayListener.onPlayCallback(i10, list.get(0), list.get(1), list.get(2), null);
                        }
                    }
                    if (obj == null || obj.getClass() != Integer.class) {
                        return -1;
                    }
                    return ((Integer) obj).intValue();
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public int onReadData(int i10, String str2, long j10, long j11) throws RemoteException {
                    return 0;
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public int onStartReadData(int i10, String str2, long j10, long j11) throws RemoteException {
                    return 0;
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                public int onStopReadData(int i10, String str2, int i11) throws RemoteException {
                    return 0;
                }
            });
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startClipPlay failed, error:" + th2.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipPreload(String str, int i9, final ITPPreLoadListener iTPPreLoadListener) {
        try {
            return this.downloadProxyAidl.startClipPreload(str, i9, new ITPPreLoadListenerAidl.Stub() { // from class: com.tencent.thumbplayer.core.downloadproxy.client.TPDownloadProxyClient.4
                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
                public void onPrepareDownloadProgressUpdate(int i10, int i11, long j10, long j11, String str2) {
                    iTPPreLoadListener.onPrepareDownloadProgressUpdate(i10, i11, j10, j11, str2);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
                public void onPrepareError(int i10, int i11, String str2) {
                    iTPPreLoadListener.onPrepareError(i10, i11, str2);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
                public void onPrepareOK() {
                    iTPPreLoadListener.onPrepareOK();
                }
            });
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startClipPreload failed, error:" + th2.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startOfflineDownload(String str, TPDownloadParam tPDownloadParam, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startPlay(String str, TPDownloadParam tPDownloadParam, final ITPPlayListener iTPPlayListener) {
        if (this.downloadProxyAidl != null && tPDownloadParam != null) {
            TPDownloadParamAidl tPDownloadParamAidl = new TPDownloadParamAidl(tPDownloadParam.getUrlList(), tPDownloadParam.getDlType(), tPDownloadParam.getExtInfoMap());
            try {
                if (iTPPlayListener == null) {
                    return this.downloadProxyAidl.startPlay(str, tPDownloadParamAidl, null);
                }
                return this.downloadProxyAidl.startPlay(str, tPDownloadParamAidl, new ITPPlayListenerAidl.Stub() { // from class: com.tencent.thumbplayer.core.downloadproxy.client.TPDownloadProxyClient.1
                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public long getAdvRemainTime() {
                        return iTPPlayListener.getAdvRemainTime();
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public String getContentType(int i9, String str2) throws RemoteException {
                        return iTPPlayListener.getContentType(i9, str2);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public int getCurrentPlayClipNo() {
                        return iTPPlayListener.getCurrentPlayClipNo();
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public long getCurrentPlayOffset() {
                        return iTPPlayListener.getCurrentPlayOffset();
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public long getCurrentPosition() {
                        return iTPPlayListener.getCurrentPosition();
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public String getDataFilePath(int i9, String str2) throws RemoteException {
                        return iTPPlayListener.getDataFilePath(i9, str2);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public long getDataTotalSize(int i9, String str2) throws RemoteException {
                        return iTPPlayListener.getDataTotalSize(i9, str2);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public String getPlayInfo(String str2) {
                        Object playInfo = iTPPlayListener.getPlayInfo(str2);
                        if (playInfo == null || playInfo.getClass() != String.class) {
                            return null;
                        }
                        if (playInfo.getClass() == String.class) {
                            return (String) playInfo;
                        }
                        if (playInfo.getClass() == Integer.class) {
                            return Integer.toString(((Integer) playInfo).intValue());
                        }
                        return null;
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public long getPlayerBufferLength() {
                        return iTPPlayListener.getPlayerBufferLength();
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadCdnUrlExpired(Map map) {
                        iTPPlayListener.onDownloadCdnUrlExpired(map);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadCdnUrlInfoUpdate(String str2, String str3, String str4, String str5) {
                        iTPPlayListener.onDownloadCdnUrlInfoUpdate(str2, str3, str4, str5);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadCdnUrlUpdate(String str2) {
                        iTPPlayListener.onDownloadCdnUrlUpdate(str2);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadError(int i9, int i10, String str2) {
                        iTPPlayListener.onDownloadError(i9, i10, str2);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadFinish() {
                        iTPPlayListener.onDownloadFinish();
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str2) {
                        iTPPlayListener.onDownloadProgressUpdate(i9, i10, j10, j11, str2);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadProtocolUpdate(String str2, String str3) {
                        iTPPlayListener.onDownloadProtocolUpdate(str2, str3);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public void onDownloadStatusUpdate(int i9) {
                        iTPPlayListener.onDownloadStatusUpdate(i9);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public int onPlayCallback(int i9, List list) {
                        Object obj = 0;
                        if (list != null && !list.isEmpty()) {
                            if (list.size() == 1) {
                                obj = iTPPlayListener.onPlayCallback(i9, list.get(0), null, null, null);
                            } else if (list.size() == 2) {
                                obj = iTPPlayListener.onPlayCallback(i9, list.get(0), list.get(1), null, null);
                            } else if (list.size() == 3) {
                                obj = iTPPlayListener.onPlayCallback(i9, list.get(0), list.get(1), list.get(2), null);
                            }
                        }
                        if (obj == null || obj.getClass() != Integer.class) {
                            return -1;
                        }
                        return ((Integer) obj).intValue();
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public int onReadData(int i9, String str2, long j10, long j11) throws RemoteException {
                        return iTPPlayListener.onReadData(i9, str2, j10, j11);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public int onStartReadData(int i9, String str2, long j10, long j11) throws RemoteException {
                        return iTPPlayListener.onStartReadData(i9, str2, j10, j11);
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl
                    public int onStopReadData(int i9, String str2, int i10) throws RemoteException {
                        return iTPPlayListener.onStopReadData(i9, str2, i10);
                    }
                });
            } catch (Throwable th2) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startPlay failed, error:" + th2.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startPreload(String str, TPDownloadParam tPDownloadParam, final ITPPreLoadListener iTPPreLoadListener) {
        try {
            return this.downloadProxyAidl.startPreload(str, new TPDownloadParamAidl(tPDownloadParam.getUrlList(), tPDownloadParam.getDlType(), tPDownloadParam.getExtInfoMap()), new ITPPreLoadListenerAidl.Stub() { // from class: com.tencent.thumbplayer.core.downloadproxy.client.TPDownloadProxyClient.3
                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
                public void onPrepareDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str2) {
                    iTPPreLoadListener.onPrepareDownloadProgressUpdate(i9, i10, j10, j11, str2);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
                public void onPrepareError(int i9, int i10, String str2) {
                    iTPPreLoadListener.onPrepareError(i9, i10, str2);
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl
                public void onPrepareOK() {
                    iTPPreLoadListener.onPrepareOK();
                }
            });
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startPreload failed, error:" + th2.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void startTask(int i9) {
        try {
            this.downloadProxyAidl.startTask(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "startTask failed, error:" + th2.toString());
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopOfflineDownload(int i9) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopPlay(int i9) {
        try {
            this.downloadProxyAidl.stopPlay(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "stopPlay failed, error:" + th2.toString());
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopPreload(int i9) {
        try {
            this.downloadProxyAidl.stopPreload(i9);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "stopPreload failed, error:" + th2.toString());
        }
    }

    public void updateAidl(ITPDownloadProxyAidl iTPDownloadProxyAidl) {
        this.downloadProxyAidl = iTPDownloadProxyAidl;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void updateStoragePath(String str) {
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void updateTaskInfo(int i9, String str, Object obj) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, obj);
        try {
            this.downloadProxyAidl.updateTaskInfo(i9, hashMap);
        } catch (Throwable th2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "updateTaskInfo failed, error:" + th2.toString());
        }
    }
}

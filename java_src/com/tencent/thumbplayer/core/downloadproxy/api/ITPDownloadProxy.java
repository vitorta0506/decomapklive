package com.tencent.thumbplayer.core.downloadproxy.api;

import android.content.Context;
/* loaded from: classes4.dex */
public interface ITPDownloadProxy {
    int checkResourceStatus(String str, String str2, int i9);

    int clearCache(String str, String str2, int i9);

    int deinit();

    String getClipPlayUrl(int i9, int i10, int i11);

    String getNativeInfo(int i9);

    String getPlayErrorCodeStr(int i9);

    String getPlayUrl(int i9, int i10);

    long getResourceSize(String str, String str2);

    int init(Context context, TPDLProxyInitParam tPDLProxyInitParam);

    int pauseDownload(int i9);

    void pushEvent(int i9);

    int removeStorageCache(String str);

    int resumeDownload(int i9);

    boolean setClipInfo(int i9, int i10, String str, TPDownloadParam tPDownloadParam);

    void setLogListener(ITPDLProxyLogListener iTPDLProxyLogListener);

    void setMaxStorageSizeMB(long j10);

    void setPlayState(int i9, int i10);

    void setUserData(String str, Object obj);

    int startClipOfflineDownload(String str, int i9, ITPOfflineDownloadListener iTPOfflineDownloadListener);

    int startClipPlay(String str, int i9, ITPPlayListener iTPPlayListener);

    int startClipPreload(String str, int i9, ITPPreLoadListener iTPPreLoadListener);

    int startOfflineDownload(String str, TPDownloadParam tPDownloadParam, ITPOfflineDownloadListener iTPOfflineDownloadListener);

    int startPlay(String str, TPDownloadParam tPDownloadParam, ITPPlayListener iTPPlayListener);

    int startPreload(String str, TPDownloadParam tPDownloadParam, ITPPreLoadListener iTPPreLoadListener);

    void startTask(int i9);

    void stopOfflineDownload(int i9);

    void stopPlay(int i9);

    void stopPreload(int i9);

    void updateStoragePath(String str);

    void updateTaskInfo(int i9, String str, Object obj);
}

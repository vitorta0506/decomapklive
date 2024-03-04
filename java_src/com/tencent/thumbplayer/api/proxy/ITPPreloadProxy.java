package com.tencent.thumbplayer.api.proxy;

import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes4.dex */
public interface ITPPreloadProxy {

    /* loaded from: classes4.dex */
    public interface IPreloadListener {
        void onPrepareDownloadProgressUpdate(int i9, int i10, long j10, long j11);

        void onPrepareError();

        void onPrepareSuccess();
    }

    String getPlayErrorCodeStr(int i9);

    boolean isAvailable();

    void pushEvent(int i9);

    void setPreloadListener(IPreloadListener iPreloadListener);

    int startClipPreload(String str, ArrayList<TPDownloadParamData> arrayList);

    int startPreload(String str, TPDownloadParamData tPDownloadParamData);

    int startPreload(String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map);

    void stopPreload(int i9);
}

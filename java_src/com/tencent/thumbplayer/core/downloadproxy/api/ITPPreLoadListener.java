package com.tencent.thumbplayer.core.downloadproxy.api;
/* loaded from: classes4.dex */
public interface ITPPreLoadListener {
    void onPrepareDownloadProgressUpdate(int i9, int i10, long j10, long j11, String str);

    void onPrepareError(int i9, int i10, String str);

    void onPrepareOK();
}

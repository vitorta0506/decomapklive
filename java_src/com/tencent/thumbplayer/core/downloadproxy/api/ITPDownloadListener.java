package com.tencent.thumbplayer.core.downloadproxy.api;
/* loaded from: classes4.dex */
public interface ITPDownloadListener {
    void didReleaseMemory(String str);

    void onQuicQualityReportUpdate(String str);

    void willReleaseMemory(String str);
}

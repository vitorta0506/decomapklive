package com.tencent.liteav.videobase.videobase;

import com.tencent.liteav.videobase.videobase.h;
/* loaded from: classes4.dex */
public interface IVideoReporter {
    void notifyError(h.a aVar, String str, Object... objArr);

    void notifyEvent(h.b bVar, String str, Object... objArr);

    void notifyWarning(h.c cVar, String str, Object... objArr);

    void updateStatus(i iVar, int i9, Object obj);

    void updateStatus(i iVar, Object obj);
}

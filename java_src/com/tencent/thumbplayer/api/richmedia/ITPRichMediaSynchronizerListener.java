package com.tencent.thumbplayer.api.richmedia;
/* loaded from: classes4.dex */
public interface ITPRichMediaSynchronizerListener {
    void onDeselectFeatureSuccess(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i9);

    void onRichMediaError(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i9);

    void onRichMediaFeatureData(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i9, TPRichMediaFeatureData tPRichMediaFeatureData);

    void onRichMediaFeatureFailure(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i9, int i10);

    void onRichMediaInfo(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i9, long j10, long j11, long j12, Object obj);

    void onRichMediaPrepared(ITPRichMediaSynchronizer iTPRichMediaSynchronizer);

    void onSelectFeatureSuccess(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i9);
}

package com.tencent.thumbplayer.api.richmedia;

import com.tencent.thumbplayer.api.TPTimeRange;
/* loaded from: classes4.dex */
public interface ITPRichMediaAsyncRequester {
    void cancelRequest(int i9);

    TPRichMediaFeature[] getFeatures();

    void prepareAsync();

    void release();

    int requestFeatureDataAsyncAtTimeMs(int i9, long j10);

    int requestFeatureDataAsyncAtTimeMsArray(int i9, long[] jArr);

    int requestFeatureDataAsyncAtTimeRange(int i9, TPTimeRange tPTimeRange);

    int requestFeatureDataAsyncAtTimeRanges(int i9, TPTimeRange[] tPTimeRangeArr);

    void setRequesterListener(ITPRichMediaAsyncRequesterListener iTPRichMediaAsyncRequesterListener);

    void setRichMediaSource(String str);
}

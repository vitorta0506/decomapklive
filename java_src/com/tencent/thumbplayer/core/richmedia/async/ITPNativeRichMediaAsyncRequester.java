package com.tencent.thumbplayer.core.richmedia.async;

import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeature;
import com.tencent.thumbplayer.core.richmedia.TPNativeTimeRange;
/* loaded from: classes4.dex */
public interface ITPNativeRichMediaAsyncRequester {
    void cancelRequest(int i9);

    TPNativeRichMediaFeature[] getFeatures();

    void prepareAsync();

    void release();

    int requestFeatureDataAsyncAtTimeMs(int i9, long j10);

    int requestFeatureDataAsyncAtTimeMsArray(int i9, long[] jArr);

    int requestFeatureDataAsyncAtTimeRange(int i9, TPNativeTimeRange tPNativeTimeRange);

    int requestFeatureDataAsyncAtTimeRanges(int i9, TPNativeTimeRange[] tPNativeTimeRangeArr);

    void setRequesterListener(ITPNativeRichMediaAsyncRequesterListener iTPNativeRichMediaAsyncRequesterListener);

    void setRichMediaSource(String str);
}

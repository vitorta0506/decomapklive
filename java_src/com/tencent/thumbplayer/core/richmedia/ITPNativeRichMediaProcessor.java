package com.tencent.thumbplayer.core.richmedia;
/* loaded from: classes4.dex */
public interface ITPNativeRichMediaProcessor {
    void deselectFeatureAsync(int i9);

    TPNativeRichMediaFeatureData getCurrentPositionMsFeatureData(long j10, int[] iArr);

    TPNativeRichMediaFeature[] getFeatures();

    void prepareAsync();

    void release();

    void reset();

    void seek(long j10);

    void selectFeatureAsync(int i9, TPNativeRichMediaRequestExtraInfo tPNativeRichMediaRequestExtraInfo);

    void setInnerProcessorCallback(ITPNativeRichMediaInnerProcessorCallback iTPNativeRichMediaInnerProcessorCallback);

    void setPlaybackRate(float f10);

    void setProcessorCallback(ITPNativeRichMediaProcessorCallback iTPNativeRichMediaProcessorCallback);

    void setRichMediaSource(String str);
}

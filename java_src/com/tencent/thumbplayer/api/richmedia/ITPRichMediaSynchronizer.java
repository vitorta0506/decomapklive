package com.tencent.thumbplayer.api.richmedia;
/* loaded from: classes4.dex */
public interface ITPRichMediaSynchronizer {
    void deselectFeatureAsync(int i9);

    TPRichMediaFeature[] getFeatures();

    void prepareAsync();

    void release();

    void reset();

    void selectFeatureAsync(int i9, TPRichMediaRequestExtraInfo tPRichMediaRequestExtraInfo);

    void setListener(ITPRichMediaSynchronizerListener iTPRichMediaSynchronizerListener);

    void setRichMediaSource(String str);
}

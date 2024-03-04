package com.tencent.thumbplayer.core.richmedia;
/* loaded from: classes4.dex */
public interface ITPNativeRichMediaProcessorCallback {
    void onDeselectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9);

    void onRichMediaError(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9);

    void onRichMediaFeatureData(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData);

    void onRichMediaFeatureFailure(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9, int i10);

    void onRichMediaInfo(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9, long j10, long j11, long j12, Object obj);

    void onRichMediaPrepared(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor);

    void onSelectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i9);
}

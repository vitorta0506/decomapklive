package com.tencent.thumbplayer.core.richmedia.async;

import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeatureData;
/* loaded from: classes4.dex */
public interface ITPNativeRichMediaAsyncRequesterListener {
    void onFeatureDataRequestFailure(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i9, int i10, int i11);

    void onFeatureDataRequestSuccess(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i9, int i10, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData);

    void onRequesterError(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i9);

    void onRequesterPrepared(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester);
}

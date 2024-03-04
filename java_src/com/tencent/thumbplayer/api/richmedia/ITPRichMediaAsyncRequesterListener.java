package com.tencent.thumbplayer.api.richmedia;
/* loaded from: classes4.dex */
public interface ITPRichMediaAsyncRequesterListener {
    void onFeatureDataRequestFailure(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester, int i9, int i10, int i11);

    void onFeatureDataRequestSuccess(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester, int i9, int i10, TPRichMediaFeatureData tPRichMediaFeatureData);

    void onRequesterError(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester, int i9);

    void onRequesterPrepared(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester);
}

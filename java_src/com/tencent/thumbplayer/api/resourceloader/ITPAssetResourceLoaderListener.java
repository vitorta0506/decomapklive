package com.tencent.thumbplayer.api.resourceloader;
/* loaded from: classes4.dex */
public interface ITPAssetResourceLoaderListener {
    void didCancelLoadingRequest(ITPAssetResourceLoadingRequest iTPAssetResourceLoadingRequest);

    void fillInContentInformation(TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest);

    boolean shouldWaitForLoadingOfRequestedResource(ITPAssetResourceLoadingRequest iTPAssetResourceLoadingRequest);
}

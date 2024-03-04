package com.snapchat.kit.sdk.creative.api;
/* loaded from: classes4.dex */
public enum SnapCreativeKitSendError {
    GENERIC_ERROR(1),
    SNAPCHAT_NOT_INSTALLED(2),
    SNAPCHAT_CANNOT_SHARE_CONTENT(3);
    
    private int mCode;

    SnapCreativeKitSendError(int i9) {
        this.mCode = i9;
    }
}

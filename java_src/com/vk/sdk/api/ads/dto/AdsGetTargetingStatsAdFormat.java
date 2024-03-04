package com.vk.sdk.api.ads.dto;

import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsGetTargetingStatsAdFormat;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "IMAGE_AND_TEXT", "BIG_IMAGE", "EXCLUSIVE_FORMAT", "COMMUNITY_SQUARE_IMAGE", "SPECIAL_APP_FORMAT", "SPECIAL_COMMUNITY_FORMAT", "POST_IN_COMMUNITY", "APP_BOARD", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AdsGetTargetingStatsAdFormat {
    IMAGE_AND_TEXT(1),
    BIG_IMAGE(2),
    EXCLUSIVE_FORMAT(3),
    COMMUNITY_SQUARE_IMAGE(4),
    SPECIAL_APP_FORMAT(7),
    SPECIAL_COMMUNITY_FORMAT(8),
    POST_IN_COMMUNITY(9),
    APP_BOARD(10);
    
    private final int value;

    AdsGetTargetingStatsAdFormat(int i9) {
        this.value = i9;
    }

    public final int getValue() {
        return this.value;
    }
}

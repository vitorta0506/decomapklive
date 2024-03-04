package com.vk.sdk.api.ads.dto;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsCampaignType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "NORMAL", "VK_APPS_MANAGED", "MOBILE_APPS", "PROMOTED_POSTS", "ADAPTIVE_ADS", "STORIES", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum AdsCampaignType {
    NORMAL("normal"),
    VK_APPS_MANAGED("vk_apps_managed"),
    MOBILE_APPS("mobile_apps"),
    PROMOTED_POSTS("promoted_posts"),
    ADAPTIVE_ADS("adaptive_ads"),
    STORIES("stories");
    
    @NotNull
    private final String value;

    AdsCampaignType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}

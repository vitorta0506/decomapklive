package com.vk.sdk.api.search.dto;

import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/vk/sdk/api/search/dto/SearchHintType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "GROUP", "PROFILE", "VK_APP", GrsBaseInfo.CountryCodeSource.APP, "HTML5_GAME", ShareConstants.CONTENT_URL, "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum SearchHintType {
    GROUP("group"),
    PROFILE("profile"),
    VK_APP("vk_app"),
    APP(PushConstants.EXTRA_APPLICATION_PENDING_INTENT),
    HTML5_GAME("html5_game"),
    LINK("link");
    
    @NotNull
    private final String value;

    SearchHintType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}

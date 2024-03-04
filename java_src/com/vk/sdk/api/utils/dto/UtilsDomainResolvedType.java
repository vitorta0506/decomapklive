package com.vk.sdk.api.utils.dto;

import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/vk/sdk/api/utils/dto/UtilsDomainResolvedType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", BaseConfig.DB_TYPE_USER_NAME, "GROUP", "APPLICATION", ShareConstants.PAGE_ID, "VK_APP", "COMMUNITY_APPLICATION", "INTERNAL_VKUI", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum UtilsDomainResolvedType {
    USER("user"),
    GROUP("group"),
    APPLICATION("application"),
    PAGE("page"),
    VK_APP("vk_app"),
    COMMUNITY_APPLICATION("community_application"),
    INTERNAL_VKUI("internal_vkui");
    
    @NotNull
    private final String value;

    UtilsDomainResolvedType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}

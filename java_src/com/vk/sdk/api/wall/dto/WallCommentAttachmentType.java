package com.vk.sdk.api.wall.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallCommentAttachmentType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PHOTO", "AUDIO", ShareConstants.VIDEO_URL, "DOC", ShareConstants.CONTENT_URL, "NOTE", ShareConstants.PAGE_ID, "MARKET_MARKET_ALBUM", "MARKET", "STICKER", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum WallCommentAttachmentType {
    PHOTO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO),
    AUDIO("audio"),
    VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
    DOC("doc"),
    LINK("link"),
    NOTE("note"),
    PAGE("page"),
    MARKET_MARKET_ALBUM("market_market_album"),
    MARKET("market"),
    STICKER("sticker");
    
    @NotNull
    private final String value;

    WallCommentAttachmentType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}

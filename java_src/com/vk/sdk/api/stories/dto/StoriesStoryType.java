package com.vk.sdk.api.stories.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesStoryType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PHOTO", ShareConstants.VIDEO_URL, "LIVE_ACTIVE", "LIVE_FINISHED", "BIRTHDAY_INVITE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum StoriesStoryType {
    PHOTO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO),
    VIDEO(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
    LIVE_ACTIVE("live_active"),
    LIVE_FINISHED("live_finished"),
    BIRTHDAY_INVITE("birthday_invite");
    
    @NotNull
    private final String value;

    StoriesStoryType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}

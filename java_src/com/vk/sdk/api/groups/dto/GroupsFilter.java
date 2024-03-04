package com.vk.sdk.api.groups.dto;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsFilter;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ADMIN", "EDITOR", "MODER", "ADVERTISER", "ENABLED_NOTIFICATIONS", "CAN_ENABLE_NOTIFICATIONS", "STORIES_NOT_PINNED", "GROUPS", "PUBLICS", "EVENTS", "HAS_ADDRESSES", "CAN_POST_CLIPS", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum GroupsFilter {
    ADMIN("admin"),
    EDITOR("editor"),
    MODER("moder"),
    ADVERTISER("advertiser"),
    ENABLED_NOTIFICATIONS("enabled_notifications"),
    CAN_ENABLE_NOTIFICATIONS("can_enable_notifications"),
    STORIES_NOT_PINNED("stories_not_pinned"),
    GROUPS("groups"),
    PUBLICS("publics"),
    EVENTS("events"),
    HAS_ADDRESSES("has_addresses"),
    CAN_POST_CLIPS("can_post_clips");
    
    @NotNull
    private final String value;

    GroupsFilter(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}

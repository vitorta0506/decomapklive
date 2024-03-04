package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0005HÆ\u0003JX\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00052\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGetConversationsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/messages/dto/MessagesConversationWithMessage;", "unreadCount", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(ILjava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "getUnreadCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "copy", "(ILjava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/messages/dto/MessagesGetConversationsResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGetConversationsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<MessagesConversationWithMessage> items;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;
    @SerializedName("unread_count")
    @Nullable
    private final Integer unreadCount;

    public MessagesGetConversationsResponse(int i9, @NotNull List<MessagesConversationWithMessage> items, @Nullable Integer num, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.unreadCount = num;
        this.profiles = list;
        this.groups = list2;
    }

    public static /* synthetic */ MessagesGetConversationsResponse copy$default(MessagesGetConversationsResponse messagesGetConversationsResponse, int i9, List list, Integer num, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = messagesGetConversationsResponse.count;
        }
        List<MessagesConversationWithMessage> list4 = list;
        if ((i10 & 2) != 0) {
            list4 = messagesGetConversationsResponse.items;
        }
        List list5 = list4;
        if ((i10 & 4) != 0) {
            num = messagesGetConversationsResponse.unreadCount;
        }
        Integer num2 = num;
        List<UsersUserFull> list6 = list2;
        if ((i10 & 8) != 0) {
            list6 = messagesGetConversationsResponse.profiles;
        }
        List list7 = list6;
        List<GroupsGroupFull> list8 = list3;
        if ((i10 & 16) != 0) {
            list8 = messagesGetConversationsResponse.groups;
        }
        return messagesGetConversationsResponse.copy(i9, list5, num2, list7, list8);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<MessagesConversationWithMessage> component2() {
        return this.items;
    }

    @Nullable
    public final Integer component3() {
        return this.unreadCount;
    }

    @Nullable
    public final List<UsersUserFull> component4() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component5() {
        return this.groups;
    }

    @NotNull
    public final MessagesGetConversationsResponse copy(int i9, @NotNull List<MessagesConversationWithMessage> items, @Nullable Integer num, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new MessagesGetConversationsResponse(i9, items, num, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGetConversationsResponse) {
            MessagesGetConversationsResponse messagesGetConversationsResponse = (MessagesGetConversationsResponse) obj;
            return this.count == messagesGetConversationsResponse.count && Intrinsics.areEqual(this.items, messagesGetConversationsResponse.items) && Intrinsics.areEqual(this.unreadCount, messagesGetConversationsResponse.unreadCount) && Intrinsics.areEqual(this.profiles, messagesGetConversationsResponse.profiles) && Intrinsics.areEqual(this.groups, messagesGetConversationsResponse.groups);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<MessagesConversationWithMessage> getItems() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    @Nullable
    public final Integer getUnreadCount() {
        return this.unreadCount;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        Integer num = this.unreadCount;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        List<UsersUserFull> list = this.profiles;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        return hashCode3 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<MessagesConversationWithMessage> list = this.items;
        Integer num = this.unreadCount;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "MessagesGetConversationsResponse(count=" + i9 + ", items=" + list + ", unreadCount=" + num + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }

    public /* synthetic */ MessagesGetConversationsResponse(int i9, List list, Integer num, List list2, List list3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : num, (i10 & 8) != 0 ? null : list2, (i10 & 16) != 0 ? null : list3);
    }
}

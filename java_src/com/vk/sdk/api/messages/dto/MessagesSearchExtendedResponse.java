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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005¢\u0006\u0002\u0010\rJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005HÆ\u0003JY\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000f¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesSearchExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/messages/dto/MessagesMessage;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "conversations", "Lcom/vk/sdk/api/messages/dto/MessagesConversation;", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getConversations", "()Ljava/util/List;", "getCount", "()I", "getGroups", "getItems", "getProfiles", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesSearchExtendedResponse {
    @SerializedName("conversations")
    @Nullable
    private final List<MessagesConversation> conversations;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<MessagesMessage> items;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public MessagesSearchExtendedResponse(int i9, @NotNull List<MessagesMessage> items, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2, @Nullable List<MessagesConversation> list3) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.profiles = list;
        this.groups = list2;
        this.conversations = list3;
    }

    public static /* synthetic */ MessagesSearchExtendedResponse copy$default(MessagesSearchExtendedResponse messagesSearchExtendedResponse, int i9, List list, List list2, List list3, List list4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = messagesSearchExtendedResponse.count;
        }
        List<MessagesMessage> list5 = list;
        if ((i10 & 2) != 0) {
            list5 = messagesSearchExtendedResponse.items;
        }
        List list6 = list5;
        List<UsersUserFull> list7 = list2;
        if ((i10 & 4) != 0) {
            list7 = messagesSearchExtendedResponse.profiles;
        }
        List list8 = list7;
        List<GroupsGroupFull> list9 = list3;
        if ((i10 & 8) != 0) {
            list9 = messagesSearchExtendedResponse.groups;
        }
        List list10 = list9;
        List<MessagesConversation> list11 = list4;
        if ((i10 & 16) != 0) {
            list11 = messagesSearchExtendedResponse.conversations;
        }
        return messagesSearchExtendedResponse.copy(i9, list6, list8, list10, list11);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<MessagesMessage> component2() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> component3() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component4() {
        return this.groups;
    }

    @Nullable
    public final List<MessagesConversation> component5() {
        return this.conversations;
    }

    @NotNull
    public final MessagesSearchExtendedResponse copy(int i9, @NotNull List<MessagesMessage> items, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2, @Nullable List<MessagesConversation> list3) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new MessagesSearchExtendedResponse(i9, items, list, list2, list3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesSearchExtendedResponse) {
            MessagesSearchExtendedResponse messagesSearchExtendedResponse = (MessagesSearchExtendedResponse) obj;
            return this.count == messagesSearchExtendedResponse.count && Intrinsics.areEqual(this.items, messagesSearchExtendedResponse.items) && Intrinsics.areEqual(this.profiles, messagesSearchExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, messagesSearchExtendedResponse.groups) && Intrinsics.areEqual(this.conversations, messagesSearchExtendedResponse.conversations);
        }
        return false;
    }

    @Nullable
    public final List<MessagesConversation> getConversations() {
        return this.conversations;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<MessagesMessage> getItems() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        List<UsersUserFull> list = this.profiles;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<MessagesConversation> list3 = this.conversations;
        return hashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<MessagesMessage> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        List<MessagesConversation> list4 = this.conversations;
        return "MessagesSearchExtendedResponse(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", conversations=" + list4 + ")";
    }

    public /* synthetic */ MessagesSearchExtendedResponse(int i9, List list, List list2, List list3, List list4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : list2, (i10 & 8) != 0 ? null : list3, (i10 & 16) != 0 ? null : list4);
    }
}

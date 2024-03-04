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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003¢\u0006\u0002\u0010\rJ\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003JS\u0010\u001b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0006HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006\""}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGetConversationMembers;", "", "items", "", "Lcom/vk/sdk/api/messages/dto/MessagesConversationMember;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "chatRestrictions", "Lcom/vk/sdk/api/messages/dto/MessagesChatRestrictions;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(Ljava/util/List;ILcom/vk/sdk/api/messages/dto/MessagesChatRestrictions;Ljava/util/List;Ljava/util/List;)V", "getChatRestrictions", "()Lcom/vk/sdk/api/messages/dto/MessagesChatRestrictions;", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGetConversationMembers {
    @SerializedName("chat_restrictions")
    @Nullable
    private final MessagesChatRestrictions chatRestrictions;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<MessagesConversationMember> items;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public MessagesGetConversationMembers(@NotNull List<MessagesConversationMember> items, int i9, @Nullable MessagesChatRestrictions messagesChatRestrictions, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
        this.count = i9;
        this.chatRestrictions = messagesChatRestrictions;
        this.profiles = list;
        this.groups = list2;
    }

    public static /* synthetic */ MessagesGetConversationMembers copy$default(MessagesGetConversationMembers messagesGetConversationMembers, List list, int i9, MessagesChatRestrictions messagesChatRestrictions, List list2, List list3, int i10, Object obj) {
        List<MessagesConversationMember> list4 = list;
        if ((i10 & 1) != 0) {
            list4 = messagesGetConversationMembers.items;
        }
        if ((i10 & 2) != 0) {
            i9 = messagesGetConversationMembers.count;
        }
        int i11 = i9;
        if ((i10 & 4) != 0) {
            messagesChatRestrictions = messagesGetConversationMembers.chatRestrictions;
        }
        MessagesChatRestrictions messagesChatRestrictions2 = messagesChatRestrictions;
        List<UsersUserFull> list5 = list2;
        if ((i10 & 8) != 0) {
            list5 = messagesGetConversationMembers.profiles;
        }
        List list6 = list5;
        List<GroupsGroupFull> list7 = list3;
        if ((i10 & 16) != 0) {
            list7 = messagesGetConversationMembers.groups;
        }
        return messagesGetConversationMembers.copy(list4, i11, messagesChatRestrictions2, list6, list7);
    }

    @NotNull
    public final List<MessagesConversationMember> component1() {
        return this.items;
    }

    public final int component2() {
        return this.count;
    }

    @Nullable
    public final MessagesChatRestrictions component3() {
        return this.chatRestrictions;
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
    public final MessagesGetConversationMembers copy(@NotNull List<MessagesConversationMember> items, int i9, @Nullable MessagesChatRestrictions messagesChatRestrictions, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new MessagesGetConversationMembers(items, i9, messagesChatRestrictions, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGetConversationMembers) {
            MessagesGetConversationMembers messagesGetConversationMembers = (MessagesGetConversationMembers) obj;
            return Intrinsics.areEqual(this.items, messagesGetConversationMembers.items) && this.count == messagesGetConversationMembers.count && Intrinsics.areEqual(this.chatRestrictions, messagesGetConversationMembers.chatRestrictions) && Intrinsics.areEqual(this.profiles, messagesGetConversationMembers.profiles) && Intrinsics.areEqual(this.groups, messagesGetConversationMembers.groups);
        }
        return false;
    }

    @Nullable
    public final MessagesChatRestrictions getChatRestrictions() {
        return this.chatRestrictions;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<MessagesConversationMember> getItems() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = ((this.items.hashCode() * 31) + this.count) * 31;
        MessagesChatRestrictions messagesChatRestrictions = this.chatRestrictions;
        int hashCode2 = (hashCode + (messagesChatRestrictions == null ? 0 : messagesChatRestrictions.hashCode())) * 31;
        List<UsersUserFull> list = this.profiles;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        return hashCode3 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<MessagesConversationMember> list = this.items;
        int i9 = this.count;
        MessagesChatRestrictions messagesChatRestrictions = this.chatRestrictions;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "MessagesGetConversationMembers(items=" + list + ", count=" + i9 + ", chatRestrictions=" + messagesChatRestrictions + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }

    public /* synthetic */ MessagesGetConversationMembers(List list, int i9, MessagesChatRestrictions messagesChatRestrictions, List list2, List list3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, i9, (i10 & 4) != 0 ? null : messagesChatRestrictions, (i10 & 8) != 0 ? null : list2, (i10 & 16) != 0 ? null : list3);
    }
}

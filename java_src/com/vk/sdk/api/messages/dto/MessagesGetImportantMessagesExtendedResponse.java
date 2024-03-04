package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003JI\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGetImportantMessagesExtendedResponse;", "", "messages", "Lcom/vk/sdk/api/messages/dto/MessagesMessagesArray;", "profiles", "", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "conversations", "Lcom/vk/sdk/api/messages/dto/MessagesConversation;", "(Lcom/vk/sdk/api/messages/dto/MessagesMessagesArray;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getConversations", "()Ljava/util/List;", "getGroups", "getMessages", "()Lcom/vk/sdk/api/messages/dto/MessagesMessagesArray;", "getProfiles", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGetImportantMessagesExtendedResponse {
    @SerializedName("conversations")
    @Nullable
    private final List<MessagesConversation> conversations;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("messages")
    @NotNull
    private final MessagesMessagesArray messages;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public MessagesGetImportantMessagesExtendedResponse(@NotNull MessagesMessagesArray messages, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2, @Nullable List<MessagesConversation> list3) {
        Intrinsics.checkNotNullParameter(messages, "messages");
        this.messages = messages;
        this.profiles = list;
        this.groups = list2;
        this.conversations = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MessagesGetImportantMessagesExtendedResponse copy$default(MessagesGetImportantMessagesExtendedResponse messagesGetImportantMessagesExtendedResponse, MessagesMessagesArray messagesMessagesArray, List list, List list2, List list3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            messagesMessagesArray = messagesGetImportantMessagesExtendedResponse.messages;
        }
        if ((i9 & 2) != 0) {
            list = messagesGetImportantMessagesExtendedResponse.profiles;
        }
        if ((i9 & 4) != 0) {
            list2 = messagesGetImportantMessagesExtendedResponse.groups;
        }
        if ((i9 & 8) != 0) {
            list3 = messagesGetImportantMessagesExtendedResponse.conversations;
        }
        return messagesGetImportantMessagesExtendedResponse.copy(messagesMessagesArray, list, list2, list3);
    }

    @NotNull
    public final MessagesMessagesArray component1() {
        return this.messages;
    }

    @Nullable
    public final List<UsersUserFull> component2() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component3() {
        return this.groups;
    }

    @Nullable
    public final List<MessagesConversation> component4() {
        return this.conversations;
    }

    @NotNull
    public final MessagesGetImportantMessagesExtendedResponse copy(@NotNull MessagesMessagesArray messages, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2, @Nullable List<MessagesConversation> list3) {
        Intrinsics.checkNotNullParameter(messages, "messages");
        return new MessagesGetImportantMessagesExtendedResponse(messages, list, list2, list3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGetImportantMessagesExtendedResponse) {
            MessagesGetImportantMessagesExtendedResponse messagesGetImportantMessagesExtendedResponse = (MessagesGetImportantMessagesExtendedResponse) obj;
            return Intrinsics.areEqual(this.messages, messagesGetImportantMessagesExtendedResponse.messages) && Intrinsics.areEqual(this.profiles, messagesGetImportantMessagesExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, messagesGetImportantMessagesExtendedResponse.groups) && Intrinsics.areEqual(this.conversations, messagesGetImportantMessagesExtendedResponse.conversations);
        }
        return false;
    }

    @Nullable
    public final List<MessagesConversation> getConversations() {
        return this.conversations;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final MessagesMessagesArray getMessages() {
        return this.messages;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = this.messages.hashCode() * 31;
        List<UsersUserFull> list = this.profiles;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<MessagesConversation> list3 = this.conversations;
        return hashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        MessagesMessagesArray messagesMessagesArray = this.messages;
        List<UsersUserFull> list = this.profiles;
        List<GroupsGroupFull> list2 = this.groups;
        List<MessagesConversation> list3 = this.conversations;
        return "MessagesGetImportantMessagesExtendedResponse(messages=" + messagesMessagesArray + ", profiles=" + list + ", groups=" + list2 + ", conversations=" + list3 + ")";
    }

    public /* synthetic */ MessagesGetImportantMessagesExtendedResponse(MessagesMessagesArray messagesMessagesArray, List list, List list2, List list3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesMessagesArray, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : list2, (i9 & 8) != 0 ? null : list3);
    }
}

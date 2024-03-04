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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J9\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGetChatPreviewResponse;", "", "preview", "Lcom/vk/sdk/api/messages/dto/MessagesChatPreview;", "profiles", "", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(Lcom/vk/sdk/api/messages/dto/MessagesChatPreview;Ljava/util/List;Ljava/util/List;)V", "getGroups", "()Ljava/util/List;", "getPreview", "()Lcom/vk/sdk/api/messages/dto/MessagesChatPreview;", "getProfiles", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGetChatPreviewResponse {
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("preview")
    @Nullable
    private final MessagesChatPreview preview;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public MessagesGetChatPreviewResponse() {
        this(null, null, null, 7, null);
    }

    public MessagesGetChatPreviewResponse(@Nullable MessagesChatPreview messagesChatPreview, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        this.preview = messagesChatPreview;
        this.profiles = list;
        this.groups = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MessagesGetChatPreviewResponse copy$default(MessagesGetChatPreviewResponse messagesGetChatPreviewResponse, MessagesChatPreview messagesChatPreview, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            messagesChatPreview = messagesGetChatPreviewResponse.preview;
        }
        if ((i9 & 2) != 0) {
            list = messagesGetChatPreviewResponse.profiles;
        }
        if ((i9 & 4) != 0) {
            list2 = messagesGetChatPreviewResponse.groups;
        }
        return messagesGetChatPreviewResponse.copy(messagesChatPreview, list, list2);
    }

    @Nullable
    public final MessagesChatPreview component1() {
        return this.preview;
    }

    @Nullable
    public final List<UsersUserFull> component2() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component3() {
        return this.groups;
    }

    @NotNull
    public final MessagesGetChatPreviewResponse copy(@Nullable MessagesChatPreview messagesChatPreview, @Nullable List<UsersUserFull> list, @Nullable List<GroupsGroupFull> list2) {
        return new MessagesGetChatPreviewResponse(messagesChatPreview, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGetChatPreviewResponse) {
            MessagesGetChatPreviewResponse messagesGetChatPreviewResponse = (MessagesGetChatPreviewResponse) obj;
            return Intrinsics.areEqual(this.preview, messagesGetChatPreviewResponse.preview) && Intrinsics.areEqual(this.profiles, messagesGetChatPreviewResponse.profiles) && Intrinsics.areEqual(this.groups, messagesGetChatPreviewResponse.groups);
        }
        return false;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @Nullable
    public final MessagesChatPreview getPreview() {
        return this.preview;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        MessagesChatPreview messagesChatPreview = this.preview;
        int hashCode = (messagesChatPreview == null ? 0 : messagesChatPreview.hashCode()) * 31;
        List<UsersUserFull> list = this.profiles;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        return hashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        MessagesChatPreview messagesChatPreview = this.preview;
        List<UsersUserFull> list = this.profiles;
        List<GroupsGroupFull> list2 = this.groups;
        return "MessagesGetChatPreviewResponse(preview=" + messagesChatPreview + ", profiles=" + list + ", groups=" + list2 + ")";
    }

    public /* synthetic */ MessagesGetChatPreviewResponse(MessagesChatPreview messagesChatPreview, List list, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : messagesChatPreview, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : list2);
    }
}

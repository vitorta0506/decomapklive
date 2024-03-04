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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003JK\u0010\u0016\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGetHistoryAttachmentsResponse;", "", "items", "", "Lcom/vk/sdk/api/messages/dto/MessagesHistoryAttachment;", "nextFrom", "", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getGroups", "()Ljava/util/List;", "getItems", "getNextFrom", "()Ljava/lang/String;", "getProfiles", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGetHistoryAttachmentsResponse {
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @Nullable
    private final List<MessagesHistoryAttachment> items;
    @SerializedName("next_from")
    @Nullable
    private final String nextFrom;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public MessagesGetHistoryAttachmentsResponse() {
        this(null, null, null, null, 15, null);
    }

    public MessagesGetHistoryAttachmentsResponse(@Nullable List<MessagesHistoryAttachment> list, @Nullable String str, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3) {
        this.items = list;
        this.nextFrom = str;
        this.profiles = list2;
        this.groups = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MessagesGetHistoryAttachmentsResponse copy$default(MessagesGetHistoryAttachmentsResponse messagesGetHistoryAttachmentsResponse, List list, String str, List list2, List list3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = messagesGetHistoryAttachmentsResponse.items;
        }
        if ((i9 & 2) != 0) {
            str = messagesGetHistoryAttachmentsResponse.nextFrom;
        }
        if ((i9 & 4) != 0) {
            list2 = messagesGetHistoryAttachmentsResponse.profiles;
        }
        if ((i9 & 8) != 0) {
            list3 = messagesGetHistoryAttachmentsResponse.groups;
        }
        return messagesGetHistoryAttachmentsResponse.copy(list, str, list2, list3);
    }

    @Nullable
    public final List<MessagesHistoryAttachment> component1() {
        return this.items;
    }

    @Nullable
    public final String component2() {
        return this.nextFrom;
    }

    @Nullable
    public final List<UsersUserFull> component3() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component4() {
        return this.groups;
    }

    @NotNull
    public final MessagesGetHistoryAttachmentsResponse copy(@Nullable List<MessagesHistoryAttachment> list, @Nullable String str, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroupFull> list3) {
        return new MessagesGetHistoryAttachmentsResponse(list, str, list2, list3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGetHistoryAttachmentsResponse) {
            MessagesGetHistoryAttachmentsResponse messagesGetHistoryAttachmentsResponse = (MessagesGetHistoryAttachmentsResponse) obj;
            return Intrinsics.areEqual(this.items, messagesGetHistoryAttachmentsResponse.items) && Intrinsics.areEqual(this.nextFrom, messagesGetHistoryAttachmentsResponse.nextFrom) && Intrinsics.areEqual(this.profiles, messagesGetHistoryAttachmentsResponse.profiles) && Intrinsics.areEqual(this.groups, messagesGetHistoryAttachmentsResponse.groups);
        }
        return false;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<MessagesHistoryAttachment> getItems() {
        return this.items;
    }

    @Nullable
    public final String getNextFrom() {
        return this.nextFrom;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        List<MessagesHistoryAttachment> list = this.items;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.nextFrom;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<UsersUserFull> list2 = this.profiles;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<GroupsGroupFull> list3 = this.groups;
        return hashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<MessagesHistoryAttachment> list = this.items;
        String str = this.nextFrom;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "MessagesGetHistoryAttachmentsResponse(items=" + list + ", nextFrom=" + str + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }

    public /* synthetic */ MessagesGetHistoryAttachmentsResponse(List list, String str, List list2, List list3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : list2, (i9 & 8) != 0 ? null : list3);
    }
}

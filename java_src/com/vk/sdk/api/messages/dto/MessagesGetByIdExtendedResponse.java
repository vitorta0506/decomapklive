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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003JE\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesGetByIdExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/messages/dto/MessagesMessage;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesGetByIdExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<MessagesMessage> items;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUserFull> profiles;

    public MessagesGetByIdExtendedResponse(int i9, @NotNull List<MessagesMessage> items, @NotNull List<UsersUserFull> profiles, @Nullable List<GroupsGroupFull> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        this.count = i9;
        this.items = items;
        this.profiles = profiles;
        this.groups = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MessagesGetByIdExtendedResponse copy$default(MessagesGetByIdExtendedResponse messagesGetByIdExtendedResponse, int i9, List list, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = messagesGetByIdExtendedResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = messagesGetByIdExtendedResponse.items;
        }
        if ((i10 & 4) != 0) {
            list2 = messagesGetByIdExtendedResponse.profiles;
        }
        if ((i10 & 8) != 0) {
            list3 = messagesGetByIdExtendedResponse.groups;
        }
        return messagesGetByIdExtendedResponse.copy(i9, list, list2, list3);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<MessagesMessage> component2() {
        return this.items;
    }

    @NotNull
    public final List<UsersUserFull> component3() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroupFull> component4() {
        return this.groups;
    }

    @NotNull
    public final MessagesGetByIdExtendedResponse copy(int i9, @NotNull List<MessagesMessage> items, @NotNull List<UsersUserFull> profiles, @Nullable List<GroupsGroupFull> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        return new MessagesGetByIdExtendedResponse(i9, items, profiles, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesGetByIdExtendedResponse) {
            MessagesGetByIdExtendedResponse messagesGetByIdExtendedResponse = (MessagesGetByIdExtendedResponse) obj;
            return this.count == messagesGetByIdExtendedResponse.count && Intrinsics.areEqual(this.items, messagesGetByIdExtendedResponse.items) && Intrinsics.areEqual(this.profiles, messagesGetByIdExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, messagesGetByIdExtendedResponse.groups);
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
    public final List<MessagesMessage> getItems() {
        return this.items;
    }

    @NotNull
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = ((((this.count * 31) + this.items.hashCode()) * 31) + this.profiles.hashCode()) * 31;
        List<GroupsGroupFull> list = this.groups;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<MessagesMessage> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "MessagesGetByIdExtendedResponse(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }

    public /* synthetic */ MessagesGetByIdExtendedResponse(int i9, List list, List list2, List list3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, list2, (i10 & 8) != 0 ? null : list3);
    }
}

package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\nHÆ\u0003JE\u0010\u0016\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\nHÖ\u0001R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetCommentsResponse;", "", "items", "", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "nextFrom", "", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getGroups", "()Ljava/util/List;", "getItems", "getNextFrom", "()Ljava/lang/String;", "getProfiles", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedGetCommentsResponse {
    @SerializedName("groups")
    @NotNull
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<NewsfeedNewsfeedItem> items;
    @SerializedName("next_from")
    @Nullable
    private final String nextFrom;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUserFull> profiles;

    /* JADX WARN: Multi-variable type inference failed */
    public NewsfeedGetCommentsResponse(@NotNull List<? extends NewsfeedNewsfeedItem> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups, @Nullable String str) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.items = items;
        this.profiles = profiles;
        this.groups = groups;
        this.nextFrom = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewsfeedGetCommentsResponse copy$default(NewsfeedGetCommentsResponse newsfeedGetCommentsResponse, List list, List list2, List list3, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = newsfeedGetCommentsResponse.items;
        }
        if ((i9 & 2) != 0) {
            list2 = newsfeedGetCommentsResponse.profiles;
        }
        if ((i9 & 4) != 0) {
            list3 = newsfeedGetCommentsResponse.groups;
        }
        if ((i9 & 8) != 0) {
            str = newsfeedGetCommentsResponse.nextFrom;
        }
        return newsfeedGetCommentsResponse.copy(list, list2, list3, str);
    }

    @NotNull
    public final List<NewsfeedNewsfeedItem> component1() {
        return this.items;
    }

    @NotNull
    public final List<UsersUserFull> component2() {
        return this.profiles;
    }

    @NotNull
    public final List<GroupsGroupFull> component3() {
        return this.groups;
    }

    @Nullable
    public final String component4() {
        return this.nextFrom;
    }

    @NotNull
    public final NewsfeedGetCommentsResponse copy(@NotNull List<? extends NewsfeedNewsfeedItem> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups, @Nullable String str) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new NewsfeedGetCommentsResponse(items, profiles, groups, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedGetCommentsResponse) {
            NewsfeedGetCommentsResponse newsfeedGetCommentsResponse = (NewsfeedGetCommentsResponse) obj;
            return Intrinsics.areEqual(this.items, newsfeedGetCommentsResponse.items) && Intrinsics.areEqual(this.profiles, newsfeedGetCommentsResponse.profiles) && Intrinsics.areEqual(this.groups, newsfeedGetCommentsResponse.groups) && Intrinsics.areEqual(this.nextFrom, newsfeedGetCommentsResponse.nextFrom);
        }
        return false;
    }

    @NotNull
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<NewsfeedNewsfeedItem> getItems() {
        return this.items;
    }

    @Nullable
    public final String getNextFrom() {
        return this.nextFrom;
    }

    @NotNull
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = ((((this.items.hashCode() * 31) + this.profiles.hashCode()) * 31) + this.groups.hashCode()) * 31;
        String str = this.nextFrom;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        List<NewsfeedNewsfeedItem> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        String str = this.nextFrom;
        return "NewsfeedGetCommentsResponse(items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", nextFrom=" + str + ")";
    }

    public /* synthetic */ NewsfeedGetCommentsResponse(List list, List list2, List list3, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, (i9 & 8) != 0 ? null : str);
    }
}

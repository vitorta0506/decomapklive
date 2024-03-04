package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0002\u0010\tJ\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J9\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallGetByIdExtendedResponse;", "", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallpostFull;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallGetByIdExtendedResponse {
    @SerializedName("groups")
    @NotNull
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<WallWallpostFull> items;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUserFull> profiles;

    public WallGetByIdExtendedResponse(@NotNull List<WallWallpostFull> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.items = items;
        this.profiles = profiles;
        this.groups = groups;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WallGetByIdExtendedResponse copy$default(WallGetByIdExtendedResponse wallGetByIdExtendedResponse, List list, List list2, List list3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = wallGetByIdExtendedResponse.items;
        }
        if ((i9 & 2) != 0) {
            list2 = wallGetByIdExtendedResponse.profiles;
        }
        if ((i9 & 4) != 0) {
            list3 = wallGetByIdExtendedResponse.groups;
        }
        return wallGetByIdExtendedResponse.copy(list, list2, list3);
    }

    @NotNull
    public final List<WallWallpostFull> component1() {
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

    @NotNull
    public final WallGetByIdExtendedResponse copy(@NotNull List<WallWallpostFull> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new WallGetByIdExtendedResponse(items, profiles, groups);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallGetByIdExtendedResponse) {
            WallGetByIdExtendedResponse wallGetByIdExtendedResponse = (WallGetByIdExtendedResponse) obj;
            return Intrinsics.areEqual(this.items, wallGetByIdExtendedResponse.items) && Intrinsics.areEqual(this.profiles, wallGetByIdExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, wallGetByIdExtendedResponse.groups);
        }
        return false;
    }

    @NotNull
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<WallWallpostFull> getItems() {
        return this.items;
    }

    @NotNull
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        return (((this.items.hashCode() * 31) + this.profiles.hashCode()) * 31) + this.groups.hashCode();
    }

    @NotNull
    public String toString() {
        List<WallWallpostFull> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "WallGetByIdExtendedResponse(items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }
}

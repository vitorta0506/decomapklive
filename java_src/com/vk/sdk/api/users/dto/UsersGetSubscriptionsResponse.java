package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.groups.dto.GroupsGroupsArray;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;", "", "users", "Lcom/vk/sdk/api/users/dto/UsersUsersArray;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;", "(Lcom/vk/sdk/api/users/dto/UsersUsersArray;Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;)V", "getGroups", "()Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;", "getUsers", "()Lcom/vk/sdk/api/users/dto/UsersUsersArray;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersGetSubscriptionsResponse {
    @SerializedName("groups")
    @NotNull
    private final GroupsGroupsArray groups;
    @SerializedName("users")
    @NotNull
    private final UsersUsersArray users;

    public UsersGetSubscriptionsResponse(@NotNull UsersUsersArray users, @NotNull GroupsGroupsArray groups) {
        Intrinsics.checkNotNullParameter(users, "users");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.users = users;
        this.groups = groups;
    }

    public static /* synthetic */ UsersGetSubscriptionsResponse copy$default(UsersGetSubscriptionsResponse usersGetSubscriptionsResponse, UsersUsersArray usersUsersArray, GroupsGroupsArray groupsGroupsArray, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            usersUsersArray = usersGetSubscriptionsResponse.users;
        }
        if ((i9 & 2) != 0) {
            groupsGroupsArray = usersGetSubscriptionsResponse.groups;
        }
        return usersGetSubscriptionsResponse.copy(usersUsersArray, groupsGroupsArray);
    }

    @NotNull
    public final UsersUsersArray component1() {
        return this.users;
    }

    @NotNull
    public final GroupsGroupsArray component2() {
        return this.groups;
    }

    @NotNull
    public final UsersGetSubscriptionsResponse copy(@NotNull UsersUsersArray users, @NotNull GroupsGroupsArray groups) {
        Intrinsics.checkNotNullParameter(users, "users");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new UsersGetSubscriptionsResponse(users, groups);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersGetSubscriptionsResponse) {
            UsersGetSubscriptionsResponse usersGetSubscriptionsResponse = (UsersGetSubscriptionsResponse) obj;
            return Intrinsics.areEqual(this.users, usersGetSubscriptionsResponse.users) && Intrinsics.areEqual(this.groups, usersGetSubscriptionsResponse.groups);
        }
        return false;
    }

    @NotNull
    public final GroupsGroupsArray getGroups() {
        return this.groups;
    }

    @NotNull
    public final UsersUsersArray getUsers() {
        return this.users;
    }

    public int hashCode() {
        return (this.users.hashCode() * 31) + this.groups.hashCode();
    }

    @NotNull
    public String toString() {
        UsersUsersArray usersUsersArray = this.users;
        GroupsGroupsArray groupsGroupsArray = this.groups;
        return "UsersGetSubscriptionsResponse(users=" + usersUsersArray + ", groups=" + groupsGroupsArray + ")";
    }
}

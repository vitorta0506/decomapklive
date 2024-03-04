package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.sdk.api.users.dto.UsersUser;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsBannedItem;", "", "banInfo", "Lcom/vk/sdk/api/groups/dto/GroupsBanInfo;", "group", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "profile", "Lcom/vk/sdk/api/users/dto/UsersUser;", "type", "Lcom/vk/sdk/api/groups/dto/GroupsOwnerXtrBanInfoType;", "(Lcom/vk/sdk/api/groups/dto/GroupsBanInfo;Lcom/vk/sdk/api/groups/dto/GroupsGroup;Lcom/vk/sdk/api/users/dto/UsersUser;Lcom/vk/sdk/api/groups/dto/GroupsOwnerXtrBanInfoType;)V", "getBanInfo", "()Lcom/vk/sdk/api/groups/dto/GroupsBanInfo;", "getGroup", "()Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "getProfile", "()Lcom/vk/sdk/api/users/dto/UsersUser;", "getType", "()Lcom/vk/sdk/api/groups/dto/GroupsOwnerXtrBanInfoType;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsBannedItem {
    @SerializedName(VKApiCodes.PARAM_BAN_INFO)
    @Nullable
    private final GroupsBanInfo banInfo;
    @SerializedName("group")
    @Nullable
    private final GroupsGroup group;
    @SerializedName("profile")
    @Nullable
    private final UsersUser profile;
    @SerializedName("type")
    @Nullable
    private final GroupsOwnerXtrBanInfoType type;

    public GroupsBannedItem() {
        this(null, null, null, null, 15, null);
    }

    public GroupsBannedItem(@Nullable GroupsBanInfo groupsBanInfo, @Nullable GroupsGroup groupsGroup, @Nullable UsersUser usersUser, @Nullable GroupsOwnerXtrBanInfoType groupsOwnerXtrBanInfoType) {
        this.banInfo = groupsBanInfo;
        this.group = groupsGroup;
        this.profile = usersUser;
        this.type = groupsOwnerXtrBanInfoType;
    }

    public static /* synthetic */ GroupsBannedItem copy$default(GroupsBannedItem groupsBannedItem, GroupsBanInfo groupsBanInfo, GroupsGroup groupsGroup, UsersUser usersUser, GroupsOwnerXtrBanInfoType groupsOwnerXtrBanInfoType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            groupsBanInfo = groupsBannedItem.banInfo;
        }
        if ((i9 & 2) != 0) {
            groupsGroup = groupsBannedItem.group;
        }
        if ((i9 & 4) != 0) {
            usersUser = groupsBannedItem.profile;
        }
        if ((i9 & 8) != 0) {
            groupsOwnerXtrBanInfoType = groupsBannedItem.type;
        }
        return groupsBannedItem.copy(groupsBanInfo, groupsGroup, usersUser, groupsOwnerXtrBanInfoType);
    }

    @Nullable
    public final GroupsBanInfo component1() {
        return this.banInfo;
    }

    @Nullable
    public final GroupsGroup component2() {
        return this.group;
    }

    @Nullable
    public final UsersUser component3() {
        return this.profile;
    }

    @Nullable
    public final GroupsOwnerXtrBanInfoType component4() {
        return this.type;
    }

    @NotNull
    public final GroupsBannedItem copy(@Nullable GroupsBanInfo groupsBanInfo, @Nullable GroupsGroup groupsGroup, @Nullable UsersUser usersUser, @Nullable GroupsOwnerXtrBanInfoType groupsOwnerXtrBanInfoType) {
        return new GroupsBannedItem(groupsBanInfo, groupsGroup, usersUser, groupsOwnerXtrBanInfoType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsBannedItem) {
            GroupsBannedItem groupsBannedItem = (GroupsBannedItem) obj;
            return Intrinsics.areEqual(this.banInfo, groupsBannedItem.banInfo) && Intrinsics.areEqual(this.group, groupsBannedItem.group) && Intrinsics.areEqual(this.profile, groupsBannedItem.profile) && this.type == groupsBannedItem.type;
        }
        return false;
    }

    @Nullable
    public final GroupsBanInfo getBanInfo() {
        return this.banInfo;
    }

    @Nullable
    public final GroupsGroup getGroup() {
        return this.group;
    }

    @Nullable
    public final UsersUser getProfile() {
        return this.profile;
    }

    @Nullable
    public final GroupsOwnerXtrBanInfoType getType() {
        return this.type;
    }

    public int hashCode() {
        GroupsBanInfo groupsBanInfo = this.banInfo;
        int hashCode = (groupsBanInfo == null ? 0 : groupsBanInfo.hashCode()) * 31;
        GroupsGroup groupsGroup = this.group;
        int hashCode2 = (hashCode + (groupsGroup == null ? 0 : groupsGroup.hashCode())) * 31;
        UsersUser usersUser = this.profile;
        int hashCode3 = (hashCode2 + (usersUser == null ? 0 : usersUser.hashCode())) * 31;
        GroupsOwnerXtrBanInfoType groupsOwnerXtrBanInfoType = this.type;
        return hashCode3 + (groupsOwnerXtrBanInfoType != null ? groupsOwnerXtrBanInfoType.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        GroupsBanInfo groupsBanInfo = this.banInfo;
        GroupsGroup groupsGroup = this.group;
        UsersUser usersUser = this.profile;
        GroupsOwnerXtrBanInfoType groupsOwnerXtrBanInfoType = this.type;
        return "GroupsBannedItem(banInfo=" + groupsBanInfo + ", group=" + groupsGroup + ", profile=" + usersUser + ", type=" + groupsOwnerXtrBanInfoType + ")";
    }

    public /* synthetic */ GroupsBannedItem(GroupsBanInfo groupsBanInfo, GroupsGroup groupsGroup, UsersUser usersUser, GroupsOwnerXtrBanInfoType groupsOwnerXtrBanInfoType, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : groupsBanInfo, (i9 & 2) != 0 ? null : groupsGroup, (i9 & 4) != 0 ? null : usersUser, (i9 & 8) != 0 ? null : groupsOwnerXtrBanInfoType);
    }
}

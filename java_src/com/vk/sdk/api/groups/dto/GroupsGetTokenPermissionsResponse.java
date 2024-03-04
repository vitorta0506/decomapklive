package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;", "", "mask", "", "permissions", "", "Lcom/vk/sdk/api/groups/dto/GroupsTokenPermissionSetting;", "(ILjava/util/List;)V", "getMask", "()I", "getPermissions", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGetTokenPermissionsResponse {
    @SerializedName("mask")
    private final int mask;
    @SerializedName("permissions")
    @NotNull
    private final List<GroupsTokenPermissionSetting> permissions;

    public GroupsGetTokenPermissionsResponse(int i9, @NotNull List<GroupsTokenPermissionSetting> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.mask = i9;
        this.permissions = permissions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GroupsGetTokenPermissionsResponse copy$default(GroupsGetTokenPermissionsResponse groupsGetTokenPermissionsResponse, int i9, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = groupsGetTokenPermissionsResponse.mask;
        }
        if ((i10 & 2) != 0) {
            list = groupsGetTokenPermissionsResponse.permissions;
        }
        return groupsGetTokenPermissionsResponse.copy(i9, list);
    }

    public final int component1() {
        return this.mask;
    }

    @NotNull
    public final List<GroupsTokenPermissionSetting> component2() {
        return this.permissions;
    }

    @NotNull
    public final GroupsGetTokenPermissionsResponse copy(int i9, @NotNull List<GroupsTokenPermissionSetting> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        return new GroupsGetTokenPermissionsResponse(i9, permissions);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGetTokenPermissionsResponse) {
            GroupsGetTokenPermissionsResponse groupsGetTokenPermissionsResponse = (GroupsGetTokenPermissionsResponse) obj;
            return this.mask == groupsGetTokenPermissionsResponse.mask && Intrinsics.areEqual(this.permissions, groupsGetTokenPermissionsResponse.permissions);
        }
        return false;
    }

    public final int getMask() {
        return this.mask;
    }

    @NotNull
    public final List<GroupsTokenPermissionSetting> getPermissions() {
        return this.permissions;
    }

    public int hashCode() {
        return (this.mask * 31) + this.permissions.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.mask;
        List<GroupsTokenPermissionSetting> list = this.permissions;
        return "GroupsGetTokenPermissionsResponse(mask=" + i9 + ", permissions=" + list + ")";
    }
}

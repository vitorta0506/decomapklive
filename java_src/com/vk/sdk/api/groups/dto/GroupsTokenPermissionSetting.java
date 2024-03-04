package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsTokenPermissionSetting;", "", "name", "", "setting", "", "(Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "getSetting", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsTokenPermissionSetting {
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("setting")
    private final int setting;

    public GroupsTokenPermissionSetting(@NotNull String name, int i9) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.setting = i9;
    }

    public static /* synthetic */ GroupsTokenPermissionSetting copy$default(GroupsTokenPermissionSetting groupsTokenPermissionSetting, String str, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = groupsTokenPermissionSetting.name;
        }
        if ((i10 & 2) != 0) {
            i9 = groupsTokenPermissionSetting.setting;
        }
        return groupsTokenPermissionSetting.copy(str, i9);
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    public final int component2() {
        return this.setting;
    }

    @NotNull
    public final GroupsTokenPermissionSetting copy(@NotNull String name, int i9) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new GroupsTokenPermissionSetting(name, i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsTokenPermissionSetting) {
            GroupsTokenPermissionSetting groupsTokenPermissionSetting = (GroupsTokenPermissionSetting) obj;
            return Intrinsics.areEqual(this.name, groupsTokenPermissionSetting.name) && this.setting == groupsTokenPermissionSetting.setting;
        }
        return false;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getSetting() {
        return this.setting;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.setting;
    }

    @NotNull
    public String toString() {
        String str = this.name;
        int i9 = this.setting;
        return "GroupsTokenPermissionSetting(name=" + str + ", setting=" + i9 + ")";
    }
}

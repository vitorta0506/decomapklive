package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\tJ$\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsAddressesInfo;", "", "isEnabled", "", "mainAddressId", "", "(ZLjava/lang/Integer;)V", "()Z", "getMainAddressId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(ZLjava/lang/Integer;)Lcom/vk/sdk/api/groups/dto/GroupsAddressesInfo;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsAddressesInfo {
    @SerializedName("is_enabled")
    private final boolean isEnabled;
    @SerializedName("main_address_id")
    @Nullable
    private final Integer mainAddressId;

    public GroupsAddressesInfo(boolean z10, @Nullable Integer num) {
        this.isEnabled = z10;
        this.mainAddressId = num;
    }

    public static /* synthetic */ GroupsAddressesInfo copy$default(GroupsAddressesInfo groupsAddressesInfo, boolean z10, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = groupsAddressesInfo.isEnabled;
        }
        if ((i9 & 2) != 0) {
            num = groupsAddressesInfo.mainAddressId;
        }
        return groupsAddressesInfo.copy(z10, num);
    }

    public final boolean component1() {
        return this.isEnabled;
    }

    @Nullable
    public final Integer component2() {
        return this.mainAddressId;
    }

    @NotNull
    public final GroupsAddressesInfo copy(boolean z10, @Nullable Integer num) {
        return new GroupsAddressesInfo(z10, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsAddressesInfo) {
            GroupsAddressesInfo groupsAddressesInfo = (GroupsAddressesInfo) obj;
            return this.isEnabled == groupsAddressesInfo.isEnabled && Intrinsics.areEqual(this.mainAddressId, groupsAddressesInfo.mainAddressId);
        }
        return false;
    }

    @Nullable
    public final Integer getMainAddressId() {
        return this.mainAddressId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z10 = this.isEnabled;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        Integer num = this.mainAddressId;
        return i9 + (num == null ? 0 : num.hashCode());
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.isEnabled;
        Integer num = this.mainAddressId;
        return "GroupsAddressesInfo(isEnabled=" + z10 + ", mainAddressId=" + num + ")";
    }

    public /* synthetic */ GroupsAddressesInfo(boolean z10, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i9 & 2) != 0 ? null : num);
    }
}

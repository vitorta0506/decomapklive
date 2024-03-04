package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\bJ$\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatus;", "", "status", "Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatusType;", "minutes", "", "(Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatusType;Ljava/lang/Integer;)V", "getMinutes", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStatus", "()Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatusType;", "component1", "component2", "copy", "(Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatusType;Ljava/lang/Integer;)Lcom/vk/sdk/api/groups/dto/GroupsOnlineStatus;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsOnlineStatus {
    @SerializedName("minutes")
    @Nullable
    private final Integer minutes;
    @SerializedName("status")
    @NotNull
    private final GroupsOnlineStatusType status;

    public GroupsOnlineStatus(@NotNull GroupsOnlineStatusType status, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.status = status;
        this.minutes = num;
    }

    public static /* synthetic */ GroupsOnlineStatus copy$default(GroupsOnlineStatus groupsOnlineStatus, GroupsOnlineStatusType groupsOnlineStatusType, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            groupsOnlineStatusType = groupsOnlineStatus.status;
        }
        if ((i9 & 2) != 0) {
            num = groupsOnlineStatus.minutes;
        }
        return groupsOnlineStatus.copy(groupsOnlineStatusType, num);
    }

    @NotNull
    public final GroupsOnlineStatusType component1() {
        return this.status;
    }

    @Nullable
    public final Integer component2() {
        return this.minutes;
    }

    @NotNull
    public final GroupsOnlineStatus copy(@NotNull GroupsOnlineStatusType status, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new GroupsOnlineStatus(status, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsOnlineStatus) {
            GroupsOnlineStatus groupsOnlineStatus = (GroupsOnlineStatus) obj;
            return this.status == groupsOnlineStatus.status && Intrinsics.areEqual(this.minutes, groupsOnlineStatus.minutes);
        }
        return false;
    }

    @Nullable
    public final Integer getMinutes() {
        return this.minutes;
    }

    @NotNull
    public final GroupsOnlineStatusType getStatus() {
        return this.status;
    }

    public int hashCode() {
        int hashCode = this.status.hashCode() * 31;
        Integer num = this.minutes;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        GroupsOnlineStatusType groupsOnlineStatusType = this.status;
        Integer num = this.minutes;
        return "GroupsOnlineStatus(status=" + groupsOnlineStatusType + ", minutes=" + num + ")";
    }

    public /* synthetic */ GroupsOnlineStatus(GroupsOnlineStatusType groupsOnlineStatusType, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(groupsOnlineStatusType, (i9 & 2) != 0 ? null : num);
    }
}

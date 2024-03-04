package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupBanInfo;", "", "comment", "", "endDate", "", "reason", "Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;)V", "getComment", "()Ljava/lang/String;", "getEndDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getReason", "()Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;)Lcom/vk/sdk/api/groups/dto/GroupsGroupBanInfo;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsGroupBanInfo {
    @SerializedName("comment")
    @Nullable
    private final String comment;
    @SerializedName("end_date")
    @Nullable
    private final Integer endDate;
    @SerializedName("reason")
    @Nullable
    private final GroupsBanInfoReason reason;

    public GroupsGroupBanInfo() {
        this(null, null, null, 7, null);
    }

    public GroupsGroupBanInfo(@Nullable String str, @Nullable Integer num, @Nullable GroupsBanInfoReason groupsBanInfoReason) {
        this.comment = str;
        this.endDate = num;
        this.reason = groupsBanInfoReason;
    }

    public static /* synthetic */ GroupsGroupBanInfo copy$default(GroupsGroupBanInfo groupsGroupBanInfo, String str, Integer num, GroupsBanInfoReason groupsBanInfoReason, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = groupsGroupBanInfo.comment;
        }
        if ((i9 & 2) != 0) {
            num = groupsGroupBanInfo.endDate;
        }
        if ((i9 & 4) != 0) {
            groupsBanInfoReason = groupsGroupBanInfo.reason;
        }
        return groupsGroupBanInfo.copy(str, num, groupsBanInfoReason);
    }

    @Nullable
    public final String component1() {
        return this.comment;
    }

    @Nullable
    public final Integer component2() {
        return this.endDate;
    }

    @Nullable
    public final GroupsBanInfoReason component3() {
        return this.reason;
    }

    @NotNull
    public final GroupsGroupBanInfo copy(@Nullable String str, @Nullable Integer num, @Nullable GroupsBanInfoReason groupsBanInfoReason) {
        return new GroupsGroupBanInfo(str, num, groupsBanInfoReason);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsGroupBanInfo) {
            GroupsGroupBanInfo groupsGroupBanInfo = (GroupsGroupBanInfo) obj;
            return Intrinsics.areEqual(this.comment, groupsGroupBanInfo.comment) && Intrinsics.areEqual(this.endDate, groupsGroupBanInfo.endDate) && this.reason == groupsGroupBanInfo.reason;
        }
        return false;
    }

    @Nullable
    public final String getComment() {
        return this.comment;
    }

    @Nullable
    public final Integer getEndDate() {
        return this.endDate;
    }

    @Nullable
    public final GroupsBanInfoReason getReason() {
        return this.reason;
    }

    public int hashCode() {
        String str = this.comment;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.endDate;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        GroupsBanInfoReason groupsBanInfoReason = this.reason;
        return hashCode2 + (groupsBanInfoReason != null ? groupsBanInfoReason.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.comment;
        Integer num = this.endDate;
        GroupsBanInfoReason groupsBanInfoReason = this.reason;
        return "GroupsGroupBanInfo(comment=" + str + ", endDate=" + num + ", reason=" + groupsBanInfoReason + ")";
    }

    public /* synthetic */ GroupsGroupBanInfo(String str, Integer num, GroupsBanInfoReason groupsBanInfoReason, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : groupsBanInfoReason);
    }
}

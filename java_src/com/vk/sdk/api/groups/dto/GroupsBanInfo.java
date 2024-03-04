package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010 \u001a\u0004\u0018\u00010\fHÆ\u0003Jb\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020\u00072\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\t\u0010&\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0016\u0010\u000fR\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0017\u0010\u000fR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\b\u0010\u0014R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsBanInfo;", "", "adminId", "", "comment", "", "commentVisible", "", "isClosed", "date", "endDate", "reason", "Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;)V", "getAdminId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getComment", "()Ljava/lang/String;", "getCommentVisible", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getDate", "getEndDate", "getReason", "()Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsBanInfoReason;)Lcom/vk/sdk/api/groups/dto/GroupsBanInfo;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsBanInfo {
    @SerializedName("admin_id")
    @Nullable
    private final Integer adminId;
    @SerializedName("comment")
    @Nullable
    private final String comment;
    @SerializedName("comment_visible")
    @Nullable
    private final Boolean commentVisible;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("end_date")
    @Nullable
    private final Integer endDate;
    @SerializedName("is_closed")
    @Nullable
    private final Boolean isClosed;
    @SerializedName("reason")
    @Nullable
    private final GroupsBanInfoReason reason;

    public GroupsBanInfo() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public GroupsBanInfo(@Nullable Integer num, @Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num2, @Nullable Integer num3, @Nullable GroupsBanInfoReason groupsBanInfoReason) {
        this.adminId = num;
        this.comment = str;
        this.commentVisible = bool;
        this.isClosed = bool2;
        this.date = num2;
        this.endDate = num3;
        this.reason = groupsBanInfoReason;
    }

    public static /* synthetic */ GroupsBanInfo copy$default(GroupsBanInfo groupsBanInfo, Integer num, String str, Boolean bool, Boolean bool2, Integer num2, Integer num3, GroupsBanInfoReason groupsBanInfoReason, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = groupsBanInfo.adminId;
        }
        if ((i9 & 2) != 0) {
            str = groupsBanInfo.comment;
        }
        String str2 = str;
        if ((i9 & 4) != 0) {
            bool = groupsBanInfo.commentVisible;
        }
        Boolean bool3 = bool;
        if ((i9 & 8) != 0) {
            bool2 = groupsBanInfo.isClosed;
        }
        Boolean bool4 = bool2;
        if ((i9 & 16) != 0) {
            num2 = groupsBanInfo.date;
        }
        Integer num4 = num2;
        if ((i9 & 32) != 0) {
            num3 = groupsBanInfo.endDate;
        }
        Integer num5 = num3;
        if ((i9 & 64) != 0) {
            groupsBanInfoReason = groupsBanInfo.reason;
        }
        return groupsBanInfo.copy(num, str2, bool3, bool4, num4, num5, groupsBanInfoReason);
    }

    @Nullable
    public final Integer component1() {
        return this.adminId;
    }

    @Nullable
    public final String component2() {
        return this.comment;
    }

    @Nullable
    public final Boolean component3() {
        return this.commentVisible;
    }

    @Nullable
    public final Boolean component4() {
        return this.isClosed;
    }

    @Nullable
    public final Integer component5() {
        return this.date;
    }

    @Nullable
    public final Integer component6() {
        return this.endDate;
    }

    @Nullable
    public final GroupsBanInfoReason component7() {
        return this.reason;
    }

    @NotNull
    public final GroupsBanInfo copy(@Nullable Integer num, @Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Integer num2, @Nullable Integer num3, @Nullable GroupsBanInfoReason groupsBanInfoReason) {
        return new GroupsBanInfo(num, str, bool, bool2, num2, num3, groupsBanInfoReason);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsBanInfo) {
            GroupsBanInfo groupsBanInfo = (GroupsBanInfo) obj;
            return Intrinsics.areEqual(this.adminId, groupsBanInfo.adminId) && Intrinsics.areEqual(this.comment, groupsBanInfo.comment) && Intrinsics.areEqual(this.commentVisible, groupsBanInfo.commentVisible) && Intrinsics.areEqual(this.isClosed, groupsBanInfo.isClosed) && Intrinsics.areEqual(this.date, groupsBanInfo.date) && Intrinsics.areEqual(this.endDate, groupsBanInfo.endDate) && this.reason == groupsBanInfo.reason;
        }
        return false;
    }

    @Nullable
    public final Integer getAdminId() {
        return this.adminId;
    }

    @Nullable
    public final String getComment() {
        return this.comment;
    }

    @Nullable
    public final Boolean getCommentVisible() {
        return this.commentVisible;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
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
        Integer num = this.adminId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.comment;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.commentVisible;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isClosed;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num2 = this.date;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.endDate;
        int hashCode6 = (hashCode5 + (num3 == null ? 0 : num3.hashCode())) * 31;
        GroupsBanInfoReason groupsBanInfoReason = this.reason;
        return hashCode6 + (groupsBanInfoReason != null ? groupsBanInfoReason.hashCode() : 0);
    }

    @Nullable
    public final Boolean isClosed() {
        return this.isClosed;
    }

    @NotNull
    public String toString() {
        Integer num = this.adminId;
        String str = this.comment;
        Boolean bool = this.commentVisible;
        Boolean bool2 = this.isClosed;
        Integer num2 = this.date;
        Integer num3 = this.endDate;
        GroupsBanInfoReason groupsBanInfoReason = this.reason;
        return "GroupsBanInfo(adminId=" + num + ", comment=" + str + ", commentVisible=" + bool + ", isClosed=" + bool2 + ", date=" + num2 + ", endDate=" + num3 + ", reason=" + groupsBanInfoReason + ")";
    }

    public /* synthetic */ GroupsBanInfo(Integer num, String str, Boolean bool, Boolean bool2, Integer num2, Integer num3, GroupsBanInfoReason groupsBanInfoReason, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : bool, (i9 & 8) != 0 ? null : bool2, (i9 & 16) != 0 ? null : num2, (i9 & 32) != 0 ? null : num3, (i9 & 64) != 0 ? null : groupsBanInfoReason);
    }
}

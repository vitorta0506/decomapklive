package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ:\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u000b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;", "", "closeTime", "", "openTime", "breakCloseTime", "breakOpenTime", "(IILjava/lang/Integer;Ljava/lang/Integer;)V", "getBreakCloseTime", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getBreakOpenTime", "getCloseTime", "()I", "getOpenTime", "component1", "component2", "component3", "component4", "copy", "(IILjava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetableDay;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsAddressTimetableDay {
    @SerializedName("break_close_time")
    @Nullable
    private final Integer breakCloseTime;
    @SerializedName("break_open_time")
    @Nullable
    private final Integer breakOpenTime;
    @SerializedName("close_time")
    private final int closeTime;
    @SerializedName("open_time")
    private final int openTime;

    public GroupsAddressTimetableDay(int i9, int i10, @Nullable Integer num, @Nullable Integer num2) {
        this.closeTime = i9;
        this.openTime = i10;
        this.breakCloseTime = num;
        this.breakOpenTime = num2;
    }

    public static /* synthetic */ GroupsAddressTimetableDay copy$default(GroupsAddressTimetableDay groupsAddressTimetableDay, int i9, int i10, Integer num, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = groupsAddressTimetableDay.closeTime;
        }
        if ((i11 & 2) != 0) {
            i10 = groupsAddressTimetableDay.openTime;
        }
        if ((i11 & 4) != 0) {
            num = groupsAddressTimetableDay.breakCloseTime;
        }
        if ((i11 & 8) != 0) {
            num2 = groupsAddressTimetableDay.breakOpenTime;
        }
        return groupsAddressTimetableDay.copy(i9, i10, num, num2);
    }

    public final int component1() {
        return this.closeTime;
    }

    public final int component2() {
        return this.openTime;
    }

    @Nullable
    public final Integer component3() {
        return this.breakCloseTime;
    }

    @Nullable
    public final Integer component4() {
        return this.breakOpenTime;
    }

    @NotNull
    public final GroupsAddressTimetableDay copy(int i9, int i10, @Nullable Integer num, @Nullable Integer num2) {
        return new GroupsAddressTimetableDay(i9, i10, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsAddressTimetableDay) {
            GroupsAddressTimetableDay groupsAddressTimetableDay = (GroupsAddressTimetableDay) obj;
            return this.closeTime == groupsAddressTimetableDay.closeTime && this.openTime == groupsAddressTimetableDay.openTime && Intrinsics.areEqual(this.breakCloseTime, groupsAddressTimetableDay.breakCloseTime) && Intrinsics.areEqual(this.breakOpenTime, groupsAddressTimetableDay.breakOpenTime);
        }
        return false;
    }

    @Nullable
    public final Integer getBreakCloseTime() {
        return this.breakCloseTime;
    }

    @Nullable
    public final Integer getBreakOpenTime() {
        return this.breakOpenTime;
    }

    public final int getCloseTime() {
        return this.closeTime;
    }

    public final int getOpenTime() {
        return this.openTime;
    }

    public int hashCode() {
        int i9 = ((this.closeTime * 31) + this.openTime) * 31;
        Integer num = this.breakCloseTime;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.breakOpenTime;
        return hashCode + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.closeTime;
        int i10 = this.openTime;
        Integer num = this.breakCloseTime;
        Integer num2 = this.breakOpenTime;
        return "GroupsAddressTimetableDay(closeTime=" + i9 + ", openTime=" + i10 + ", breakCloseTime=" + num + ", breakOpenTime=" + num2 + ")";
    }

    public /* synthetic */ GroupsAddressTimetableDay(int i9, int i10, Integer num, Integer num2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, (i11 & 4) != 0 ? null : num, (i11 & 8) != 0 ? null : num2);
    }
}

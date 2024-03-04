package com.vk.sdk.api.stats.dto;

import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\nHÆ\u0003JJ\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0005HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0011\u0010\u000fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/stats/dto/StatsPeriod;", "", PushConstants.INTENT_ACTIVITY_NAME, "Lcom/vk/sdk/api/stats/dto/StatsActivity;", "periodFrom", "", "periodTo", "reach", "Lcom/vk/sdk/api/stats/dto/StatsReach;", "visitors", "Lcom/vk/sdk/api/stats/dto/StatsViews;", "(Lcom/vk/sdk/api/stats/dto/StatsActivity;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/stats/dto/StatsReach;Lcom/vk/sdk/api/stats/dto/StatsViews;)V", "getActivity", "()Lcom/vk/sdk/api/stats/dto/StatsActivity;", "getPeriodFrom", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPeriodTo", "getReach", "()Lcom/vk/sdk/api/stats/dto/StatsReach;", "getVisitors", "()Lcom/vk/sdk/api/stats/dto/StatsViews;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/vk/sdk/api/stats/dto/StatsActivity;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/stats/dto/StatsReach;Lcom/vk/sdk/api/stats/dto/StatsViews;)Lcom/vk/sdk/api/stats/dto/StatsPeriod;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsPeriod {
    @SerializedName(PushConstants.INTENT_ACTIVITY_NAME)
    @Nullable
    private final StatsActivity activity;
    @SerializedName("period_from")
    @Nullable
    private final Integer periodFrom;
    @SerializedName("period_to")
    @Nullable
    private final Integer periodTo;
    @SerializedName("reach")
    @Nullable
    private final StatsReach reach;
    @SerializedName("visitors")
    @Nullable
    private final StatsViews visitors;

    public StatsPeriod() {
        this(null, null, null, null, null, 31, null);
    }

    public StatsPeriod(@Nullable StatsActivity statsActivity, @Nullable Integer num, @Nullable Integer num2, @Nullable StatsReach statsReach, @Nullable StatsViews statsViews) {
        this.activity = statsActivity;
        this.periodFrom = num;
        this.periodTo = num2;
        this.reach = statsReach;
        this.visitors = statsViews;
    }

    public static /* synthetic */ StatsPeriod copy$default(StatsPeriod statsPeriod, StatsActivity statsActivity, Integer num, Integer num2, StatsReach statsReach, StatsViews statsViews, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            statsActivity = statsPeriod.activity;
        }
        if ((i9 & 2) != 0) {
            num = statsPeriod.periodFrom;
        }
        Integer num3 = num;
        if ((i9 & 4) != 0) {
            num2 = statsPeriod.periodTo;
        }
        Integer num4 = num2;
        if ((i9 & 8) != 0) {
            statsReach = statsPeriod.reach;
        }
        StatsReach statsReach2 = statsReach;
        if ((i9 & 16) != 0) {
            statsViews = statsPeriod.visitors;
        }
        return statsPeriod.copy(statsActivity, num3, num4, statsReach2, statsViews);
    }

    @Nullable
    public final StatsActivity component1() {
        return this.activity;
    }

    @Nullable
    public final Integer component2() {
        return this.periodFrom;
    }

    @Nullable
    public final Integer component3() {
        return this.periodTo;
    }

    @Nullable
    public final StatsReach component4() {
        return this.reach;
    }

    @Nullable
    public final StatsViews component5() {
        return this.visitors;
    }

    @NotNull
    public final StatsPeriod copy(@Nullable StatsActivity statsActivity, @Nullable Integer num, @Nullable Integer num2, @Nullable StatsReach statsReach, @Nullable StatsViews statsViews) {
        return new StatsPeriod(statsActivity, num, num2, statsReach, statsViews);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatsPeriod) {
            StatsPeriod statsPeriod = (StatsPeriod) obj;
            return Intrinsics.areEqual(this.activity, statsPeriod.activity) && Intrinsics.areEqual(this.periodFrom, statsPeriod.periodFrom) && Intrinsics.areEqual(this.periodTo, statsPeriod.periodTo) && Intrinsics.areEqual(this.reach, statsPeriod.reach) && Intrinsics.areEqual(this.visitors, statsPeriod.visitors);
        }
        return false;
    }

    @Nullable
    public final StatsActivity getActivity() {
        return this.activity;
    }

    @Nullable
    public final Integer getPeriodFrom() {
        return this.periodFrom;
    }

    @Nullable
    public final Integer getPeriodTo() {
        return this.periodTo;
    }

    @Nullable
    public final StatsReach getReach() {
        return this.reach;
    }

    @Nullable
    public final StatsViews getVisitors() {
        return this.visitors;
    }

    public int hashCode() {
        StatsActivity statsActivity = this.activity;
        int hashCode = (statsActivity == null ? 0 : statsActivity.hashCode()) * 31;
        Integer num = this.periodFrom;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.periodTo;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        StatsReach statsReach = this.reach;
        int hashCode4 = (hashCode3 + (statsReach == null ? 0 : statsReach.hashCode())) * 31;
        StatsViews statsViews = this.visitors;
        return hashCode4 + (statsViews != null ? statsViews.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        StatsActivity statsActivity = this.activity;
        Integer num = this.periodFrom;
        Integer num2 = this.periodTo;
        StatsReach statsReach = this.reach;
        StatsViews statsViews = this.visitors;
        return "StatsPeriod(activity=" + statsActivity + ", periodFrom=" + num + ", periodTo=" + num2 + ", reach=" + statsReach + ", visitors=" + statsViews + ")";
    }

    public /* synthetic */ StatsPeriod(StatsActivity statsActivity, Integer num, Integer num2, StatsReach statsReach, StatsViews statsViews, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : statsActivity, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : num2, (i9 & 8) != 0 ? null : statsReach, (i9 & 16) != 0 ? null : statsViews);
    }
}

package com.vk.sdk.api.stats.dto;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B³\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\u0010\u0013J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J¼\u0001\u00103\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u00104J\u0013\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u00020\u0003HÖ\u0001J\t\u00109\u001a\u00020:HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0015R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0019\u0010\u0015R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001a\u0010\u0015R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001b\u0010\u0015R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001c\u0010\u0015R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001d\u0010\u0015R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001e\u0010\u0015R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001f\u0010\u0015R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b \u0010\u0015R\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b#\u0010\u0015R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b$\u0010\u0015¨\u0006;"}, d2 = {"Lcom/vk/sdk/api/stats/dto/StatsWallpostStat;", "", ShareConstants.RESULT_POST_ID, "", "hide", "joinGroup", "links", "reachSubscribers", "reachSubscribersCount", "reachTotal", "reachTotalCount", "reachViral", "reachAds", "report", "toGroup", "unsubscribe", "sexAge", "", "Lcom/vk/sdk/api/stats/dto/StatsSexAge;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V", "getHide", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getJoinGroup", "getLinks", "getPostId", "getReachAds", "getReachSubscribers", "getReachSubscribersCount", "getReachTotal", "getReachTotalCount", "getReachViral", "getReport", "getSexAge", "()Ljava/util/List;", "getToGroup", "getUnsubscribe", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/stats/dto/StatsWallpostStat;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsWallpostStat {
    @SerializedName("hide")
    @Nullable
    private final Integer hide;
    @SerializedName("join_group")
    @Nullable
    private final Integer joinGroup;
    @SerializedName("links")
    @Nullable
    private final Integer links;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("reach_ads")
    @Nullable
    private final Integer reachAds;
    @SerializedName("reach_subscribers")
    @Nullable
    private final Integer reachSubscribers;
    @SerializedName("reach_subscribers_count")
    @Nullable
    private final Integer reachSubscribersCount;
    @SerializedName("reach_total")
    @Nullable
    private final Integer reachTotal;
    @SerializedName("reach_total_count")
    @Nullable
    private final Integer reachTotalCount;
    @SerializedName("reach_viral")
    @Nullable
    private final Integer reachViral;
    @SerializedName("report")
    @Nullable
    private final Integer report;
    @SerializedName("sex_age")
    @Nullable
    private final List<StatsSexAge> sexAge;
    @SerializedName("to_group")
    @Nullable
    private final Integer toGroup;
    @SerializedName("unsubscribe")
    @Nullable
    private final Integer unsubscribe;

    public StatsWallpostStat() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
    }

    public StatsWallpostStat(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable List<StatsSexAge> list) {
        this.postId = num;
        this.hide = num2;
        this.joinGroup = num3;
        this.links = num4;
        this.reachSubscribers = num5;
        this.reachSubscribersCount = num6;
        this.reachTotal = num7;
        this.reachTotalCount = num8;
        this.reachViral = num9;
        this.reachAds = num10;
        this.report = num11;
        this.toGroup = num12;
        this.unsubscribe = num13;
        this.sexAge = list;
    }

    @Nullable
    public final Integer component1() {
        return this.postId;
    }

    @Nullable
    public final Integer component10() {
        return this.reachAds;
    }

    @Nullable
    public final Integer component11() {
        return this.report;
    }

    @Nullable
    public final Integer component12() {
        return this.toGroup;
    }

    @Nullable
    public final Integer component13() {
        return this.unsubscribe;
    }

    @Nullable
    public final List<StatsSexAge> component14() {
        return this.sexAge;
    }

    @Nullable
    public final Integer component2() {
        return this.hide;
    }

    @Nullable
    public final Integer component3() {
        return this.joinGroup;
    }

    @Nullable
    public final Integer component4() {
        return this.links;
    }

    @Nullable
    public final Integer component5() {
        return this.reachSubscribers;
    }

    @Nullable
    public final Integer component6() {
        return this.reachSubscribersCount;
    }

    @Nullable
    public final Integer component7() {
        return this.reachTotal;
    }

    @Nullable
    public final Integer component8() {
        return this.reachTotalCount;
    }

    @Nullable
    public final Integer component9() {
        return this.reachViral;
    }

    @NotNull
    public final StatsWallpostStat copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11, @Nullable Integer num12, @Nullable Integer num13, @Nullable List<StatsSexAge> list) {
        return new StatsWallpostStat(num, num2, num3, num4, num5, num6, num7, num8, num9, num10, num11, num12, num13, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatsWallpostStat) {
            StatsWallpostStat statsWallpostStat = (StatsWallpostStat) obj;
            return Intrinsics.areEqual(this.postId, statsWallpostStat.postId) && Intrinsics.areEqual(this.hide, statsWallpostStat.hide) && Intrinsics.areEqual(this.joinGroup, statsWallpostStat.joinGroup) && Intrinsics.areEqual(this.links, statsWallpostStat.links) && Intrinsics.areEqual(this.reachSubscribers, statsWallpostStat.reachSubscribers) && Intrinsics.areEqual(this.reachSubscribersCount, statsWallpostStat.reachSubscribersCount) && Intrinsics.areEqual(this.reachTotal, statsWallpostStat.reachTotal) && Intrinsics.areEqual(this.reachTotalCount, statsWallpostStat.reachTotalCount) && Intrinsics.areEqual(this.reachViral, statsWallpostStat.reachViral) && Intrinsics.areEqual(this.reachAds, statsWallpostStat.reachAds) && Intrinsics.areEqual(this.report, statsWallpostStat.report) && Intrinsics.areEqual(this.toGroup, statsWallpostStat.toGroup) && Intrinsics.areEqual(this.unsubscribe, statsWallpostStat.unsubscribe) && Intrinsics.areEqual(this.sexAge, statsWallpostStat.sexAge);
        }
        return false;
    }

    @Nullable
    public final Integer getHide() {
        return this.hide;
    }

    @Nullable
    public final Integer getJoinGroup() {
        return this.joinGroup;
    }

    @Nullable
    public final Integer getLinks() {
        return this.links;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final Integer getReachAds() {
        return this.reachAds;
    }

    @Nullable
    public final Integer getReachSubscribers() {
        return this.reachSubscribers;
    }

    @Nullable
    public final Integer getReachSubscribersCount() {
        return this.reachSubscribersCount;
    }

    @Nullable
    public final Integer getReachTotal() {
        return this.reachTotal;
    }

    @Nullable
    public final Integer getReachTotalCount() {
        return this.reachTotalCount;
    }

    @Nullable
    public final Integer getReachViral() {
        return this.reachViral;
    }

    @Nullable
    public final Integer getReport() {
        return this.report;
    }

    @Nullable
    public final List<StatsSexAge> getSexAge() {
        return this.sexAge;
    }

    @Nullable
    public final Integer getToGroup() {
        return this.toGroup;
    }

    @Nullable
    public final Integer getUnsubscribe() {
        return this.unsubscribe;
    }

    public int hashCode() {
        Integer num = this.postId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.hide;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.joinGroup;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.links;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.reachSubscribers;
        int hashCode5 = (hashCode4 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.reachSubscribersCount;
        int hashCode6 = (hashCode5 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.reachTotal;
        int hashCode7 = (hashCode6 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.reachTotalCount;
        int hashCode8 = (hashCode7 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.reachViral;
        int hashCode9 = (hashCode8 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.reachAds;
        int hashCode10 = (hashCode9 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.report;
        int hashCode11 = (hashCode10 + (num11 == null ? 0 : num11.hashCode())) * 31;
        Integer num12 = this.toGroup;
        int hashCode12 = (hashCode11 + (num12 == null ? 0 : num12.hashCode())) * 31;
        Integer num13 = this.unsubscribe;
        int hashCode13 = (hashCode12 + (num13 == null ? 0 : num13.hashCode())) * 31;
        List<StatsSexAge> list = this.sexAge;
        return hashCode13 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.postId;
        Integer num2 = this.hide;
        Integer num3 = this.joinGroup;
        Integer num4 = this.links;
        Integer num5 = this.reachSubscribers;
        Integer num6 = this.reachSubscribersCount;
        Integer num7 = this.reachTotal;
        Integer num8 = this.reachTotalCount;
        Integer num9 = this.reachViral;
        Integer num10 = this.reachAds;
        Integer num11 = this.report;
        Integer num12 = this.toGroup;
        Integer num13 = this.unsubscribe;
        List<StatsSexAge> list = this.sexAge;
        return "StatsWallpostStat(postId=" + num + ", hide=" + num2 + ", joinGroup=" + num3 + ", links=" + num4 + ", reachSubscribers=" + num5 + ", reachSubscribersCount=" + num6 + ", reachTotal=" + num7 + ", reachTotalCount=" + num8 + ", reachViral=" + num9 + ", reachAds=" + num10 + ", report=" + num11 + ", toGroup=" + num12 + ", unsubscribe=" + num13 + ", sexAge=" + list + ")";
    }

    public /* synthetic */ StatsWallpostStat(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, Integer num12, Integer num13, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : num5, (i9 & 32) != 0 ? null : num6, (i9 & 64) != 0 ? null : num7, (i9 & 128) != 0 ? null : num8, (i9 & 256) != 0 ? null : num9, (i9 & 512) != 0 ? null : num10, (i9 & 1024) != 0 ? null : num11, (i9 & 2048) != 0 ? null : num12, (i9 & 4096) != 0 ? null : num13, (i9 & 8192) == 0 ? list : null);
    }
}

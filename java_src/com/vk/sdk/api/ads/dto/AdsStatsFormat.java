package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b+\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B¡\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013Jª\u0001\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00100J\u0013\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00104\u001a\u00020\u0003HÖ\u0001J\t\u00105\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0017\u0010\u0013R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0018\u0010\u0013R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0019\u0010\u0013R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001b\u0010\u0013R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001c\u0010\u0013R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001d\u0010\u0013R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001e\u0010\u0013R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001f\u0010\u0013R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b \u0010\u0013R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b!\u0010\u0013¨\u00066"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsStatsFormat;", "", "clicks", "", "linkExternalClicks", "day", "", "impressions", "joinRate", "month", "overall", "reach", "spent", "videoClicksSite", "videoViews", "videoViewsFull", "videoViewsHalf", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getClicks", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDay", "()Ljava/lang/String;", "getImpressions", "getJoinRate", "getLinkExternalClicks", "getMonth", "getOverall", "getReach", "getSpent", "getVideoClicksSite", "getVideoViews", "getVideoViewsFull", "getVideoViewsHalf", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/ads/dto/AdsStatsFormat;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsStatsFormat {
    @SerializedName("clicks")
    @Nullable
    private final Integer clicks;
    @SerializedName("day")
    @Nullable
    private final String day;
    @SerializedName("impressions")
    @Nullable
    private final Integer impressions;
    @SerializedName("join_rate")
    @Nullable
    private final Integer joinRate;
    @SerializedName("link_external_clicks")
    @Nullable
    private final Integer linkExternalClicks;
    @SerializedName("month")
    @Nullable
    private final String month;
    @SerializedName("overall")
    @Nullable
    private final Integer overall;
    @SerializedName("reach")
    @Nullable
    private final Integer reach;
    @SerializedName("spent")
    @Nullable
    private final Integer spent;
    @SerializedName("video_clicks_site")
    @Nullable
    private final Integer videoClicksSite;
    @SerializedName("video_views")
    @Nullable
    private final Integer videoViews;
    @SerializedName("video_views_full")
    @Nullable
    private final Integer videoViewsFull;
    @SerializedName("video_views_half")
    @Nullable
    private final Integer videoViewsHalf;

    public AdsStatsFormat() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public AdsStatsFormat(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str2, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11) {
        this.clicks = num;
        this.linkExternalClicks = num2;
        this.day = str;
        this.impressions = num3;
        this.joinRate = num4;
        this.month = str2;
        this.overall = num5;
        this.reach = num6;
        this.spent = num7;
        this.videoClicksSite = num8;
        this.videoViews = num9;
        this.videoViewsFull = num10;
        this.videoViewsHalf = num11;
    }

    @Nullable
    public final Integer component1() {
        return this.clicks;
    }

    @Nullable
    public final Integer component10() {
        return this.videoClicksSite;
    }

    @Nullable
    public final Integer component11() {
        return this.videoViews;
    }

    @Nullable
    public final Integer component12() {
        return this.videoViewsFull;
    }

    @Nullable
    public final Integer component13() {
        return this.videoViewsHalf;
    }

    @Nullable
    public final Integer component2() {
        return this.linkExternalClicks;
    }

    @Nullable
    public final String component3() {
        return this.day;
    }

    @Nullable
    public final Integer component4() {
        return this.impressions;
    }

    @Nullable
    public final Integer component5() {
        return this.joinRate;
    }

    @Nullable
    public final String component6() {
        return this.month;
    }

    @Nullable
    public final Integer component7() {
        return this.overall;
    }

    @Nullable
    public final Integer component8() {
        return this.reach;
    }

    @Nullable
    public final Integer component9() {
        return this.spent;
    }

    @NotNull
    public final AdsStatsFormat copy(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str2, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10, @Nullable Integer num11) {
        return new AdsStatsFormat(num, num2, str, num3, num4, str2, num5, num6, num7, num8, num9, num10, num11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsStatsFormat) {
            AdsStatsFormat adsStatsFormat = (AdsStatsFormat) obj;
            return Intrinsics.areEqual(this.clicks, adsStatsFormat.clicks) && Intrinsics.areEqual(this.linkExternalClicks, adsStatsFormat.linkExternalClicks) && Intrinsics.areEqual(this.day, adsStatsFormat.day) && Intrinsics.areEqual(this.impressions, adsStatsFormat.impressions) && Intrinsics.areEqual(this.joinRate, adsStatsFormat.joinRate) && Intrinsics.areEqual(this.month, adsStatsFormat.month) && Intrinsics.areEqual(this.overall, adsStatsFormat.overall) && Intrinsics.areEqual(this.reach, adsStatsFormat.reach) && Intrinsics.areEqual(this.spent, adsStatsFormat.spent) && Intrinsics.areEqual(this.videoClicksSite, adsStatsFormat.videoClicksSite) && Intrinsics.areEqual(this.videoViews, adsStatsFormat.videoViews) && Intrinsics.areEqual(this.videoViewsFull, adsStatsFormat.videoViewsFull) && Intrinsics.areEqual(this.videoViewsHalf, adsStatsFormat.videoViewsHalf);
        }
        return false;
    }

    @Nullable
    public final Integer getClicks() {
        return this.clicks;
    }

    @Nullable
    public final String getDay() {
        return this.day;
    }

    @Nullable
    public final Integer getImpressions() {
        return this.impressions;
    }

    @Nullable
    public final Integer getJoinRate() {
        return this.joinRate;
    }

    @Nullable
    public final Integer getLinkExternalClicks() {
        return this.linkExternalClicks;
    }

    @Nullable
    public final String getMonth() {
        return this.month;
    }

    @Nullable
    public final Integer getOverall() {
        return this.overall;
    }

    @Nullable
    public final Integer getReach() {
        return this.reach;
    }

    @Nullable
    public final Integer getSpent() {
        return this.spent;
    }

    @Nullable
    public final Integer getVideoClicksSite() {
        return this.videoClicksSite;
    }

    @Nullable
    public final Integer getVideoViews() {
        return this.videoViews;
    }

    @Nullable
    public final Integer getVideoViewsFull() {
        return this.videoViewsFull;
    }

    @Nullable
    public final Integer getVideoViewsHalf() {
        return this.videoViewsHalf;
    }

    public int hashCode() {
        Integer num = this.clicks;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.linkExternalClicks;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.day;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.impressions;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.joinRate;
        int hashCode5 = (hashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str2 = this.month;
        int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num5 = this.overall;
        int hashCode7 = (hashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.reach;
        int hashCode8 = (hashCode7 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.spent;
        int hashCode9 = (hashCode8 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.videoClicksSite;
        int hashCode10 = (hashCode9 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.videoViews;
        int hashCode11 = (hashCode10 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.videoViewsFull;
        int hashCode12 = (hashCode11 + (num10 == null ? 0 : num10.hashCode())) * 31;
        Integer num11 = this.videoViewsHalf;
        return hashCode12 + (num11 != null ? num11.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.clicks;
        Integer num2 = this.linkExternalClicks;
        String str = this.day;
        Integer num3 = this.impressions;
        Integer num4 = this.joinRate;
        String str2 = this.month;
        Integer num5 = this.overall;
        Integer num6 = this.reach;
        Integer num7 = this.spent;
        Integer num8 = this.videoClicksSite;
        Integer num9 = this.videoViews;
        Integer num10 = this.videoViewsFull;
        Integer num11 = this.videoViewsHalf;
        return "AdsStatsFormat(clicks=" + num + ", linkExternalClicks=" + num2 + ", day=" + str + ", impressions=" + num3 + ", joinRate=" + num4 + ", month=" + str2 + ", overall=" + num5 + ", reach=" + num6 + ", spent=" + num7 + ", videoClicksSite=" + num8 + ", videoViews=" + num9 + ", videoViewsFull=" + num10 + ", videoViewsHalf=" + num11 + ")";
    }

    public /* synthetic */ AdsStatsFormat(Integer num, Integer num2, String str, Integer num3, Integer num4, String str2, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, Integer num11, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : num3, (i9 & 16) != 0 ? null : num4, (i9 & 32) != 0 ? null : str2, (i9 & 64) != 0 ? null : num5, (i9 & 128) != 0 ? null : num6, (i9 & 256) != 0 ? null : num7, (i9 & 512) != 0 ? null : num8, (i9 & 1024) != 0 ? null : num9, (i9 & 2048) != 0 ? null : num10, (i9 & 4096) == 0 ? num11 : null);
    }
}

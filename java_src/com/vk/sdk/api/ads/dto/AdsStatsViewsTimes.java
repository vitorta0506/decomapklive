package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010$\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0092\u0001\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0003HÖ\u0001J\t\u0010/\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0015\u0010\u0011R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0016\u0010\u0011R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0017\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001a\u0010\u0011R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001b\u0010\u0011R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001c\u0010\u0011R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001d\u0010\u0011¨\u00060"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsStatsViewsTimes;", "", "viewsAdsTimes1", "", "viewsAdsTimes2", "viewsAdsTimes3", "viewsAdsTimes4", "viewsAdsTimes5", "", "viewsAdsTimes6", "viewsAdsTimes7", "viewsAdsTimes8", "viewsAdsTimes9", "viewsAdsTimes10", "viewsAdsTimes11Plus", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getViewsAdsTimes1", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getViewsAdsTimes10", "getViewsAdsTimes11Plus", "getViewsAdsTimes2", "getViewsAdsTimes3", "getViewsAdsTimes4", "getViewsAdsTimes5", "()Ljava/lang/String;", "getViewsAdsTimes6", "getViewsAdsTimes7", "getViewsAdsTimes8", "getViewsAdsTimes9", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/ads/dto/AdsStatsViewsTimes;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsStatsViewsTimes {
    @SerializedName("views_ads_times_1")
    @Nullable
    private final Integer viewsAdsTimes1;
    @SerializedName("views_ads_times_10")
    @Nullable
    private final Integer viewsAdsTimes10;
    @SerializedName("views_ads_times_11_plus")
    @Nullable
    private final Integer viewsAdsTimes11Plus;
    @SerializedName("views_ads_times_2")
    @Nullable
    private final Integer viewsAdsTimes2;
    @SerializedName("views_ads_times_3")
    @Nullable
    private final Integer viewsAdsTimes3;
    @SerializedName("views_ads_times_4")
    @Nullable
    private final Integer viewsAdsTimes4;
    @SerializedName("views_ads_times_5")
    @Nullable
    private final String viewsAdsTimes5;
    @SerializedName("views_ads_times_6")
    @Nullable
    private final Integer viewsAdsTimes6;
    @SerializedName("views_ads_times_7")
    @Nullable
    private final Integer viewsAdsTimes7;
    @SerializedName("views_ads_times_8")
    @Nullable
    private final Integer viewsAdsTimes8;
    @SerializedName("views_ads_times_9")
    @Nullable
    private final Integer viewsAdsTimes9;

    public AdsStatsViewsTimes() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public AdsStatsViewsTimes(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10) {
        this.viewsAdsTimes1 = num;
        this.viewsAdsTimes2 = num2;
        this.viewsAdsTimes3 = num3;
        this.viewsAdsTimes4 = num4;
        this.viewsAdsTimes5 = str;
        this.viewsAdsTimes6 = num5;
        this.viewsAdsTimes7 = num6;
        this.viewsAdsTimes8 = num7;
        this.viewsAdsTimes9 = num8;
        this.viewsAdsTimes10 = num9;
        this.viewsAdsTimes11Plus = num10;
    }

    @Nullable
    public final Integer component1() {
        return this.viewsAdsTimes1;
    }

    @Nullable
    public final Integer component10() {
        return this.viewsAdsTimes10;
    }

    @Nullable
    public final Integer component11() {
        return this.viewsAdsTimes11Plus;
    }

    @Nullable
    public final Integer component2() {
        return this.viewsAdsTimes2;
    }

    @Nullable
    public final Integer component3() {
        return this.viewsAdsTimes3;
    }

    @Nullable
    public final Integer component4() {
        return this.viewsAdsTimes4;
    }

    @Nullable
    public final String component5() {
        return this.viewsAdsTimes5;
    }

    @Nullable
    public final Integer component6() {
        return this.viewsAdsTimes6;
    }

    @Nullable
    public final Integer component7() {
        return this.viewsAdsTimes7;
    }

    @Nullable
    public final Integer component8() {
        return this.viewsAdsTimes8;
    }

    @Nullable
    public final Integer component9() {
        return this.viewsAdsTimes9;
    }

    @NotNull
    public final AdsStatsViewsTimes copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str, @Nullable Integer num5, @Nullable Integer num6, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable Integer num10) {
        return new AdsStatsViewsTimes(num, num2, num3, num4, str, num5, num6, num7, num8, num9, num10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsStatsViewsTimes) {
            AdsStatsViewsTimes adsStatsViewsTimes = (AdsStatsViewsTimes) obj;
            return Intrinsics.areEqual(this.viewsAdsTimes1, adsStatsViewsTimes.viewsAdsTimes1) && Intrinsics.areEqual(this.viewsAdsTimes2, adsStatsViewsTimes.viewsAdsTimes2) && Intrinsics.areEqual(this.viewsAdsTimes3, adsStatsViewsTimes.viewsAdsTimes3) && Intrinsics.areEqual(this.viewsAdsTimes4, adsStatsViewsTimes.viewsAdsTimes4) && Intrinsics.areEqual(this.viewsAdsTimes5, adsStatsViewsTimes.viewsAdsTimes5) && Intrinsics.areEqual(this.viewsAdsTimes6, adsStatsViewsTimes.viewsAdsTimes6) && Intrinsics.areEqual(this.viewsAdsTimes7, adsStatsViewsTimes.viewsAdsTimes7) && Intrinsics.areEqual(this.viewsAdsTimes8, adsStatsViewsTimes.viewsAdsTimes8) && Intrinsics.areEqual(this.viewsAdsTimes9, adsStatsViewsTimes.viewsAdsTimes9) && Intrinsics.areEqual(this.viewsAdsTimes10, adsStatsViewsTimes.viewsAdsTimes10) && Intrinsics.areEqual(this.viewsAdsTimes11Plus, adsStatsViewsTimes.viewsAdsTimes11Plus);
        }
        return false;
    }

    @Nullable
    public final Integer getViewsAdsTimes1() {
        return this.viewsAdsTimes1;
    }

    @Nullable
    public final Integer getViewsAdsTimes10() {
        return this.viewsAdsTimes10;
    }

    @Nullable
    public final Integer getViewsAdsTimes11Plus() {
        return this.viewsAdsTimes11Plus;
    }

    @Nullable
    public final Integer getViewsAdsTimes2() {
        return this.viewsAdsTimes2;
    }

    @Nullable
    public final Integer getViewsAdsTimes3() {
        return this.viewsAdsTimes3;
    }

    @Nullable
    public final Integer getViewsAdsTimes4() {
        return this.viewsAdsTimes4;
    }

    @Nullable
    public final String getViewsAdsTimes5() {
        return this.viewsAdsTimes5;
    }

    @Nullable
    public final Integer getViewsAdsTimes6() {
        return this.viewsAdsTimes6;
    }

    @Nullable
    public final Integer getViewsAdsTimes7() {
        return this.viewsAdsTimes7;
    }

    @Nullable
    public final Integer getViewsAdsTimes8() {
        return this.viewsAdsTimes8;
    }

    @Nullable
    public final Integer getViewsAdsTimes9() {
        return this.viewsAdsTimes9;
    }

    public int hashCode() {
        Integer num = this.viewsAdsTimes1;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.viewsAdsTimes2;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.viewsAdsTimes3;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.viewsAdsTimes4;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str = this.viewsAdsTimes5;
        int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num5 = this.viewsAdsTimes6;
        int hashCode6 = (hashCode5 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.viewsAdsTimes7;
        int hashCode7 = (hashCode6 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.viewsAdsTimes8;
        int hashCode8 = (hashCode7 + (num7 == null ? 0 : num7.hashCode())) * 31;
        Integer num8 = this.viewsAdsTimes9;
        int hashCode9 = (hashCode8 + (num8 == null ? 0 : num8.hashCode())) * 31;
        Integer num9 = this.viewsAdsTimes10;
        int hashCode10 = (hashCode9 + (num9 == null ? 0 : num9.hashCode())) * 31;
        Integer num10 = this.viewsAdsTimes11Plus;
        return hashCode10 + (num10 != null ? num10.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.viewsAdsTimes1;
        Integer num2 = this.viewsAdsTimes2;
        Integer num3 = this.viewsAdsTimes3;
        Integer num4 = this.viewsAdsTimes4;
        String str = this.viewsAdsTimes5;
        Integer num5 = this.viewsAdsTimes6;
        Integer num6 = this.viewsAdsTimes7;
        Integer num7 = this.viewsAdsTimes8;
        Integer num8 = this.viewsAdsTimes9;
        Integer num9 = this.viewsAdsTimes10;
        Integer num10 = this.viewsAdsTimes11Plus;
        return "AdsStatsViewsTimes(viewsAdsTimes1=" + num + ", viewsAdsTimes2=" + num2 + ", viewsAdsTimes3=" + num3 + ", viewsAdsTimes4=" + num4 + ", viewsAdsTimes5=" + str + ", viewsAdsTimes6=" + num5 + ", viewsAdsTimes7=" + num6 + ", viewsAdsTimes8=" + num7 + ", viewsAdsTimes9=" + num8 + ", viewsAdsTimes10=" + num9 + ", viewsAdsTimes11Plus=" + num10 + ")";
    }

    public /* synthetic */ AdsStatsViewsTimes(Integer num, Integer num2, Integer num3, Integer num4, String str, Integer num5, Integer num6, Integer num7, Integer num8, Integer num9, Integer num10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : str, (i9 & 32) != 0 ? null : num5, (i9 & 64) != 0 ? null : num6, (i9 & 128) != 0 ? null : num7, (i9 & 256) != 0 ? null : num8, (i9 & 512) != 0 ? null : num9, (i9 & 1024) == 0 ? num10 : null);
    }
}

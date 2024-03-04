package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\rJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011Jx\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0014\u0010\u0011R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0015\u0010\u0011R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0016\u0010\u0011R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0017\u0010\u0011R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0018\u0010\u0011R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0019\u0010\u0011¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsTargStats;", "", "audienceCount", "", "recommendedCpc", "", "recommendedCpm", "recommendedCpc50", "recommendedCpm50", "recommendedCpc70", "recommendedCpm70", "recommendedCpc90", "recommendedCpm90", "(ILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V", "getAudienceCount", "()I", "getRecommendedCpc", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getRecommendedCpc50", "getRecommendedCpc70", "getRecommendedCpc90", "getRecommendedCpm", "getRecommendedCpm50", "getRecommendedCpm70", "getRecommendedCpm90", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lcom/vk/sdk/api/ads/dto/AdsTargStats;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsTargStats {
    @SerializedName("audience_count")
    private final int audienceCount;
    @SerializedName("recommended_cpc")
    @Nullable
    private final Float recommendedCpc;
    @SerializedName("recommended_cpc_50")
    @Nullable
    private final Float recommendedCpc50;
    @SerializedName("recommended_cpc_70")
    @Nullable
    private final Float recommendedCpc70;
    @SerializedName("recommended_cpc_90")
    @Nullable
    private final Float recommendedCpc90;
    @SerializedName("recommended_cpm")
    @Nullable
    private final Float recommendedCpm;
    @SerializedName("recommended_cpm_50")
    @Nullable
    private final Float recommendedCpm50;
    @SerializedName("recommended_cpm_70")
    @Nullable
    private final Float recommendedCpm70;
    @SerializedName("recommended_cpm_90")
    @Nullable
    private final Float recommendedCpm90;

    public AdsTargStats(int i9, @Nullable Float f10, @Nullable Float f11, @Nullable Float f12, @Nullable Float f13, @Nullable Float f14, @Nullable Float f15, @Nullable Float f16, @Nullable Float f17) {
        this.audienceCount = i9;
        this.recommendedCpc = f10;
        this.recommendedCpm = f11;
        this.recommendedCpc50 = f12;
        this.recommendedCpm50 = f13;
        this.recommendedCpc70 = f14;
        this.recommendedCpm70 = f15;
        this.recommendedCpc90 = f16;
        this.recommendedCpm90 = f17;
    }

    public final int component1() {
        return this.audienceCount;
    }

    @Nullable
    public final Float component2() {
        return this.recommendedCpc;
    }

    @Nullable
    public final Float component3() {
        return this.recommendedCpm;
    }

    @Nullable
    public final Float component4() {
        return this.recommendedCpc50;
    }

    @Nullable
    public final Float component5() {
        return this.recommendedCpm50;
    }

    @Nullable
    public final Float component6() {
        return this.recommendedCpc70;
    }

    @Nullable
    public final Float component7() {
        return this.recommendedCpm70;
    }

    @Nullable
    public final Float component8() {
        return this.recommendedCpc90;
    }

    @Nullable
    public final Float component9() {
        return this.recommendedCpm90;
    }

    @NotNull
    public final AdsTargStats copy(int i9, @Nullable Float f10, @Nullable Float f11, @Nullable Float f12, @Nullable Float f13, @Nullable Float f14, @Nullable Float f15, @Nullable Float f16, @Nullable Float f17) {
        return new AdsTargStats(i9, f10, f11, f12, f13, f14, f15, f16, f17);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsTargStats) {
            AdsTargStats adsTargStats = (AdsTargStats) obj;
            return this.audienceCount == adsTargStats.audienceCount && Intrinsics.areEqual((Object) this.recommendedCpc, (Object) adsTargStats.recommendedCpc) && Intrinsics.areEqual((Object) this.recommendedCpm, (Object) adsTargStats.recommendedCpm) && Intrinsics.areEqual((Object) this.recommendedCpc50, (Object) adsTargStats.recommendedCpc50) && Intrinsics.areEqual((Object) this.recommendedCpm50, (Object) adsTargStats.recommendedCpm50) && Intrinsics.areEqual((Object) this.recommendedCpc70, (Object) adsTargStats.recommendedCpc70) && Intrinsics.areEqual((Object) this.recommendedCpm70, (Object) adsTargStats.recommendedCpm70) && Intrinsics.areEqual((Object) this.recommendedCpc90, (Object) adsTargStats.recommendedCpc90) && Intrinsics.areEqual((Object) this.recommendedCpm90, (Object) adsTargStats.recommendedCpm90);
        }
        return false;
    }

    public final int getAudienceCount() {
        return this.audienceCount;
    }

    @Nullable
    public final Float getRecommendedCpc() {
        return this.recommendedCpc;
    }

    @Nullable
    public final Float getRecommendedCpc50() {
        return this.recommendedCpc50;
    }

    @Nullable
    public final Float getRecommendedCpc70() {
        return this.recommendedCpc70;
    }

    @Nullable
    public final Float getRecommendedCpc90() {
        return this.recommendedCpc90;
    }

    @Nullable
    public final Float getRecommendedCpm() {
        return this.recommendedCpm;
    }

    @Nullable
    public final Float getRecommendedCpm50() {
        return this.recommendedCpm50;
    }

    @Nullable
    public final Float getRecommendedCpm70() {
        return this.recommendedCpm70;
    }

    @Nullable
    public final Float getRecommendedCpm90() {
        return this.recommendedCpm90;
    }

    public int hashCode() {
        int i9 = this.audienceCount * 31;
        Float f10 = this.recommendedCpc;
        int hashCode = (i9 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.recommendedCpm;
        int hashCode2 = (hashCode + (f11 == null ? 0 : f11.hashCode())) * 31;
        Float f12 = this.recommendedCpc50;
        int hashCode3 = (hashCode2 + (f12 == null ? 0 : f12.hashCode())) * 31;
        Float f13 = this.recommendedCpm50;
        int hashCode4 = (hashCode3 + (f13 == null ? 0 : f13.hashCode())) * 31;
        Float f14 = this.recommendedCpc70;
        int hashCode5 = (hashCode4 + (f14 == null ? 0 : f14.hashCode())) * 31;
        Float f15 = this.recommendedCpm70;
        int hashCode6 = (hashCode5 + (f15 == null ? 0 : f15.hashCode())) * 31;
        Float f16 = this.recommendedCpc90;
        int hashCode7 = (hashCode6 + (f16 == null ? 0 : f16.hashCode())) * 31;
        Float f17 = this.recommendedCpm90;
        return hashCode7 + (f17 != null ? f17.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.audienceCount;
        Float f10 = this.recommendedCpc;
        Float f11 = this.recommendedCpm;
        Float f12 = this.recommendedCpc50;
        Float f13 = this.recommendedCpm50;
        Float f14 = this.recommendedCpc70;
        Float f15 = this.recommendedCpm70;
        Float f16 = this.recommendedCpc90;
        Float f17 = this.recommendedCpm90;
        return "AdsTargStats(audienceCount=" + i9 + ", recommendedCpc=" + f10 + ", recommendedCpm=" + f11 + ", recommendedCpc50=" + f12 + ", recommendedCpm50=" + f13 + ", recommendedCpc70=" + f14 + ", recommendedCpm70=" + f15 + ", recommendedCpc90=" + f16 + ", recommendedCpm90=" + f17 + ")";
    }

    public /* synthetic */ AdsTargStats(int i9, Float f10, Float f11, Float f12, Float f13, Float f14, Float f15, Float f16, Float f17, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : f10, (i10 & 4) != 0 ? null : f11, (i10 & 8) != 0 ? null : f12, (i10 & 16) != 0 ? null : f13, (i10 & 32) != 0 ? null : f14, (i10 & 64) != 0 ? null : f15, (i10 & 128) != 0 ? null : f16, (i10 & 256) == 0 ? f17 : null);
    }
}

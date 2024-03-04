package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J>\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsStats;", "", "id", "", "stats", "Lcom/vk/sdk/api/ads/dto/AdsStatsFormat;", "type", "Lcom/vk/sdk/api/ads/dto/AdsObjectType;", "viewsTimes", "Lcom/vk/sdk/api/ads/dto/AdsStatsViewsTimes;", "(Ljava/lang/Integer;Lcom/vk/sdk/api/ads/dto/AdsStatsFormat;Lcom/vk/sdk/api/ads/dto/AdsObjectType;Lcom/vk/sdk/api/ads/dto/AdsStatsViewsTimes;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStats", "()Lcom/vk/sdk/api/ads/dto/AdsStatsFormat;", "getType", "()Lcom/vk/sdk/api/ads/dto/AdsObjectType;", "getViewsTimes", "()Lcom/vk/sdk/api/ads/dto/AdsStatsViewsTimes;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Lcom/vk/sdk/api/ads/dto/AdsStatsFormat;Lcom/vk/sdk/api/ads/dto/AdsObjectType;Lcom/vk/sdk/api/ads/dto/AdsStatsViewsTimes;)Lcom/vk/sdk/api/ads/dto/AdsStats;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsStats {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35676id;
    @SerializedName("stats")
    @Nullable
    private final AdsStatsFormat stats;
    @SerializedName("type")
    @Nullable
    private final AdsObjectType type;
    @SerializedName("views_times")
    @Nullable
    private final AdsStatsViewsTimes viewsTimes;

    public AdsStats() {
        this(null, null, null, null, 15, null);
    }

    public AdsStats(@Nullable Integer num, @Nullable AdsStatsFormat adsStatsFormat, @Nullable AdsObjectType adsObjectType, @Nullable AdsStatsViewsTimes adsStatsViewsTimes) {
        this.f35676id = num;
        this.stats = adsStatsFormat;
        this.type = adsObjectType;
        this.viewsTimes = adsStatsViewsTimes;
    }

    public static /* synthetic */ AdsStats copy$default(AdsStats adsStats, Integer num, AdsStatsFormat adsStatsFormat, AdsObjectType adsObjectType, AdsStatsViewsTimes adsStatsViewsTimes, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = adsStats.f35676id;
        }
        if ((i9 & 2) != 0) {
            adsStatsFormat = adsStats.stats;
        }
        if ((i9 & 4) != 0) {
            adsObjectType = adsStats.type;
        }
        if ((i9 & 8) != 0) {
            adsStatsViewsTimes = adsStats.viewsTimes;
        }
        return adsStats.copy(num, adsStatsFormat, adsObjectType, adsStatsViewsTimes);
    }

    @Nullable
    public final Integer component1() {
        return this.f35676id;
    }

    @Nullable
    public final AdsStatsFormat component2() {
        return this.stats;
    }

    @Nullable
    public final AdsObjectType component3() {
        return this.type;
    }

    @Nullable
    public final AdsStatsViewsTimes component4() {
        return this.viewsTimes;
    }

    @NotNull
    public final AdsStats copy(@Nullable Integer num, @Nullable AdsStatsFormat adsStatsFormat, @Nullable AdsObjectType adsObjectType, @Nullable AdsStatsViewsTimes adsStatsViewsTimes) {
        return new AdsStats(num, adsStatsFormat, adsObjectType, adsStatsViewsTimes);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsStats) {
            AdsStats adsStats = (AdsStats) obj;
            return Intrinsics.areEqual(this.f35676id, adsStats.f35676id) && Intrinsics.areEqual(this.stats, adsStats.stats) && this.type == adsStats.type && Intrinsics.areEqual(this.viewsTimes, adsStats.viewsTimes);
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f35676id;
    }

    @Nullable
    public final AdsStatsFormat getStats() {
        return this.stats;
    }

    @Nullable
    public final AdsObjectType getType() {
        return this.type;
    }

    @Nullable
    public final AdsStatsViewsTimes getViewsTimes() {
        return this.viewsTimes;
    }

    public int hashCode() {
        Integer num = this.f35676id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        AdsStatsFormat adsStatsFormat = this.stats;
        int hashCode2 = (hashCode + (adsStatsFormat == null ? 0 : adsStatsFormat.hashCode())) * 31;
        AdsObjectType adsObjectType = this.type;
        int hashCode3 = (hashCode2 + (adsObjectType == null ? 0 : adsObjectType.hashCode())) * 31;
        AdsStatsViewsTimes adsStatsViewsTimes = this.viewsTimes;
        return hashCode3 + (adsStatsViewsTimes != null ? adsStatsViewsTimes.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f35676id;
        AdsStatsFormat adsStatsFormat = this.stats;
        AdsObjectType adsObjectType = this.type;
        AdsStatsViewsTimes adsStatsViewsTimes = this.viewsTimes;
        return "AdsStats(id=" + num + ", stats=" + adsStatsFormat + ", type=" + adsObjectType + ", viewsTimes=" + adsStatsViewsTimes + ")";
    }

    public /* synthetic */ AdsStats(Integer num, AdsStatsFormat adsStatsFormat, AdsObjectType adsObjectType, AdsStatsViewsTimes adsStatsViewsTimes, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : adsStatsFormat, (i9 & 4) != 0 ? null : adsObjectType, (i9 & 8) != 0 ? null : adsStatsViewsTimes);
    }
}

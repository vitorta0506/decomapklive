package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsDemoStats;", "", "id", "", "stats", "Lcom/vk/sdk/api/ads/dto/AdsDemostatsFormat;", "type", "Lcom/vk/sdk/api/ads/dto/AdsObjectType;", "(Ljava/lang/Integer;Lcom/vk/sdk/api/ads/dto/AdsDemostatsFormat;Lcom/vk/sdk/api/ads/dto/AdsObjectType;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStats", "()Lcom/vk/sdk/api/ads/dto/AdsDemostatsFormat;", "getType", "()Lcom/vk/sdk/api/ads/dto/AdsObjectType;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Lcom/vk/sdk/api/ads/dto/AdsDemostatsFormat;Lcom/vk/sdk/api/ads/dto/AdsObjectType;)Lcom/vk/sdk/api/ads/dto/AdsDemoStats;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsDemoStats {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35670id;
    @SerializedName("stats")
    @Nullable
    private final AdsDemostatsFormat stats;
    @SerializedName("type")
    @Nullable
    private final AdsObjectType type;

    public AdsDemoStats() {
        this(null, null, null, 7, null);
    }

    public AdsDemoStats(@Nullable Integer num, @Nullable AdsDemostatsFormat adsDemostatsFormat, @Nullable AdsObjectType adsObjectType) {
        this.f35670id = num;
        this.stats = adsDemostatsFormat;
        this.type = adsObjectType;
    }

    public static /* synthetic */ AdsDemoStats copy$default(AdsDemoStats adsDemoStats, Integer num, AdsDemostatsFormat adsDemostatsFormat, AdsObjectType adsObjectType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = adsDemoStats.f35670id;
        }
        if ((i9 & 2) != 0) {
            adsDemostatsFormat = adsDemoStats.stats;
        }
        if ((i9 & 4) != 0) {
            adsObjectType = adsDemoStats.type;
        }
        return adsDemoStats.copy(num, adsDemostatsFormat, adsObjectType);
    }

    @Nullable
    public final Integer component1() {
        return this.f35670id;
    }

    @Nullable
    public final AdsDemostatsFormat component2() {
        return this.stats;
    }

    @Nullable
    public final AdsObjectType component3() {
        return this.type;
    }

    @NotNull
    public final AdsDemoStats copy(@Nullable Integer num, @Nullable AdsDemostatsFormat adsDemostatsFormat, @Nullable AdsObjectType adsObjectType) {
        return new AdsDemoStats(num, adsDemostatsFormat, adsObjectType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsDemoStats) {
            AdsDemoStats adsDemoStats = (AdsDemoStats) obj;
            return Intrinsics.areEqual(this.f35670id, adsDemoStats.f35670id) && Intrinsics.areEqual(this.stats, adsDemoStats.stats) && this.type == adsDemoStats.type;
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f35670id;
    }

    @Nullable
    public final AdsDemostatsFormat getStats() {
        return this.stats;
    }

    @Nullable
    public final AdsObjectType getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.f35670id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        AdsDemostatsFormat adsDemostatsFormat = this.stats;
        int hashCode2 = (hashCode + (adsDemostatsFormat == null ? 0 : adsDemostatsFormat.hashCode())) * 31;
        AdsObjectType adsObjectType = this.type;
        return hashCode2 + (adsObjectType != null ? adsObjectType.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f35670id;
        AdsDemostatsFormat adsDemostatsFormat = this.stats;
        AdsObjectType adsObjectType = this.type;
        return "AdsDemoStats(id=" + num + ", stats=" + adsDemostatsFormat + ", type=" + adsObjectType + ")";
    }

    public /* synthetic */ AdsDemoStats(Integer num, AdsDemostatsFormat adsDemostatsFormat, AdsObjectType adsObjectType, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : adsDemostatsFormat, (i9 & 4) != 0 ? null : adsObjectType);
    }
}

package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0006HÆ\u0003J2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\u000b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsStatsAge;", "", "clicksRate", "", "impressionsRate", "value", "", "(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V", "getClicksRate", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getImpressionsRate", "getValue", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)Lcom/vk/sdk/api/ads/dto/AdsStatsAge;", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsStatsAge {
    @SerializedName("clicks_rate")
    @Nullable
    private final Float clicksRate;
    @SerializedName("impressions_rate")
    @Nullable
    private final Float impressionsRate;
    @SerializedName("value")
    @Nullable
    private final String value;

    public AdsStatsAge() {
        this(null, null, null, 7, null);
    }

    public AdsStatsAge(@Nullable Float f10, @Nullable Float f11, @Nullable String str) {
        this.clicksRate = f10;
        this.impressionsRate = f11;
        this.value = str;
    }

    public static /* synthetic */ AdsStatsAge copy$default(AdsStatsAge adsStatsAge, Float f10, Float f11, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = adsStatsAge.clicksRate;
        }
        if ((i9 & 2) != 0) {
            f11 = adsStatsAge.impressionsRate;
        }
        if ((i9 & 4) != 0) {
            str = adsStatsAge.value;
        }
        return adsStatsAge.copy(f10, f11, str);
    }

    @Nullable
    public final Float component1() {
        return this.clicksRate;
    }

    @Nullable
    public final Float component2() {
        return this.impressionsRate;
    }

    @Nullable
    public final String component3() {
        return this.value;
    }

    @NotNull
    public final AdsStatsAge copy(@Nullable Float f10, @Nullable Float f11, @Nullable String str) {
        return new AdsStatsAge(f10, f11, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsStatsAge) {
            AdsStatsAge adsStatsAge = (AdsStatsAge) obj;
            return Intrinsics.areEqual((Object) this.clicksRate, (Object) adsStatsAge.clicksRate) && Intrinsics.areEqual((Object) this.impressionsRate, (Object) adsStatsAge.impressionsRate) && Intrinsics.areEqual(this.value, adsStatsAge.value);
        }
        return false;
    }

    @Nullable
    public final Float getClicksRate() {
        return this.clicksRate;
    }

    @Nullable
    public final Float getImpressionsRate() {
        return this.impressionsRate;
    }

    @Nullable
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        Float f10 = this.clicksRate;
        int hashCode = (f10 == null ? 0 : f10.hashCode()) * 31;
        Float f11 = this.impressionsRate;
        int hashCode2 = (hashCode + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str = this.value;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Float f10 = this.clicksRate;
        Float f11 = this.impressionsRate;
        String str = this.value;
        return "AdsStatsAge(clicksRate=" + f10 + ", impressionsRate=" + f11 + ", value=" + str + ")";
    }

    public /* synthetic */ AdsStatsAge(Float f10, Float f11, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : f10, (i9 & 2) != 0 ? null : f11, (i9 & 4) != 0 ? null : str);
    }
}

package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0011J>\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\bHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsStatsCities;", "", "clicksRate", "", "impressionsRate", "name", "", "value", "", "(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;)V", "getClicksRate", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getImpressionsRate", "getName", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/ads/dto/AdsStatsCities;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsStatsCities {
    @SerializedName("clicks_rate")
    @Nullable
    private final Float clicksRate;
    @SerializedName("impressions_rate")
    @Nullable
    private final Float impressionsRate;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("value")
    @Nullable
    private final Integer value;

    public AdsStatsCities() {
        this(null, null, null, null, 15, null);
    }

    public AdsStatsCities(@Nullable Float f10, @Nullable Float f11, @Nullable String str, @Nullable Integer num) {
        this.clicksRate = f10;
        this.impressionsRate = f11;
        this.name = str;
        this.value = num;
    }

    public static /* synthetic */ AdsStatsCities copy$default(AdsStatsCities adsStatsCities, Float f10, Float f11, String str, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = adsStatsCities.clicksRate;
        }
        if ((i9 & 2) != 0) {
            f11 = adsStatsCities.impressionsRate;
        }
        if ((i9 & 4) != 0) {
            str = adsStatsCities.name;
        }
        if ((i9 & 8) != 0) {
            num = adsStatsCities.value;
        }
        return adsStatsCities.copy(f10, f11, str, num);
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
        return this.name;
    }

    @Nullable
    public final Integer component4() {
        return this.value;
    }

    @NotNull
    public final AdsStatsCities copy(@Nullable Float f10, @Nullable Float f11, @Nullable String str, @Nullable Integer num) {
        return new AdsStatsCities(f10, f11, str, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsStatsCities) {
            AdsStatsCities adsStatsCities = (AdsStatsCities) obj;
            return Intrinsics.areEqual((Object) this.clicksRate, (Object) adsStatsCities.clicksRate) && Intrinsics.areEqual((Object) this.impressionsRate, (Object) adsStatsCities.impressionsRate) && Intrinsics.areEqual(this.name, adsStatsCities.name) && Intrinsics.areEqual(this.value, adsStatsCities.value);
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
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Integer getValue() {
        return this.value;
    }

    public int hashCode() {
        Float f10 = this.clicksRate;
        int hashCode = (f10 == null ? 0 : f10.hashCode()) * 31;
        Float f11 = this.impressionsRate;
        int hashCode2 = (hashCode + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str = this.name;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.value;
        return hashCode3 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Float f10 = this.clicksRate;
        Float f11 = this.impressionsRate;
        String str = this.name;
        Integer num = this.value;
        return "AdsStatsCities(clicksRate=" + f10 + ", impressionsRate=" + f11 + ", name=" + str + ", value=" + num + ")";
    }

    public /* synthetic */ AdsStatsCities(Float f10, Float f11, String str, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : f10, (i9 & 2) != 0 ? null : f11, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : num);
    }
}

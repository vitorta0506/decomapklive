package com.vk.sdk.api.stats.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\r\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/stats/dto/StatsCity;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "name", "", "value", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "getValue", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/stats/dto/StatsCity;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsCity {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("value")
    @Nullable
    private final Integer value;

    public StatsCity() {
        this(null, null, null, 7, null);
    }

    public StatsCity(@Nullable Integer num, @Nullable String str, @Nullable Integer num2) {
        this.count = num;
        this.name = str;
        this.value = num2;
    }

    public static /* synthetic */ StatsCity copy$default(StatsCity statsCity, Integer num, String str, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = statsCity.count;
        }
        if ((i9 & 2) != 0) {
            str = statsCity.name;
        }
        if ((i9 & 4) != 0) {
            num2 = statsCity.value;
        }
        return statsCity.copy(num, str, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @Nullable
    public final Integer component3() {
        return this.value;
    }

    @NotNull
    public final StatsCity copy(@Nullable Integer num, @Nullable String str, @Nullable Integer num2) {
        return new StatsCity(num, str, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatsCity) {
            StatsCity statsCity = (StatsCity) obj;
            return Intrinsics.areEqual(this.count, statsCity.count) && Intrinsics.areEqual(this.name, statsCity.name) && Intrinsics.areEqual(this.value, statsCity.value);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
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
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.value;
        return hashCode2 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        String str = this.name;
        Integer num2 = this.value;
        return "StatsCity(count=" + num + ", name=" + str + ", value=" + num2 + ")";
    }

    public /* synthetic */ StatsCity(Integer num, String str, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : num2);
    }
}

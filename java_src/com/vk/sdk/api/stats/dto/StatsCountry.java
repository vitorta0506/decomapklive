package com.vk.sdk.api.stats.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\fJ>\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000f\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/stats/dto/StatsCountry;", "", "code", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "name", "value", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getCode", "()Ljava/lang/String;", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "getValue", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/stats/dto/StatsCountry;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsCountry {
    @SerializedName("code")
    @Nullable
    private final String code;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("value")
    @Nullable
    private final Integer value;

    public StatsCountry() {
        this(null, null, null, null, 15, null);
    }

    public StatsCountry(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable Integer num2) {
        this.code = str;
        this.count = num;
        this.name = str2;
        this.value = num2;
    }

    public static /* synthetic */ StatsCountry copy$default(StatsCountry statsCountry, String str, Integer num, String str2, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = statsCountry.code;
        }
        if ((i9 & 2) != 0) {
            num = statsCountry.count;
        }
        if ((i9 & 4) != 0) {
            str2 = statsCountry.name;
        }
        if ((i9 & 8) != 0) {
            num2 = statsCountry.value;
        }
        return statsCountry.copy(str, num, str2, num2);
    }

    @Nullable
    public final String component1() {
        return this.code;
    }

    @Nullable
    public final Integer component2() {
        return this.count;
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
    public final StatsCountry copy(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable Integer num2) {
        return new StatsCountry(str, num, str2, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatsCountry) {
            StatsCountry statsCountry = (StatsCountry) obj;
            return Intrinsics.areEqual(this.code, statsCountry.code) && Intrinsics.areEqual(this.count, statsCountry.count) && Intrinsics.areEqual(this.name, statsCountry.name) && Intrinsics.areEqual(this.value, statsCountry.value);
        }
        return false;
    }

    @Nullable
    public final String getCode() {
        return this.code;
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
        String str = this.code;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.count;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.name;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.value;
        return hashCode3 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.code;
        Integer num = this.count;
        String str2 = this.name;
        Integer num2 = this.value;
        return "StatsCountry(code=" + str + ", count=" + num + ", name=" + str2 + ", value=" + num2 + ")";
    }

    public /* synthetic */ StatsCountry(String str, Integer num, String str2, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : num2);
    }
}

package com.vk.sdk.api.stats.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJH\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000bR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u000e\u0010\u000bR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u000f\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/stats/dto/StatsSexAge;", "", "value", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "reach", "reachSubscribers", "countSubscribers", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCountSubscribers", "getReach", "getReachSubscribers", "getValue", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/stats/dto/StatsSexAge;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsSexAge {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("count_subscribers")
    @Nullable
    private final Integer countSubscribers;
    @SerializedName("reach")
    @Nullable
    private final Integer reach;
    @SerializedName("reach_subscribers")
    @Nullable
    private final Integer reachSubscribers;
    @SerializedName("value")
    @NotNull
    private final String value;

    public StatsSexAge(@NotNull String value, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
        this.count = num;
        this.reach = num2;
        this.reachSubscribers = num3;
        this.countSubscribers = num4;
    }

    public static /* synthetic */ StatsSexAge copy$default(StatsSexAge statsSexAge, String str, Integer num, Integer num2, Integer num3, Integer num4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = statsSexAge.value;
        }
        if ((i9 & 2) != 0) {
            num = statsSexAge.count;
        }
        Integer num5 = num;
        if ((i9 & 4) != 0) {
            num2 = statsSexAge.reach;
        }
        Integer num6 = num2;
        if ((i9 & 8) != 0) {
            num3 = statsSexAge.reachSubscribers;
        }
        Integer num7 = num3;
        if ((i9 & 16) != 0) {
            num4 = statsSexAge.countSubscribers;
        }
        return statsSexAge.copy(str, num5, num6, num7, num4);
    }

    @NotNull
    public final String component1() {
        return this.value;
    }

    @Nullable
    public final Integer component2() {
        return this.count;
    }

    @Nullable
    public final Integer component3() {
        return this.reach;
    }

    @Nullable
    public final Integer component4() {
        return this.reachSubscribers;
    }

    @Nullable
    public final Integer component5() {
        return this.countSubscribers;
    }

    @NotNull
    public final StatsSexAge copy(@NotNull String value, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new StatsSexAge(value, num, num2, num3, num4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatsSexAge) {
            StatsSexAge statsSexAge = (StatsSexAge) obj;
            return Intrinsics.areEqual(this.value, statsSexAge.value) && Intrinsics.areEqual(this.count, statsSexAge.count) && Intrinsics.areEqual(this.reach, statsSexAge.reach) && Intrinsics.areEqual(this.reachSubscribers, statsSexAge.reachSubscribers) && Intrinsics.areEqual(this.countSubscribers, statsSexAge.countSubscribers);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final Integer getCountSubscribers() {
        return this.countSubscribers;
    }

    @Nullable
    public final Integer getReach() {
        return this.reach;
    }

    @Nullable
    public final Integer getReachSubscribers() {
        return this.reachSubscribers;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode = this.value.hashCode() * 31;
        Integer num = this.count;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.reach;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.reachSubscribers;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.countSubscribers;
        return hashCode4 + (num4 != null ? num4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.value;
        Integer num = this.count;
        Integer num2 = this.reach;
        Integer num3 = this.reachSubscribers;
        Integer num4 = this.countSubscribers;
        return "StatsSexAge(value=" + str + ", count=" + num + ", reach=" + num2 + ", reachSubscribers=" + num3 + ", countSubscribers=" + num4 + ")";
    }

    public /* synthetic */ StatsSexAge(String str, Integer num, Integer num2, Integer num3, Integer num4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : num2, (i9 & 8) != 0 ? null : num3, (i9 & 16) != 0 ? null : num4);
    }
}

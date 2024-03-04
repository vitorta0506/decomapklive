package com.vk.sdk.api.stats.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000fJ\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010 \u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u008c\u0001\u0010#\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\nHÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0017\u0010\u0015R\u001a\u0010\f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0018\u0010\u0015R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/stats/dto/StatsReach;", "", "age", "", "Lcom/vk/sdk/api/stats/dto/StatsSexAge;", "cities", "Lcom/vk/sdk/api/stats/dto/StatsCity;", "countries", "Lcom/vk/sdk/api/stats/dto/StatsCountry;", "mobileReach", "", "reach", "reachSubscribers", "sex", "sexAge", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V", "getAge", "()Ljava/util/List;", "getCities", "getCountries", "getMobileReach", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getReach", "getReachSubscribers", "getSex", "getSexAge", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/stats/dto/StatsReach;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsReach {
    @SerializedName("age")
    @Nullable
    private final List<StatsSexAge> age;
    @SerializedName("cities")
    @Nullable
    private final List<StatsCity> cities;
    @SerializedName("countries")
    @Nullable
    private final List<StatsCountry> countries;
    @SerializedName("mobile_reach")
    @Nullable
    private final Integer mobileReach;
    @SerializedName("reach")
    @Nullable
    private final Integer reach;
    @SerializedName("reach_subscribers")
    @Nullable
    private final Integer reachSubscribers;
    @SerializedName("sex")
    @Nullable
    private final List<StatsSexAge> sex;
    @SerializedName("sex_age")
    @Nullable
    private final List<StatsSexAge> sexAge;

    public StatsReach() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public StatsReach(@Nullable List<StatsSexAge> list, @Nullable List<StatsCity> list2, @Nullable List<StatsCountry> list3, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<StatsSexAge> list4, @Nullable List<StatsSexAge> list5) {
        this.age = list;
        this.cities = list2;
        this.countries = list3;
        this.mobileReach = num;
        this.reach = num2;
        this.reachSubscribers = num3;
        this.sex = list4;
        this.sexAge = list5;
    }

    @Nullable
    public final List<StatsSexAge> component1() {
        return this.age;
    }

    @Nullable
    public final List<StatsCity> component2() {
        return this.cities;
    }

    @Nullable
    public final List<StatsCountry> component3() {
        return this.countries;
    }

    @Nullable
    public final Integer component4() {
        return this.mobileReach;
    }

    @Nullable
    public final Integer component5() {
        return this.reach;
    }

    @Nullable
    public final Integer component6() {
        return this.reachSubscribers;
    }

    @Nullable
    public final List<StatsSexAge> component7() {
        return this.sex;
    }

    @Nullable
    public final List<StatsSexAge> component8() {
        return this.sexAge;
    }

    @NotNull
    public final StatsReach copy(@Nullable List<StatsSexAge> list, @Nullable List<StatsCity> list2, @Nullable List<StatsCountry> list3, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<StatsSexAge> list4, @Nullable List<StatsSexAge> list5) {
        return new StatsReach(list, list2, list3, num, num2, num3, list4, list5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatsReach) {
            StatsReach statsReach = (StatsReach) obj;
            return Intrinsics.areEqual(this.age, statsReach.age) && Intrinsics.areEqual(this.cities, statsReach.cities) && Intrinsics.areEqual(this.countries, statsReach.countries) && Intrinsics.areEqual(this.mobileReach, statsReach.mobileReach) && Intrinsics.areEqual(this.reach, statsReach.reach) && Intrinsics.areEqual(this.reachSubscribers, statsReach.reachSubscribers) && Intrinsics.areEqual(this.sex, statsReach.sex) && Intrinsics.areEqual(this.sexAge, statsReach.sexAge);
        }
        return false;
    }

    @Nullable
    public final List<StatsSexAge> getAge() {
        return this.age;
    }

    @Nullable
    public final List<StatsCity> getCities() {
        return this.cities;
    }

    @Nullable
    public final List<StatsCountry> getCountries() {
        return this.countries;
    }

    @Nullable
    public final Integer getMobileReach() {
        return this.mobileReach;
    }

    @Nullable
    public final Integer getReach() {
        return this.reach;
    }

    @Nullable
    public final Integer getReachSubscribers() {
        return this.reachSubscribers;
    }

    @Nullable
    public final List<StatsSexAge> getSex() {
        return this.sex;
    }

    @Nullable
    public final List<StatsSexAge> getSexAge() {
        return this.sexAge;
    }

    public int hashCode() {
        List<StatsSexAge> list = this.age;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<StatsCity> list2 = this.cities;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<StatsCountry> list3 = this.countries;
        int hashCode3 = (hashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Integer num = this.mobileReach;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.reach;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.reachSubscribers;
        int hashCode6 = (hashCode5 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<StatsSexAge> list4 = this.sex;
        int hashCode7 = (hashCode6 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<StatsSexAge> list5 = this.sexAge;
        return hashCode7 + (list5 != null ? list5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<StatsSexAge> list = this.age;
        List<StatsCity> list2 = this.cities;
        List<StatsCountry> list3 = this.countries;
        Integer num = this.mobileReach;
        Integer num2 = this.reach;
        Integer num3 = this.reachSubscribers;
        List<StatsSexAge> list4 = this.sex;
        List<StatsSexAge> list5 = this.sexAge;
        return "StatsReach(age=" + list + ", cities=" + list2 + ", countries=" + list3 + ", mobileReach=" + num + ", reach=" + num2 + ", reachSubscribers=" + num3 + ", sex=" + list4 + ", sexAge=" + list5 + ")";
    }

    public /* synthetic */ StatsReach(List list, List list2, List list3, Integer num, Integer num2, Integer num3, List list4, List list5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : list3, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : num2, (i9 & 32) != 0 ? null : num3, (i9 & 64) != 0 ? null : list4, (i9 & 128) == 0 ? list5 : null);
    }
}

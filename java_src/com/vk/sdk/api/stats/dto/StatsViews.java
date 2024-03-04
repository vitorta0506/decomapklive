package com.vk.sdk.api.stats.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000fJ\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0011\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010\"\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u008c\u0001\u0010#\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\nHÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0011R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u001a\u0010\r\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0019\u0010\u0015R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u001a\u0010\u0015¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/stats/dto/StatsViews;", "", "age", "", "Lcom/vk/sdk/api/stats/dto/StatsSexAge;", "cities", "Lcom/vk/sdk/api/stats/dto/StatsCity;", "countries", "Lcom/vk/sdk/api/stats/dto/StatsCountry;", "mobileViews", "", "sex", "sexAge", AdUnitActivity.EXTRA_VIEWS, "visitors", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAge", "()Ljava/util/List;", "getCities", "getCountries", "getMobileViews", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSex", "getSexAge", "getViews", "getVisitors", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/stats/dto/StatsViews;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StatsViews {
    @SerializedName("age")
    @Nullable
    private final List<StatsSexAge> age;
    @SerializedName("cities")
    @Nullable
    private final List<StatsCity> cities;
    @SerializedName("countries")
    @Nullable
    private final List<StatsCountry> countries;
    @SerializedName("mobile_views")
    @Nullable
    private final Integer mobileViews;
    @SerializedName("sex")
    @Nullable
    private final List<StatsSexAge> sex;
    @SerializedName("sex_age")
    @Nullable
    private final List<StatsSexAge> sexAge;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final Integer views;
    @SerializedName("visitors")
    @Nullable
    private final Integer visitors;

    public StatsViews() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public StatsViews(@Nullable List<StatsSexAge> list, @Nullable List<StatsCity> list2, @Nullable List<StatsCountry> list3, @Nullable Integer num, @Nullable List<StatsSexAge> list4, @Nullable List<StatsSexAge> list5, @Nullable Integer num2, @Nullable Integer num3) {
        this.age = list;
        this.cities = list2;
        this.countries = list3;
        this.mobileViews = num;
        this.sex = list4;
        this.sexAge = list5;
        this.views = num2;
        this.visitors = num3;
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
        return this.mobileViews;
    }

    @Nullable
    public final List<StatsSexAge> component5() {
        return this.sex;
    }

    @Nullable
    public final List<StatsSexAge> component6() {
        return this.sexAge;
    }

    @Nullable
    public final Integer component7() {
        return this.views;
    }

    @Nullable
    public final Integer component8() {
        return this.visitors;
    }

    @NotNull
    public final StatsViews copy(@Nullable List<StatsSexAge> list, @Nullable List<StatsCity> list2, @Nullable List<StatsCountry> list3, @Nullable Integer num, @Nullable List<StatsSexAge> list4, @Nullable List<StatsSexAge> list5, @Nullable Integer num2, @Nullable Integer num3) {
        return new StatsViews(list, list2, list3, num, list4, list5, num2, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StatsViews) {
            StatsViews statsViews = (StatsViews) obj;
            return Intrinsics.areEqual(this.age, statsViews.age) && Intrinsics.areEqual(this.cities, statsViews.cities) && Intrinsics.areEqual(this.countries, statsViews.countries) && Intrinsics.areEqual(this.mobileViews, statsViews.mobileViews) && Intrinsics.areEqual(this.sex, statsViews.sex) && Intrinsics.areEqual(this.sexAge, statsViews.sexAge) && Intrinsics.areEqual(this.views, statsViews.views) && Intrinsics.areEqual(this.visitors, statsViews.visitors);
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
    public final Integer getMobileViews() {
        return this.mobileViews;
    }

    @Nullable
    public final List<StatsSexAge> getSex() {
        return this.sex;
    }

    @Nullable
    public final List<StatsSexAge> getSexAge() {
        return this.sexAge;
    }

    @Nullable
    public final Integer getViews() {
        return this.views;
    }

    @Nullable
    public final Integer getVisitors() {
        return this.visitors;
    }

    public int hashCode() {
        List<StatsSexAge> list = this.age;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<StatsCity> list2 = this.cities;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<StatsCountry> list3 = this.countries;
        int hashCode3 = (hashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Integer num = this.mobileViews;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        List<StatsSexAge> list4 = this.sex;
        int hashCode5 = (hashCode4 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<StatsSexAge> list5 = this.sexAge;
        int hashCode6 = (hashCode5 + (list5 == null ? 0 : list5.hashCode())) * 31;
        Integer num2 = this.views;
        int hashCode7 = (hashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.visitors;
        return hashCode7 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<StatsSexAge> list = this.age;
        List<StatsCity> list2 = this.cities;
        List<StatsCountry> list3 = this.countries;
        Integer num = this.mobileViews;
        List<StatsSexAge> list4 = this.sex;
        List<StatsSexAge> list5 = this.sexAge;
        Integer num2 = this.views;
        Integer num3 = this.visitors;
        return "StatsViews(age=" + list + ", cities=" + list2 + ", countries=" + list3 + ", mobileViews=" + num + ", sex=" + list4 + ", sexAge=" + list5 + ", views=" + num2 + ", visitors=" + num3 + ")";
    }

    public /* synthetic */ StatsViews(List list, List list2, List list3, Integer num, List list4, List list5, Integer num2, Integer num3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : list3, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : list4, (i9 & 32) != 0 ? null : list5, (i9 & 64) != 0 ? null : num2, (i9 & 128) == 0 ? num3 : null);
    }
}

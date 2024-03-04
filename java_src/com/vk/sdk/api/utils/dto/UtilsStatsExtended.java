package com.vk.sdk.api.utils.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\fJ\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0012J\\\u0010\u001a\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\nHÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0012¨\u0006\""}, d2 = {"Lcom/vk/sdk/api/utils/dto/UtilsStatsExtended;", "", "cities", "", "Lcom/vk/sdk/api/utils/dto/UtilsStatsCity;", "countries", "Lcom/vk/sdk/api/utils/dto/UtilsStatsCountry;", "sexAge", "Lcom/vk/sdk/api/utils/dto/UtilsStatsSexAge;", "timestamp", "", AdUnitActivity.EXTRA_VIEWS, "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCities", "()Ljava/util/List;", "getCountries", "getSexAge", "getTimestamp", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getViews", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/utils/dto/UtilsStatsExtended;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UtilsStatsExtended {
    @SerializedName("cities")
    @Nullable
    private final List<UtilsStatsCity> cities;
    @SerializedName("countries")
    @Nullable
    private final List<UtilsStatsCountry> countries;
    @SerializedName("sex_age")
    @Nullable
    private final List<UtilsStatsSexAge> sexAge;
    @SerializedName("timestamp")
    @Nullable
    private final Integer timestamp;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final Integer views;

    public UtilsStatsExtended() {
        this(null, null, null, null, null, 31, null);
    }

    public UtilsStatsExtended(@Nullable List<UtilsStatsCity> list, @Nullable List<UtilsStatsCountry> list2, @Nullable List<UtilsStatsSexAge> list3, @Nullable Integer num, @Nullable Integer num2) {
        this.cities = list;
        this.countries = list2;
        this.sexAge = list3;
        this.timestamp = num;
        this.views = num2;
    }

    public static /* synthetic */ UtilsStatsExtended copy$default(UtilsStatsExtended utilsStatsExtended, List list, List list2, List list3, Integer num, Integer num2, int i9, Object obj) {
        List<UtilsStatsCity> list4 = list;
        if ((i9 & 1) != 0) {
            list4 = utilsStatsExtended.cities;
        }
        List<UtilsStatsCountry> list5 = list2;
        if ((i9 & 2) != 0) {
            list5 = utilsStatsExtended.countries;
        }
        List list6 = list5;
        List<UtilsStatsSexAge> list7 = list3;
        if ((i9 & 4) != 0) {
            list7 = utilsStatsExtended.sexAge;
        }
        List list8 = list7;
        if ((i9 & 8) != 0) {
            num = utilsStatsExtended.timestamp;
        }
        Integer num3 = num;
        if ((i9 & 16) != 0) {
            num2 = utilsStatsExtended.views;
        }
        return utilsStatsExtended.copy(list4, list6, list8, num3, num2);
    }

    @Nullable
    public final List<UtilsStatsCity> component1() {
        return this.cities;
    }

    @Nullable
    public final List<UtilsStatsCountry> component2() {
        return this.countries;
    }

    @Nullable
    public final List<UtilsStatsSexAge> component3() {
        return this.sexAge;
    }

    @Nullable
    public final Integer component4() {
        return this.timestamp;
    }

    @Nullable
    public final Integer component5() {
        return this.views;
    }

    @NotNull
    public final UtilsStatsExtended copy(@Nullable List<UtilsStatsCity> list, @Nullable List<UtilsStatsCountry> list2, @Nullable List<UtilsStatsSexAge> list3, @Nullable Integer num, @Nullable Integer num2) {
        return new UtilsStatsExtended(list, list2, list3, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UtilsStatsExtended) {
            UtilsStatsExtended utilsStatsExtended = (UtilsStatsExtended) obj;
            return Intrinsics.areEqual(this.cities, utilsStatsExtended.cities) && Intrinsics.areEqual(this.countries, utilsStatsExtended.countries) && Intrinsics.areEqual(this.sexAge, utilsStatsExtended.sexAge) && Intrinsics.areEqual(this.timestamp, utilsStatsExtended.timestamp) && Intrinsics.areEqual(this.views, utilsStatsExtended.views);
        }
        return false;
    }

    @Nullable
    public final List<UtilsStatsCity> getCities() {
        return this.cities;
    }

    @Nullable
    public final List<UtilsStatsCountry> getCountries() {
        return this.countries;
    }

    @Nullable
    public final List<UtilsStatsSexAge> getSexAge() {
        return this.sexAge;
    }

    @Nullable
    public final Integer getTimestamp() {
        return this.timestamp;
    }

    @Nullable
    public final Integer getViews() {
        return this.views;
    }

    public int hashCode() {
        List<UtilsStatsCity> list = this.cities;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<UtilsStatsCountry> list2 = this.countries;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<UtilsStatsSexAge> list3 = this.sexAge;
        int hashCode3 = (hashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Integer num = this.timestamp;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.views;
        return hashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<UtilsStatsCity> list = this.cities;
        List<UtilsStatsCountry> list2 = this.countries;
        List<UtilsStatsSexAge> list3 = this.sexAge;
        Integer num = this.timestamp;
        Integer num2 = this.views;
        return "UtilsStatsExtended(cities=" + list + ", countries=" + list2 + ", sexAge=" + list3 + ", timestamp=" + num + ", views=" + num2 + ")";
    }

    public /* synthetic */ UtilsStatsExtended(List list, List list2, List list3, Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : list3, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : num2);
    }
}

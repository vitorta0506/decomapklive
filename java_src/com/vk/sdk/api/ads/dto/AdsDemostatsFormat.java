package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0003¢\u0006\u0002\u0010\u0010J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0003HÆ\u0003Jz\u0010#\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00032\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u000bHÖ\u0001J\t\u0010)\u001a\u00020\bHÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0012¨\u0006*"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsDemostatsFormat;", "", "age", "", "Lcom/vk/sdk/api/ads/dto/AdsStatsAge;", "cities", "Lcom/vk/sdk/api/ads/dto/AdsStatsCities;", "day", "", "month", "overall", "", "sex", "Lcom/vk/sdk/api/ads/dto/AdsStatsSex;", "sexAge", "Lcom/vk/sdk/api/ads/dto/AdsStatsSexAge;", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V", "getAge", "()Ljava/util/List;", "getCities", "getDay", "()Ljava/lang/String;", "getMonth", "getOverall", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSex", "getSexAge", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/ads/dto/AdsDemostatsFormat;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsDemostatsFormat {
    @SerializedName("age")
    @Nullable
    private final List<AdsStatsAge> age;
    @SerializedName("cities")
    @Nullable
    private final List<AdsStatsCities> cities;
    @SerializedName("day")
    @Nullable
    private final String day;
    @SerializedName("month")
    @Nullable
    private final String month;
    @SerializedName("overall")
    @Nullable
    private final Integer overall;
    @SerializedName("sex")
    @Nullable
    private final List<AdsStatsSex> sex;
    @SerializedName("sex_age")
    @Nullable
    private final List<AdsStatsSexAge> sexAge;

    public AdsDemostatsFormat() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public AdsDemostatsFormat(@Nullable List<AdsStatsAge> list, @Nullable List<AdsStatsCities> list2, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable List<AdsStatsSex> list3, @Nullable List<AdsStatsSexAge> list4) {
        this.age = list;
        this.cities = list2;
        this.day = str;
        this.month = str2;
        this.overall = num;
        this.sex = list3;
        this.sexAge = list4;
    }

    public static /* synthetic */ AdsDemostatsFormat copy$default(AdsDemostatsFormat adsDemostatsFormat, List list, List list2, String str, String str2, Integer num, List list3, List list4, int i9, Object obj) {
        List<AdsStatsAge> list5 = list;
        if ((i9 & 1) != 0) {
            list5 = adsDemostatsFormat.age;
        }
        List<AdsStatsCities> list6 = list2;
        if ((i9 & 2) != 0) {
            list6 = adsDemostatsFormat.cities;
        }
        List list7 = list6;
        if ((i9 & 4) != 0) {
            str = adsDemostatsFormat.day;
        }
        String str3 = str;
        if ((i9 & 8) != 0) {
            str2 = adsDemostatsFormat.month;
        }
        String str4 = str2;
        if ((i9 & 16) != 0) {
            num = adsDemostatsFormat.overall;
        }
        Integer num2 = num;
        List<AdsStatsSex> list8 = list3;
        if ((i9 & 32) != 0) {
            list8 = adsDemostatsFormat.sex;
        }
        List list9 = list8;
        List<AdsStatsSexAge> list10 = list4;
        if ((i9 & 64) != 0) {
            list10 = adsDemostatsFormat.sexAge;
        }
        return adsDemostatsFormat.copy(list5, list7, str3, str4, num2, list9, list10);
    }

    @Nullable
    public final List<AdsStatsAge> component1() {
        return this.age;
    }

    @Nullable
    public final List<AdsStatsCities> component2() {
        return this.cities;
    }

    @Nullable
    public final String component3() {
        return this.day;
    }

    @Nullable
    public final String component4() {
        return this.month;
    }

    @Nullable
    public final Integer component5() {
        return this.overall;
    }

    @Nullable
    public final List<AdsStatsSex> component6() {
        return this.sex;
    }

    @Nullable
    public final List<AdsStatsSexAge> component7() {
        return this.sexAge;
    }

    @NotNull
    public final AdsDemostatsFormat copy(@Nullable List<AdsStatsAge> list, @Nullable List<AdsStatsCities> list2, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable List<AdsStatsSex> list3, @Nullable List<AdsStatsSexAge> list4) {
        return new AdsDemostatsFormat(list, list2, str, str2, num, list3, list4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsDemostatsFormat) {
            AdsDemostatsFormat adsDemostatsFormat = (AdsDemostatsFormat) obj;
            return Intrinsics.areEqual(this.age, adsDemostatsFormat.age) && Intrinsics.areEqual(this.cities, adsDemostatsFormat.cities) && Intrinsics.areEqual(this.day, adsDemostatsFormat.day) && Intrinsics.areEqual(this.month, adsDemostatsFormat.month) && Intrinsics.areEqual(this.overall, adsDemostatsFormat.overall) && Intrinsics.areEqual(this.sex, adsDemostatsFormat.sex) && Intrinsics.areEqual(this.sexAge, adsDemostatsFormat.sexAge);
        }
        return false;
    }

    @Nullable
    public final List<AdsStatsAge> getAge() {
        return this.age;
    }

    @Nullable
    public final List<AdsStatsCities> getCities() {
        return this.cities;
    }

    @Nullable
    public final String getDay() {
        return this.day;
    }

    @Nullable
    public final String getMonth() {
        return this.month;
    }

    @Nullable
    public final Integer getOverall() {
        return this.overall;
    }

    @Nullable
    public final List<AdsStatsSex> getSex() {
        return this.sex;
    }

    @Nullable
    public final List<AdsStatsSexAge> getSexAge() {
        return this.sexAge;
    }

    public int hashCode() {
        List<AdsStatsAge> list = this.age;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<AdsStatsCities> list2 = this.cities;
        int hashCode2 = (hashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.day;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.month;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.overall;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        List<AdsStatsSex> list3 = this.sex;
        int hashCode6 = (hashCode5 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<AdsStatsSexAge> list4 = this.sexAge;
        return hashCode6 + (list4 != null ? list4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<AdsStatsAge> list = this.age;
        List<AdsStatsCities> list2 = this.cities;
        String str = this.day;
        String str2 = this.month;
        Integer num = this.overall;
        List<AdsStatsSex> list3 = this.sex;
        List<AdsStatsSexAge> list4 = this.sexAge;
        return "AdsDemostatsFormat(age=" + list + ", cities=" + list2 + ", day=" + str + ", month=" + str2 + ", overall=" + num + ", sex=" + list3 + ", sexAge=" + list4 + ")";
    }

    public /* synthetic */ AdsDemostatsFormat(List list, List list2, String str, String str2, Integer num, List list3, List list4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : list2, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : str2, (i9 & 16) != 0 ? null : num, (i9 & 32) != 0 ? null : list3, (i9 & 64) != 0 ? null : list4);
    }
}

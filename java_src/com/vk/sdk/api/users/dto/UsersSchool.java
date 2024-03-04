package com.vk.sdk.api.users.dto;

import com.facebook.appevents.UserDataStore;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0092\u0001\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0003HÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0015\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0019\u0010\u0011R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001b\u0010\u0011R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001c\u0010\u0011R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u001d\u0010\u0011¨\u00060"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersSchool;", "", "city", "", "class", "", UserDataStore.COUNTRY, "id", "name", "type", "typeStr", "yearFrom", "yearGraduated", "yearTo", "speciality", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getCity", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getClass", "()Ljava/lang/String;", "getCountry", "getId", "getName", "getSpeciality", "getType", "getTypeStr", "getYearFrom", "getYearGraduated", "getYearTo", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/users/dto/UsersSchool;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersSchool {
    @SerializedName("city")
    @Nullable
    private final Integer city;
    @SerializedName("class")
    @Nullable

    /* renamed from: class  reason: not valid java name */
    private final String f10class;
    @SerializedName(UserDataStore.COUNTRY)
    @Nullable
    private final Integer country;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f36104id;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("speciality")
    @Nullable
    private final String speciality;
    @SerializedName("type")
    @Nullable
    private final Integer type;
    @SerializedName("type_str")
    @Nullable
    private final String typeStr;
    @SerializedName("year_from")
    @Nullable
    private final Integer yearFrom;
    @SerializedName("year_graduated")
    @Nullable
    private final Integer yearGraduated;
    @SerializedName("year_to")
    @Nullable
    private final Integer yearTo;

    public UsersSchool() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public UsersSchool(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable String str2, @Nullable String str3, @Nullable Integer num3, @Nullable String str4, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable String str5) {
        this.city = num;
        this.f10class = str;
        this.country = num2;
        this.f36104id = str2;
        this.name = str3;
        this.type = num3;
        this.typeStr = str4;
        this.yearFrom = num4;
        this.yearGraduated = num5;
        this.yearTo = num6;
        this.speciality = str5;
    }

    @Nullable
    public final Integer component1() {
        return this.city;
    }

    @Nullable
    public final Integer component10() {
        return this.yearTo;
    }

    @Nullable
    public final String component11() {
        return this.speciality;
    }

    @Nullable
    public final String component2() {
        return this.f10class;
    }

    @Nullable
    public final Integer component3() {
        return this.country;
    }

    @Nullable
    public final String component4() {
        return this.f36104id;
    }

    @Nullable
    public final String component5() {
        return this.name;
    }

    @Nullable
    public final Integer component6() {
        return this.type;
    }

    @Nullable
    public final String component7() {
        return this.typeStr;
    }

    @Nullable
    public final Integer component8() {
        return this.yearFrom;
    }

    @Nullable
    public final Integer component9() {
        return this.yearGraduated;
    }

    @NotNull
    public final UsersSchool copy(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable String str2, @Nullable String str3, @Nullable Integer num3, @Nullable String str4, @Nullable Integer num4, @Nullable Integer num5, @Nullable Integer num6, @Nullable String str5) {
        return new UsersSchool(num, str, num2, str2, str3, num3, str4, num4, num5, num6, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersSchool) {
            UsersSchool usersSchool = (UsersSchool) obj;
            return Intrinsics.areEqual(this.city, usersSchool.city) && Intrinsics.areEqual(this.f10class, usersSchool.f10class) && Intrinsics.areEqual(this.country, usersSchool.country) && Intrinsics.areEqual(this.f36104id, usersSchool.f36104id) && Intrinsics.areEqual(this.name, usersSchool.name) && Intrinsics.areEqual(this.type, usersSchool.type) && Intrinsics.areEqual(this.typeStr, usersSchool.typeStr) && Intrinsics.areEqual(this.yearFrom, usersSchool.yearFrom) && Intrinsics.areEqual(this.yearGraduated, usersSchool.yearGraduated) && Intrinsics.areEqual(this.yearTo, usersSchool.yearTo) && Intrinsics.areEqual(this.speciality, usersSchool.speciality);
        }
        return false;
    }

    @Nullable
    public final Integer getCity() {
        return this.city;
    }

    @Nullable
    public final String getClass() {
        return this.f10class;
    }

    @Nullable
    public final Integer getCountry() {
        return this.country;
    }

    @Nullable
    public final String getId() {
        return this.f36104id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getSpeciality() {
        return this.speciality;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    public final String getTypeStr() {
        return this.typeStr;
    }

    @Nullable
    public final Integer getYearFrom() {
        return this.yearFrom;
    }

    @Nullable
    public final Integer getYearGraduated() {
        return this.yearGraduated;
    }

    @Nullable
    public final Integer getYearTo() {
        return this.yearTo;
    }

    public int hashCode() {
        Integer num = this.city;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.f10class;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.country;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.f36104id;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.name;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num3 = this.type;
        int hashCode6 = (hashCode5 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str4 = this.typeStr;
        int hashCode7 = (hashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num4 = this.yearFrom;
        int hashCode8 = (hashCode7 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.yearGraduated;
        int hashCode9 = (hashCode8 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.yearTo;
        int hashCode10 = (hashCode9 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str5 = this.speciality;
        return hashCode10 + (str5 != null ? str5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.city;
        String str = this.f10class;
        Integer num2 = this.country;
        String str2 = this.f36104id;
        String str3 = this.name;
        Integer num3 = this.type;
        String str4 = this.typeStr;
        Integer num4 = this.yearFrom;
        Integer num5 = this.yearGraduated;
        Integer num6 = this.yearTo;
        String str5 = this.speciality;
        return "UsersSchool(city=" + num + ", class=" + str + ", country=" + num2 + ", id=" + str2 + ", name=" + str3 + ", type=" + num3 + ", typeStr=" + str4 + ", yearFrom=" + num4 + ", yearGraduated=" + num5 + ", yearTo=" + num6 + ", speciality=" + str5 + ")";
    }

    public /* synthetic */ UsersSchool(Integer num, String str, Integer num2, String str2, String str3, Integer num3, String str4, Integer num4, Integer num5, Integer num6, String str5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : num2, (i9 & 8) != 0 ? null : str2, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : num3, (i9 & 64) != 0 ? null : str4, (i9 & 128) != 0 ? null : num4, (i9 & 256) != 0 ? null : num5, (i9 & 512) != 0 ? null : num6, (i9 & 1024) == 0 ? str5 : null);
    }
}

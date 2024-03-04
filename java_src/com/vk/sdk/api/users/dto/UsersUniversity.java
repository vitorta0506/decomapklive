package com.vk.sdk.api.users.dto;

import com.facebook.appevents.UserDataStore;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b)\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u009e\u0001\u0010,\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u00020\u0003HÖ\u0001J\t\u00102\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0016\u0010\u0012R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0017\u0010\u0012R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001a\u0010\u0012R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001c\u0010\u0012R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001d\u0010\u0012R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001f\u0010\u0012¨\u00063"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersUniversity;", "", "chair", "", "chairName", "", "city", UserDataStore.COUNTRY, "educationForm", "educationStatus", "faculty", "facultyName", "graduation", "id", "name", "universityGroupId", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getChair", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getChairName", "()Ljava/lang/String;", "getCity", "getCountry", "getEducationForm", "getEducationStatus", "getFaculty", "getFacultyName", "getGraduation", "getId", "getName", "getUniversityGroupId", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/users/dto/UsersUniversity;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersUniversity {
    @SerializedName("chair")
    @Nullable
    private final Integer chair;
    @SerializedName("chair_name")
    @Nullable
    private final String chairName;
    @SerializedName("city")
    @Nullable
    private final Integer city;
    @SerializedName(UserDataStore.COUNTRY)
    @Nullable
    private final Integer country;
    @SerializedName("education_form")
    @Nullable
    private final String educationForm;
    @SerializedName("education_status")
    @Nullable
    private final String educationStatus;
    @SerializedName("faculty")
    @Nullable
    private final Integer faculty;
    @SerializedName("faculty_name")
    @Nullable
    private final String facultyName;
    @SerializedName("graduation")
    @Nullable
    private final Integer graduation;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36107id;
    @SerializedName("name")
    @Nullable
    private final String name;
    @SerializedName("university_group_id")
    @Nullable
    private final Integer universityGroupId;

    public UsersUniversity() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public UsersUniversity(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable String str3, @Nullable Integer num4, @Nullable String str4, @Nullable Integer num5, @Nullable Integer num6, @Nullable String str5, @Nullable Integer num7) {
        this.chair = num;
        this.chairName = str;
        this.city = num2;
        this.country = num3;
        this.educationForm = str2;
        this.educationStatus = str3;
        this.faculty = num4;
        this.facultyName = str4;
        this.graduation = num5;
        this.f36107id = num6;
        this.name = str5;
        this.universityGroupId = num7;
    }

    @Nullable
    public final Integer component1() {
        return this.chair;
    }

    @Nullable
    public final Integer component10() {
        return this.f36107id;
    }

    @Nullable
    public final String component11() {
        return this.name;
    }

    @Nullable
    public final Integer component12() {
        return this.universityGroupId;
    }

    @Nullable
    public final String component2() {
        return this.chairName;
    }

    @Nullable
    public final Integer component3() {
        return this.city;
    }

    @Nullable
    public final Integer component4() {
        return this.country;
    }

    @Nullable
    public final String component5() {
        return this.educationForm;
    }

    @Nullable
    public final String component6() {
        return this.educationStatus;
    }

    @Nullable
    public final Integer component7() {
        return this.faculty;
    }

    @Nullable
    public final String component8() {
        return this.facultyName;
    }

    @Nullable
    public final Integer component9() {
        return this.graduation;
    }

    @NotNull
    public final UsersUniversity copy(@Nullable Integer num, @Nullable String str, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str2, @Nullable String str3, @Nullable Integer num4, @Nullable String str4, @Nullable Integer num5, @Nullable Integer num6, @Nullable String str5, @Nullable Integer num7) {
        return new UsersUniversity(num, str, num2, num3, str2, str3, num4, str4, num5, num6, str5, num7);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersUniversity) {
            UsersUniversity usersUniversity = (UsersUniversity) obj;
            return Intrinsics.areEqual(this.chair, usersUniversity.chair) && Intrinsics.areEqual(this.chairName, usersUniversity.chairName) && Intrinsics.areEqual(this.city, usersUniversity.city) && Intrinsics.areEqual(this.country, usersUniversity.country) && Intrinsics.areEqual(this.educationForm, usersUniversity.educationForm) && Intrinsics.areEqual(this.educationStatus, usersUniversity.educationStatus) && Intrinsics.areEqual(this.faculty, usersUniversity.faculty) && Intrinsics.areEqual(this.facultyName, usersUniversity.facultyName) && Intrinsics.areEqual(this.graduation, usersUniversity.graduation) && Intrinsics.areEqual(this.f36107id, usersUniversity.f36107id) && Intrinsics.areEqual(this.name, usersUniversity.name) && Intrinsics.areEqual(this.universityGroupId, usersUniversity.universityGroupId);
        }
        return false;
    }

    @Nullable
    public final Integer getChair() {
        return this.chair;
    }

    @Nullable
    public final String getChairName() {
        return this.chairName;
    }

    @Nullable
    public final Integer getCity() {
        return this.city;
    }

    @Nullable
    public final Integer getCountry() {
        return this.country;
    }

    @Nullable
    public final String getEducationForm() {
        return this.educationForm;
    }

    @Nullable
    public final String getEducationStatus() {
        return this.educationStatus;
    }

    @Nullable
    public final Integer getFaculty() {
        return this.faculty;
    }

    @Nullable
    public final String getFacultyName() {
        return this.facultyName;
    }

    @Nullable
    public final Integer getGraduation() {
        return this.graduation;
    }

    @Nullable
    public final Integer getId() {
        return this.f36107id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Integer getUniversityGroupId() {
        return this.universityGroupId;
    }

    public int hashCode() {
        Integer num = this.chair;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.chairName;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.city;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.country;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.educationForm;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.educationStatus;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num4 = this.faculty;
        int hashCode7 = (hashCode6 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str4 = this.facultyName;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num5 = this.graduation;
        int hashCode9 = (hashCode8 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.f36107id;
        int hashCode10 = (hashCode9 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str5 = this.name;
        int hashCode11 = (hashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num7 = this.universityGroupId;
        return hashCode11 + (num7 != null ? num7.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.chair;
        String str = this.chairName;
        Integer num2 = this.city;
        Integer num3 = this.country;
        String str2 = this.educationForm;
        String str3 = this.educationStatus;
        Integer num4 = this.faculty;
        String str4 = this.facultyName;
        Integer num5 = this.graduation;
        Integer num6 = this.f36107id;
        String str5 = this.name;
        Integer num7 = this.universityGroupId;
        return "UsersUniversity(chair=" + num + ", chairName=" + str + ", city=" + num2 + ", country=" + num3 + ", educationForm=" + str2 + ", educationStatus=" + str3 + ", faculty=" + num4 + ", facultyName=" + str4 + ", graduation=" + num5 + ", id=" + num6 + ", name=" + str5 + ", universityGroupId=" + num7 + ")";
    }

    public /* synthetic */ UsersUniversity(Integer num, String str, Integer num2, Integer num3, String str2, String str3, Integer num4, String str4, Integer num5, Integer num6, String str5, Integer num7, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : num2, (i9 & 8) != 0 ? null : num3, (i9 & 16) != 0 ? null : str2, (i9 & 32) != 0 ? null : str3, (i9 & 64) != 0 ? null : num4, (i9 & 128) != 0 ? null : str4, (i9 & 256) != 0 ? null : num5, (i9 & 512) != 0 ? null : num6, (i9 & 1024) != 0 ? null : str5, (i9 & 2048) == 0 ? num7 : null);
    }
}

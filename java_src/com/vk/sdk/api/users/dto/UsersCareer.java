package com.vk.sdk.api.users.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010!\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010Jz\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0015\u0010\u0010R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0016\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0019\u0010\u0010R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u001b\u0010\u0010¨\u0006,"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersCareer;", "", "cityId", "", "cityName", "", "company", "countryId", "from", "groupId", "Lcom/vk/dto/common/id/UserId;", "id", "position", "until", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getCityId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCityName", "()Ljava/lang/String;", "getCompany", "getCountryId", "getFrom", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getId", "getPosition", "getUntil", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/users/dto/UsersCareer;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersCareer {
    @SerializedName("city_id")
    @Nullable
    private final Integer cityId;
    @SerializedName("city_name")
    @Nullable
    private final String cityName;
    @SerializedName("company")
    @Nullable
    private final String company;
    @SerializedName("country_id")
    @Nullable
    private final Integer countryId;
    @SerializedName("from")
    @Nullable
    private final Integer from;
    @SerializedName("group_id")
    @Nullable
    private final UserId groupId;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36100id;
    @SerializedName("position")
    @Nullable
    private final String position;
    @SerializedName("until")
    @Nullable
    private final Integer until;

    public UsersCareer() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public UsersCareer(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable Integer num3, @Nullable UserId userId, @Nullable Integer num4, @Nullable String str3, @Nullable Integer num5) {
        this.cityId = num;
        this.cityName = str;
        this.company = str2;
        this.countryId = num2;
        this.from = num3;
        this.groupId = userId;
        this.f36100id = num4;
        this.position = str3;
        this.until = num5;
    }

    @Nullable
    public final Integer component1() {
        return this.cityId;
    }

    @Nullable
    public final String component2() {
        return this.cityName;
    }

    @Nullable
    public final String component3() {
        return this.company;
    }

    @Nullable
    public final Integer component4() {
        return this.countryId;
    }

    @Nullable
    public final Integer component5() {
        return this.from;
    }

    @Nullable
    public final UserId component6() {
        return this.groupId;
    }

    @Nullable
    public final Integer component7() {
        return this.f36100id;
    }

    @Nullable
    public final String component8() {
        return this.position;
    }

    @Nullable
    public final Integer component9() {
        return this.until;
    }

    @NotNull
    public final UsersCareer copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable Integer num3, @Nullable UserId userId, @Nullable Integer num4, @Nullable String str3, @Nullable Integer num5) {
        return new UsersCareer(num, str, str2, num2, num3, userId, num4, str3, num5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersCareer) {
            UsersCareer usersCareer = (UsersCareer) obj;
            return Intrinsics.areEqual(this.cityId, usersCareer.cityId) && Intrinsics.areEqual(this.cityName, usersCareer.cityName) && Intrinsics.areEqual(this.company, usersCareer.company) && Intrinsics.areEqual(this.countryId, usersCareer.countryId) && Intrinsics.areEqual(this.from, usersCareer.from) && Intrinsics.areEqual(this.groupId, usersCareer.groupId) && Intrinsics.areEqual(this.f36100id, usersCareer.f36100id) && Intrinsics.areEqual(this.position, usersCareer.position) && Intrinsics.areEqual(this.until, usersCareer.until);
        }
        return false;
    }

    @Nullable
    public final Integer getCityId() {
        return this.cityId;
    }

    @Nullable
    public final String getCityName() {
        return this.cityName;
    }

    @Nullable
    public final String getCompany() {
        return this.company;
    }

    @Nullable
    public final Integer getCountryId() {
        return this.countryId;
    }

    @Nullable
    public final Integer getFrom() {
        return this.from;
    }

    @Nullable
    public final UserId getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final Integer getId() {
        return this.f36100id;
    }

    @Nullable
    public final String getPosition() {
        return this.position;
    }

    @Nullable
    public final Integer getUntil() {
        return this.until;
    }

    public int hashCode() {
        Integer num = this.cityId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.cityName;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.company;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.countryId;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.from;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        UserId userId = this.groupId;
        int hashCode6 = (hashCode5 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num4 = this.f36100id;
        int hashCode7 = (hashCode6 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str3 = this.position;
        int hashCode8 = (hashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num5 = this.until;
        return hashCode8 + (num5 != null ? num5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.cityId;
        String str = this.cityName;
        String str2 = this.company;
        Integer num2 = this.countryId;
        Integer num3 = this.from;
        UserId userId = this.groupId;
        Integer num4 = this.f36100id;
        String str3 = this.position;
        Integer num5 = this.until;
        return "UsersCareer(cityId=" + num + ", cityName=" + str + ", company=" + str2 + ", countryId=" + num2 + ", from=" + num3 + ", groupId=" + userId + ", id=" + num4 + ", position=" + str3 + ", until=" + num5 + ")";
    }

    public /* synthetic */ UsersCareer(Integer num, String str, String str2, Integer num2, Integer num3, UserId userId, Integer num4, String str3, Integer num5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : num2, (i9 & 16) != 0 ? null : num3, (i9 & 32) != 0 ? null : userId, (i9 & 64) != 0 ? null : num4, (i9 & 128) != 0 ? null : str3, (i9 & 256) == 0 ? num5 : null);
    }
}

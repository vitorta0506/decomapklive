package com.vk.sdk.api.groups.dto;

import com.facebook.appevents.integrity.IntegrityManager;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0016J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u000b\u00101\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u0010\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0010\u0010:\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010;\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001bJÀ\u0001\u0010=\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010>J\u0013\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010B\u001a\u00020\u0003HÖ\u0001J\t\u0010C\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001d\u0010\u001bR\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001e\u0010\u001bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b$\u0010\"R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b%\u0010\u001bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0018R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b'\u0010\u001bR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b(\u0010\u001bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0018R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-¨\u0006D"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsAddress;", "", "id", "", "additionalAddress", "", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "cityId", "countryId", "distance", "latitude", "", "longitude", "metroStationId", "phone", "timeOffset", "timetable", "Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;", "title", "workInfoStatus", "Lcom/vk/sdk/api/groups/dto/GroupsAddressWorkInfoStatus;", "placeId", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsAddressWorkInfoStatus;Ljava/lang/Integer;)V", "getAdditionalAddress", "()Ljava/lang/String;", "getAddress", "getCityId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCountryId", "getDistance", "getId", "()I", "getLatitude", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLongitude", "getMetroStationId", "getPhone", "getPlaceId", "getTimeOffset", "getTimetable", "()Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;", "getTitle", "getWorkInfoStatus", "()Lcom/vk/sdk/api/groups/dto/GroupsAddressWorkInfoStatus;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsAddressTimetable;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsAddressWorkInfoStatus;Ljava/lang/Integer;)Lcom/vk/sdk/api/groups/dto/GroupsAddress;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsAddress {
    @SerializedName("additional_address")
    @Nullable
    private final String additionalAddress;
    @SerializedName(IntegrityManager.INTEGRITY_TYPE_ADDRESS)
    @Nullable
    private final String address;
    @SerializedName("city_id")
    @Nullable
    private final Integer cityId;
    @SerializedName("country_id")
    @Nullable
    private final Integer countryId;
    @SerializedName("distance")
    @Nullable
    private final Integer distance;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35826id;
    @SerializedName("latitude")
    @Nullable
    private final Float latitude;
    @SerializedName("longitude")
    @Nullable
    private final Float longitude;
    @SerializedName("metro_station_id")
    @Nullable
    private final Integer metroStationId;
    @SerializedName("phone")
    @Nullable
    private final String phone;
    @SerializedName("place_id")
    @Nullable
    private final Integer placeId;
    @SerializedName("time_offset")
    @Nullable
    private final Integer timeOffset;
    @SerializedName("timetable")
    @Nullable
    private final GroupsAddressTimetable timetable;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("work_info_status")
    @Nullable
    private final GroupsAddressWorkInfoStatus workInfoStatus;

    public GroupsAddress(int i9, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num4, @Nullable String str3, @Nullable Integer num5, @Nullable GroupsAddressTimetable groupsAddressTimetable, @Nullable String str4, @Nullable GroupsAddressWorkInfoStatus groupsAddressWorkInfoStatus, @Nullable Integer num6) {
        this.f35826id = i9;
        this.additionalAddress = str;
        this.address = str2;
        this.cityId = num;
        this.countryId = num2;
        this.distance = num3;
        this.latitude = f10;
        this.longitude = f11;
        this.metroStationId = num4;
        this.phone = str3;
        this.timeOffset = num5;
        this.timetable = groupsAddressTimetable;
        this.title = str4;
        this.workInfoStatus = groupsAddressWorkInfoStatus;
        this.placeId = num6;
    }

    public final int component1() {
        return this.f35826id;
    }

    @Nullable
    public final String component10() {
        return this.phone;
    }

    @Nullable
    public final Integer component11() {
        return this.timeOffset;
    }

    @Nullable
    public final GroupsAddressTimetable component12() {
        return this.timetable;
    }

    @Nullable
    public final String component13() {
        return this.title;
    }

    @Nullable
    public final GroupsAddressWorkInfoStatus component14() {
        return this.workInfoStatus;
    }

    @Nullable
    public final Integer component15() {
        return this.placeId;
    }

    @Nullable
    public final String component2() {
        return this.additionalAddress;
    }

    @Nullable
    public final String component3() {
        return this.address;
    }

    @Nullable
    public final Integer component4() {
        return this.cityId;
    }

    @Nullable
    public final Integer component5() {
        return this.countryId;
    }

    @Nullable
    public final Integer component6() {
        return this.distance;
    }

    @Nullable
    public final Float component7() {
        return this.latitude;
    }

    @Nullable
    public final Float component8() {
        return this.longitude;
    }

    @Nullable
    public final Integer component9() {
        return this.metroStationId;
    }

    @NotNull
    public final GroupsAddress copy(int i9, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Float f10, @Nullable Float f11, @Nullable Integer num4, @Nullable String str3, @Nullable Integer num5, @Nullable GroupsAddressTimetable groupsAddressTimetable, @Nullable String str4, @Nullable GroupsAddressWorkInfoStatus groupsAddressWorkInfoStatus, @Nullable Integer num6) {
        return new GroupsAddress(i9, str, str2, num, num2, num3, f10, f11, num4, str3, num5, groupsAddressTimetable, str4, groupsAddressWorkInfoStatus, num6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsAddress) {
            GroupsAddress groupsAddress = (GroupsAddress) obj;
            return this.f35826id == groupsAddress.f35826id && Intrinsics.areEqual(this.additionalAddress, groupsAddress.additionalAddress) && Intrinsics.areEqual(this.address, groupsAddress.address) && Intrinsics.areEqual(this.cityId, groupsAddress.cityId) && Intrinsics.areEqual(this.countryId, groupsAddress.countryId) && Intrinsics.areEqual(this.distance, groupsAddress.distance) && Intrinsics.areEqual((Object) this.latitude, (Object) groupsAddress.latitude) && Intrinsics.areEqual((Object) this.longitude, (Object) groupsAddress.longitude) && Intrinsics.areEqual(this.metroStationId, groupsAddress.metroStationId) && Intrinsics.areEqual(this.phone, groupsAddress.phone) && Intrinsics.areEqual(this.timeOffset, groupsAddress.timeOffset) && Intrinsics.areEqual(this.timetable, groupsAddress.timetable) && Intrinsics.areEqual(this.title, groupsAddress.title) && this.workInfoStatus == groupsAddress.workInfoStatus && Intrinsics.areEqual(this.placeId, groupsAddress.placeId);
        }
        return false;
    }

    @Nullable
    public final String getAdditionalAddress() {
        return this.additionalAddress;
    }

    @Nullable
    public final String getAddress() {
        return this.address;
    }

    @Nullable
    public final Integer getCityId() {
        return this.cityId;
    }

    @Nullable
    public final Integer getCountryId() {
        return this.countryId;
    }

    @Nullable
    public final Integer getDistance() {
        return this.distance;
    }

    public final int getId() {
        return this.f35826id;
    }

    @Nullable
    public final Float getLatitude() {
        return this.latitude;
    }

    @Nullable
    public final Float getLongitude() {
        return this.longitude;
    }

    @Nullable
    public final Integer getMetroStationId() {
        return this.metroStationId;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @Nullable
    public final Integer getPlaceId() {
        return this.placeId;
    }

    @Nullable
    public final Integer getTimeOffset() {
        return this.timeOffset;
    }

    @Nullable
    public final GroupsAddressTimetable getTimetable() {
        return this.timetable;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final GroupsAddressWorkInfoStatus getWorkInfoStatus() {
        return this.workInfoStatus;
    }

    public int hashCode() {
        int i9 = this.f35826id * 31;
        String str = this.additionalAddress;
        int hashCode = (i9 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.address;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.cityId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.countryId;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.distance;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Float f10 = this.latitude;
        int hashCode6 = (hashCode5 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.longitude;
        int hashCode7 = (hashCode6 + (f11 == null ? 0 : f11.hashCode())) * 31;
        Integer num4 = this.metroStationId;
        int hashCode8 = (hashCode7 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str3 = this.phone;
        int hashCode9 = (hashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num5 = this.timeOffset;
        int hashCode10 = (hashCode9 + (num5 == null ? 0 : num5.hashCode())) * 31;
        GroupsAddressTimetable groupsAddressTimetable = this.timetable;
        int hashCode11 = (hashCode10 + (groupsAddressTimetable == null ? 0 : groupsAddressTimetable.hashCode())) * 31;
        String str4 = this.title;
        int hashCode12 = (hashCode11 + (str4 == null ? 0 : str4.hashCode())) * 31;
        GroupsAddressWorkInfoStatus groupsAddressWorkInfoStatus = this.workInfoStatus;
        int hashCode13 = (hashCode12 + (groupsAddressWorkInfoStatus == null ? 0 : groupsAddressWorkInfoStatus.hashCode())) * 31;
        Integer num6 = this.placeId;
        return hashCode13 + (num6 != null ? num6.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35826id;
        String str = this.additionalAddress;
        String str2 = this.address;
        Integer num = this.cityId;
        Integer num2 = this.countryId;
        Integer num3 = this.distance;
        Float f10 = this.latitude;
        Float f11 = this.longitude;
        Integer num4 = this.metroStationId;
        String str3 = this.phone;
        Integer num5 = this.timeOffset;
        GroupsAddressTimetable groupsAddressTimetable = this.timetable;
        String str4 = this.title;
        GroupsAddressWorkInfoStatus groupsAddressWorkInfoStatus = this.workInfoStatus;
        Integer num6 = this.placeId;
        return "GroupsAddress(id=" + i9 + ", additionalAddress=" + str + ", address=" + str2 + ", cityId=" + num + ", countryId=" + num2 + ", distance=" + num3 + ", latitude=" + f10 + ", longitude=" + f11 + ", metroStationId=" + num4 + ", phone=" + str3 + ", timeOffset=" + num5 + ", timetable=" + groupsAddressTimetable + ", title=" + str4 + ", workInfoStatus=" + groupsAddressWorkInfoStatus + ", placeId=" + num6 + ")";
    }

    public /* synthetic */ GroupsAddress(int i9, String str, String str2, Integer num, Integer num2, Integer num3, Float f10, Float f11, Integer num4, String str3, Integer num5, GroupsAddressTimetable groupsAddressTimetable, String str4, GroupsAddressWorkInfoStatus groupsAddressWorkInfoStatus, Integer num6, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : num, (i10 & 16) != 0 ? null : num2, (i10 & 32) != 0 ? null : num3, (i10 & 64) != 0 ? null : f10, (i10 & 128) != 0 ? null : f11, (i10 & 256) != 0 ? null : num4, (i10 & 512) != 0 ? null : str3, (i10 & 1024) != 0 ? null : num5, (i10 & 2048) != 0 ? null : groupsAddressTimetable, (i10 & 4096) != 0 ? null : str4, (i10 & 8192) != 0 ? null : groupsAddressWorkInfoStatus, (i10 & 16384) == 0 ? num6 : null);
    }
}

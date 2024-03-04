package com.vk.sdk.api.base.dto;

import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.integrity.IntegrityManager;
import com.google.gson.annotations.SerializedName;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010*\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010+\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0092\u0001\u0010,\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u00020\u0005HÖ\u0001J\t\u00102\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0018\u0010\u0014R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u001a\u0010\u0014R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001e\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0012R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0012¨\u00063"}, d2 = {"Lcom/vk/sdk/api/base/dto/BasePlace;", "", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "", "checkins", "", "city", UserDataStore.COUNTRY, "created", RemoteMessageConst.Notification.ICON, "id", "latitude", "", "longitude", "title", "type", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V", "getAddress", "()Ljava/lang/String;", "getCheckins", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCity", "getCountry", "getCreated", "getIcon", "getId", "getLatitude", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLongitude", "getTitle", "getType", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/base/dto/BasePlace;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BasePlace {
    @SerializedName(IntegrityManager.INTEGRITY_TYPE_ADDRESS)
    @Nullable
    private final String address;
    @SerializedName("checkins")
    @Nullable
    private final Integer checkins;
    @SerializedName("city")
    @Nullable
    private final String city;
    @SerializedName(UserDataStore.COUNTRY)
    @Nullable
    private final String country;
    @SerializedName("created")
    @Nullable
    private final Integer created;
    @SerializedName(RemoteMessageConst.Notification.ICON)
    @Nullable
    private final String icon;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35749id;
    @SerializedName("latitude")
    @Nullable
    private final Float latitude;
    @SerializedName("longitude")
    @Nullable
    private final Float longitude;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("type")
    @Nullable
    private final String type;

    public BasePlace() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public BasePlace(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable Integer num2, @Nullable String str4, @Nullable Integer num3, @Nullable Float f10, @Nullable Float f11, @Nullable String str5, @Nullable String str6) {
        this.address = str;
        this.checkins = num;
        this.city = str2;
        this.country = str3;
        this.created = num2;
        this.icon = str4;
        this.f35749id = num3;
        this.latitude = f10;
        this.longitude = f11;
        this.title = str5;
        this.type = str6;
    }

    @Nullable
    public final String component1() {
        return this.address;
    }

    @Nullable
    public final String component10() {
        return this.title;
    }

    @Nullable
    public final String component11() {
        return this.type;
    }

    @Nullable
    public final Integer component2() {
        return this.checkins;
    }

    @Nullable
    public final String component3() {
        return this.city;
    }

    @Nullable
    public final String component4() {
        return this.country;
    }

    @Nullable
    public final Integer component5() {
        return this.created;
    }

    @Nullable
    public final String component6() {
        return this.icon;
    }

    @Nullable
    public final Integer component7() {
        return this.f35749id;
    }

    @Nullable
    public final Float component8() {
        return this.latitude;
    }

    @Nullable
    public final Float component9() {
        return this.longitude;
    }

    @NotNull
    public final BasePlace copy(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable Integer num2, @Nullable String str4, @Nullable Integer num3, @Nullable Float f10, @Nullable Float f11, @Nullable String str5, @Nullable String str6) {
        return new BasePlace(str, num, str2, str3, num2, str4, num3, f10, f11, str5, str6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BasePlace) {
            BasePlace basePlace = (BasePlace) obj;
            return Intrinsics.areEqual(this.address, basePlace.address) && Intrinsics.areEqual(this.checkins, basePlace.checkins) && Intrinsics.areEqual(this.city, basePlace.city) && Intrinsics.areEqual(this.country, basePlace.country) && Intrinsics.areEqual(this.created, basePlace.created) && Intrinsics.areEqual(this.icon, basePlace.icon) && Intrinsics.areEqual(this.f35749id, basePlace.f35749id) && Intrinsics.areEqual((Object) this.latitude, (Object) basePlace.latitude) && Intrinsics.areEqual((Object) this.longitude, (Object) basePlace.longitude) && Intrinsics.areEqual(this.title, basePlace.title) && Intrinsics.areEqual(this.type, basePlace.type);
        }
        return false;
    }

    @Nullable
    public final String getAddress() {
        return this.address;
    }

    @Nullable
    public final Integer getCheckins() {
        return this.checkins;
    }

    @Nullable
    public final String getCity() {
        return this.city;
    }

    @Nullable
    public final String getCountry() {
        return this.country;
    }

    @Nullable
    public final Integer getCreated() {
        return this.created;
    }

    @Nullable
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final Integer getId() {
        return this.f35749id;
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
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.address;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.checkins;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.city;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.country;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num2 = this.created;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.icon;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num3 = this.f35749id;
        int hashCode7 = (hashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Float f10 = this.latitude;
        int hashCode8 = (hashCode7 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.longitude;
        int hashCode9 = (hashCode8 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str5 = this.title;
        int hashCode10 = (hashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.type;
        return hashCode10 + (str6 != null ? str6.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.address;
        Integer num = this.checkins;
        String str2 = this.city;
        String str3 = this.country;
        Integer num2 = this.created;
        String str4 = this.icon;
        Integer num3 = this.f35749id;
        Float f10 = this.latitude;
        Float f11 = this.longitude;
        String str5 = this.title;
        String str6 = this.type;
        return "BasePlace(address=" + str + ", checkins=" + num + ", city=" + str2 + ", country=" + str3 + ", created=" + num2 + ", icon=" + str4 + ", id=" + num3 + ", latitude=" + f10 + ", longitude=" + f11 + ", title=" + str5 + ", type=" + str6 + ")";
    }

    public /* synthetic */ BasePlace(String str, Integer num, String str2, String str3, Integer num2, String str4, Integer num3, Float f10, Float f11, String str5, String str6, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : str3, (i9 & 16) != 0 ? null : num2, (i9 & 32) != 0 ? null : str4, (i9 & 64) != 0 ? null : num3, (i9 & 128) != 0 ? null : f10, (i9 & 256) != 0 ? null : f11, (i9 & 512) != 0 ? null : str5, (i9 & 1024) == 0 ? str6 : null);
    }
}

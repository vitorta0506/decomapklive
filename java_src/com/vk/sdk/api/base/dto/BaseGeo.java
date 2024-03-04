package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J>\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001e\u001a\u00020\tHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseGeo;", "", "coordinates", "Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;", BaseConfig.DB_TYPE_PLACE_NAME, "Lcom/vk/sdk/api/base/dto/BasePlace;", "showmap", "", "type", "", "(Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;Lcom/vk/sdk/api/base/dto/BasePlace;Ljava/lang/Integer;Ljava/lang/String;)V", "getCoordinates", "()Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;", "getPlace", "()Lcom/vk/sdk/api/base/dto/BasePlace;", "getShowmap", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getType", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "(Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;Lcom/vk/sdk/api/base/dto/BasePlace;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/base/dto/BaseGeo;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseGeo {
    @SerializedName("coordinates")
    @Nullable
    private final BaseGeoCoordinates coordinates;
    @SerializedName(BaseConfig.DB_TYPE_PLACE_NAME)
    @Nullable
    private final BasePlace place;
    @SerializedName("showmap")
    @Nullable
    private final Integer showmap;
    @SerializedName("type")
    @Nullable
    private final String type;

    public BaseGeo() {
        this(null, null, null, null, 15, null);
    }

    public BaseGeo(@Nullable BaseGeoCoordinates baseGeoCoordinates, @Nullable BasePlace basePlace, @Nullable Integer num, @Nullable String str) {
        this.coordinates = baseGeoCoordinates;
        this.place = basePlace;
        this.showmap = num;
        this.type = str;
    }

    public static /* synthetic */ BaseGeo copy$default(BaseGeo baseGeo, BaseGeoCoordinates baseGeoCoordinates, BasePlace basePlace, Integer num, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseGeoCoordinates = baseGeo.coordinates;
        }
        if ((i9 & 2) != 0) {
            basePlace = baseGeo.place;
        }
        if ((i9 & 4) != 0) {
            num = baseGeo.showmap;
        }
        if ((i9 & 8) != 0) {
            str = baseGeo.type;
        }
        return baseGeo.copy(baseGeoCoordinates, basePlace, num, str);
    }

    @Nullable
    public final BaseGeoCoordinates component1() {
        return this.coordinates;
    }

    @Nullable
    public final BasePlace component2() {
        return this.place;
    }

    @Nullable
    public final Integer component3() {
        return this.showmap;
    }

    @Nullable
    public final String component4() {
        return this.type;
    }

    @NotNull
    public final BaseGeo copy(@Nullable BaseGeoCoordinates baseGeoCoordinates, @Nullable BasePlace basePlace, @Nullable Integer num, @Nullable String str) {
        return new BaseGeo(baseGeoCoordinates, basePlace, num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseGeo) {
            BaseGeo baseGeo = (BaseGeo) obj;
            return Intrinsics.areEqual(this.coordinates, baseGeo.coordinates) && Intrinsics.areEqual(this.place, baseGeo.place) && Intrinsics.areEqual(this.showmap, baseGeo.showmap) && Intrinsics.areEqual(this.type, baseGeo.type);
        }
        return false;
    }

    @Nullable
    public final BaseGeoCoordinates getCoordinates() {
        return this.coordinates;
    }

    @Nullable
    public final BasePlace getPlace() {
        return this.place;
    }

    @Nullable
    public final Integer getShowmap() {
        return this.showmap;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        BaseGeoCoordinates baseGeoCoordinates = this.coordinates;
        int hashCode = (baseGeoCoordinates == null ? 0 : baseGeoCoordinates.hashCode()) * 31;
        BasePlace basePlace = this.place;
        int hashCode2 = (hashCode + (basePlace == null ? 0 : basePlace.hashCode())) * 31;
        Integer num = this.showmap;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.type;
        return hashCode3 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseGeoCoordinates baseGeoCoordinates = this.coordinates;
        BasePlace basePlace = this.place;
        Integer num = this.showmap;
        String str = this.type;
        return "BaseGeo(coordinates=" + baseGeoCoordinates + ", place=" + basePlace + ", showmap=" + num + ", type=" + str + ")";
    }

    public /* synthetic */ BaseGeo(BaseGeoCoordinates baseGeoCoordinates, BasePlace basePlace, Integer num, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseGeoCoordinates, (i9 & 2) != 0 ? null : basePlace, (i9 & 4) != 0 ? null : num, (i9 & 8) != 0 ? null : str);
    }
}

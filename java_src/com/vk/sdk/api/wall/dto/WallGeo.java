package com.vk.sdk.api.wall.dto;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import com.vk.sdk.api.base.dto.BasePlace;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001fB5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J>\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallGeo;", "", "coordinates", "", BaseConfig.DB_TYPE_PLACE_NAME, "Lcom/vk/sdk/api/base/dto/BasePlace;", "showmap", "", "type", "Lcom/vk/sdk/api/wall/dto/WallGeo$Type;", "(Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePlace;Ljava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallGeo$Type;)V", "getCoordinates", "()Ljava/lang/String;", "getPlace", "()Lcom/vk/sdk/api/base/dto/BasePlace;", "getShowmap", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getType", "()Lcom/vk/sdk/api/wall/dto/WallGeo$Type;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BasePlace;Ljava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallGeo$Type;)Lcom/vk/sdk/api/wall/dto/WallGeo;", "equals", "", "other", "hashCode", "toString", "Type", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallGeo {
    @SerializedName("coordinates")
    @Nullable
    private final String coordinates;
    @SerializedName(BaseConfig.DB_TYPE_PLACE_NAME)
    @Nullable
    private final BasePlace place;
    @SerializedName("showmap")
    @Nullable
    private final Integer showmap;
    @SerializedName("type")
    @Nullable
    private final Type type;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallGeo$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", ShareConstants.PLACE_ID, "POINT", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Type {
        PLACE(BaseConfig.DB_TYPE_PLACE_NAME),
        POINT("point");
        
        @NotNull
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public WallGeo() {
        this(null, null, null, null, 15, null);
    }

    public WallGeo(@Nullable String str, @Nullable BasePlace basePlace, @Nullable Integer num, @Nullable Type type) {
        this.coordinates = str;
        this.place = basePlace;
        this.showmap = num;
        this.type = type;
    }

    public static /* synthetic */ WallGeo copy$default(WallGeo wallGeo, String str, BasePlace basePlace, Integer num, Type type, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = wallGeo.coordinates;
        }
        if ((i9 & 2) != 0) {
            basePlace = wallGeo.place;
        }
        if ((i9 & 4) != 0) {
            num = wallGeo.showmap;
        }
        if ((i9 & 8) != 0) {
            type = wallGeo.type;
        }
        return wallGeo.copy(str, basePlace, num, type);
    }

    @Nullable
    public final String component1() {
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
    public final Type component4() {
        return this.type;
    }

    @NotNull
    public final WallGeo copy(@Nullable String str, @Nullable BasePlace basePlace, @Nullable Integer num, @Nullable Type type) {
        return new WallGeo(str, basePlace, num, type);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallGeo) {
            WallGeo wallGeo = (WallGeo) obj;
            return Intrinsics.areEqual(this.coordinates, wallGeo.coordinates) && Intrinsics.areEqual(this.place, wallGeo.place) && Intrinsics.areEqual(this.showmap, wallGeo.showmap) && this.type == wallGeo.type;
        }
        return false;
    }

    @Nullable
    public final String getCoordinates() {
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
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.coordinates;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        BasePlace basePlace = this.place;
        int hashCode2 = (hashCode + (basePlace == null ? 0 : basePlace.hashCode())) * 31;
        Integer num = this.showmap;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Type type = this.type;
        return hashCode3 + (type != null ? type.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.coordinates;
        BasePlace basePlace = this.place;
        Integer num = this.showmap;
        Type type = this.type;
        return "WallGeo(coordinates=" + str + ", place=" + basePlace + ", showmap=" + num + ", type=" + type + ")";
    }

    public /* synthetic */ WallGeo(String str, BasePlace basePlace, Integer num, Type type, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : basePlace, (i9 & 4) != 0 ? null : num, (i9 & 8) != 0 ? null : type);
    }
}

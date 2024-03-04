package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseGeoCoordinates;", "", "latitude", "", "longitude", "(FF)V", "getLatitude", "()F", "getLongitude", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseGeoCoordinates {
    @SerializedName("latitude")
    private final float latitude;
    @SerializedName("longitude")
    private final float longitude;

    public BaseGeoCoordinates(float f10, float f11) {
        this.latitude = f10;
        this.longitude = f11;
    }

    public static /* synthetic */ BaseGeoCoordinates copy$default(BaseGeoCoordinates baseGeoCoordinates, float f10, float f11, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = baseGeoCoordinates.latitude;
        }
        if ((i9 & 2) != 0) {
            f11 = baseGeoCoordinates.longitude;
        }
        return baseGeoCoordinates.copy(f10, f11);
    }

    public final float component1() {
        return this.latitude;
    }

    public final float component2() {
        return this.longitude;
    }

    @NotNull
    public final BaseGeoCoordinates copy(float f10, float f11) {
        return new BaseGeoCoordinates(f10, f11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseGeoCoordinates) {
            BaseGeoCoordinates baseGeoCoordinates = (BaseGeoCoordinates) obj;
            return Intrinsics.areEqual((Object) Float.valueOf(this.latitude), (Object) Float.valueOf(baseGeoCoordinates.latitude)) && Intrinsics.areEqual((Object) Float.valueOf(this.longitude), (Object) Float.valueOf(baseGeoCoordinates.longitude));
        }
        return false;
    }

    public final float getLatitude() {
        return this.latitude;
    }

    public final float getLongitude() {
        return this.longitude;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.latitude) * 31) + Float.floatToIntBits(this.longitude);
    }

    @NotNull
    public String toString() {
        float f10 = this.latitude;
        float f11 = this.longitude;
        return "BaseGeoCoordinates(latitude=" + f10 + ", longitude=" + f11 + ")";
    }
}

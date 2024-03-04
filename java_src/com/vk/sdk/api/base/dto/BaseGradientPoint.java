package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseGradientPoint;", "", "color", "", "position", "", "(Ljava/lang/String;F)V", "getColor", "()Ljava/lang/String;", "getPosition", "()F", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseGradientPoint {
    @SerializedName("color")
    @NotNull
    private final String color;
    @SerializedName("position")
    private final float position;

    public BaseGradientPoint(@NotNull String color, float f10) {
        Intrinsics.checkNotNullParameter(color, "color");
        this.color = color;
        this.position = f10;
    }

    public static /* synthetic */ BaseGradientPoint copy$default(BaseGradientPoint baseGradientPoint, String str, float f10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = baseGradientPoint.color;
        }
        if ((i9 & 2) != 0) {
            f10 = baseGradientPoint.position;
        }
        return baseGradientPoint.copy(str, f10);
    }

    @NotNull
    public final String component1() {
        return this.color;
    }

    public final float component2() {
        return this.position;
    }

    @NotNull
    public final BaseGradientPoint copy(@NotNull String color, float f10) {
        Intrinsics.checkNotNullParameter(color, "color");
        return new BaseGradientPoint(color, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseGradientPoint) {
            BaseGradientPoint baseGradientPoint = (BaseGradientPoint) obj;
            return Intrinsics.areEqual(this.color, baseGradientPoint.color) && Intrinsics.areEqual((Object) Float.valueOf(this.position), (Object) Float.valueOf(baseGradientPoint.position));
        }
        return false;
    }

    @NotNull
    public final String getColor() {
        return this.color;
    }

    public final float getPosition() {
        return this.position;
    }

    public int hashCode() {
        return (this.color.hashCode() * 31) + Float.floatToIntBits(this.position);
    }

    @NotNull
    public String toString() {
        String str = this.color;
        float f10 = this.position;
        return "BaseGradientPoint(color=" + str + ", position=" + f10 + ")";
    }
}

package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseCropPhotoRect;", "", x.f19108w, "", "y", "x2", "y2", "(FFFF)V", "getX", "()F", "getX2", "getY", "getY2", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseCropPhotoRect {
    @SerializedName(x.f19108w)

    /* renamed from: x  reason: collision with root package name */
    private final float f35740x;
    @SerializedName("x2")

    /* renamed from: x2  reason: collision with root package name */
    private final float f35741x2;
    @SerializedName("y")

    /* renamed from: y  reason: collision with root package name */
    private final float f35742y;
    @SerializedName("y2")

    /* renamed from: y2  reason: collision with root package name */
    private final float f35743y2;

    public BaseCropPhotoRect(float f10, float f11, float f12, float f13) {
        this.f35740x = f10;
        this.f35742y = f11;
        this.f35741x2 = f12;
        this.f35743y2 = f13;
    }

    public static /* synthetic */ BaseCropPhotoRect copy$default(BaseCropPhotoRect baseCropPhotoRect, float f10, float f11, float f12, float f13, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = baseCropPhotoRect.f35740x;
        }
        if ((i9 & 2) != 0) {
            f11 = baseCropPhotoRect.f35742y;
        }
        if ((i9 & 4) != 0) {
            f12 = baseCropPhotoRect.f35741x2;
        }
        if ((i9 & 8) != 0) {
            f13 = baseCropPhotoRect.f35743y2;
        }
        return baseCropPhotoRect.copy(f10, f11, f12, f13);
    }

    public final float component1() {
        return this.f35740x;
    }

    public final float component2() {
        return this.f35742y;
    }

    public final float component3() {
        return this.f35741x2;
    }

    public final float component4() {
        return this.f35743y2;
    }

    @NotNull
    public final BaseCropPhotoRect copy(float f10, float f11, float f12, float f13) {
        return new BaseCropPhotoRect(f10, f11, f12, f13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseCropPhotoRect) {
            BaseCropPhotoRect baseCropPhotoRect = (BaseCropPhotoRect) obj;
            return Intrinsics.areEqual((Object) Float.valueOf(this.f35740x), (Object) Float.valueOf(baseCropPhotoRect.f35740x)) && Intrinsics.areEqual((Object) Float.valueOf(this.f35742y), (Object) Float.valueOf(baseCropPhotoRect.f35742y)) && Intrinsics.areEqual((Object) Float.valueOf(this.f35741x2), (Object) Float.valueOf(baseCropPhotoRect.f35741x2)) && Intrinsics.areEqual((Object) Float.valueOf(this.f35743y2), (Object) Float.valueOf(baseCropPhotoRect.f35743y2));
        }
        return false;
    }

    public final float getX() {
        return this.f35740x;
    }

    public final float getX2() {
        return this.f35741x2;
    }

    public final float getY() {
        return this.f35742y;
    }

    public final float getY2() {
        return this.f35743y2;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f35740x) * 31) + Float.floatToIntBits(this.f35742y)) * 31) + Float.floatToIntBits(this.f35741x2)) * 31) + Float.floatToIntBits(this.f35743y2);
    }

    @NotNull
    public String toString() {
        float f10 = this.f35740x;
        float f11 = this.f35742y;
        float f12 = this.f35741x2;
        float f13 = this.f35743y2;
        return "BaseCropPhotoRect(x=" + f10 + ", y=" + f11 + ", x2=" + f12 + ", y2=" + f13 + ")";
    }
}

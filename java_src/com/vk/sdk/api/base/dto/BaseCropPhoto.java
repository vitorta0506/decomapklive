package com.vk.sdk.api.base.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseCropPhoto;", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "crop", "Lcom/vk/sdk/api/base/dto/BaseCropPhotoCrop;", "rect", "Lcom/vk/sdk/api/base/dto/BaseCropPhotoRect;", "(Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Lcom/vk/sdk/api/base/dto/BaseCropPhotoCrop;Lcom/vk/sdk/api/base/dto/BaseCropPhotoRect;)V", "getCrop", "()Lcom/vk/sdk/api/base/dto/BaseCropPhotoCrop;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getRect", "()Lcom/vk/sdk/api/base/dto/BaseCropPhotoRect;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseCropPhoto {
    @SerializedName("crop")
    @NotNull
    private final BaseCropPhotoCrop crop;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @NotNull
    private final PhotosPhoto photo;
    @SerializedName("rect")
    @NotNull
    private final BaseCropPhotoRect rect;

    public BaseCropPhoto(@NotNull PhotosPhoto photo, @NotNull BaseCropPhotoCrop crop, @NotNull BaseCropPhotoRect rect) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(crop, "crop");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.photo = photo;
        this.crop = crop;
        this.rect = rect;
    }

    public static /* synthetic */ BaseCropPhoto copy$default(BaseCropPhoto baseCropPhoto, PhotosPhoto photosPhoto, BaseCropPhotoCrop baseCropPhotoCrop, BaseCropPhotoRect baseCropPhotoRect, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            photosPhoto = baseCropPhoto.photo;
        }
        if ((i9 & 2) != 0) {
            baseCropPhotoCrop = baseCropPhoto.crop;
        }
        if ((i9 & 4) != 0) {
            baseCropPhotoRect = baseCropPhoto.rect;
        }
        return baseCropPhoto.copy(photosPhoto, baseCropPhotoCrop, baseCropPhotoRect);
    }

    @NotNull
    public final PhotosPhoto component1() {
        return this.photo;
    }

    @NotNull
    public final BaseCropPhotoCrop component2() {
        return this.crop;
    }

    @NotNull
    public final BaseCropPhotoRect component3() {
        return this.rect;
    }

    @NotNull
    public final BaseCropPhoto copy(@NotNull PhotosPhoto photo, @NotNull BaseCropPhotoCrop crop, @NotNull BaseCropPhotoRect rect) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(crop, "crop");
        Intrinsics.checkNotNullParameter(rect, "rect");
        return new BaseCropPhoto(photo, crop, rect);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseCropPhoto) {
            BaseCropPhoto baseCropPhoto = (BaseCropPhoto) obj;
            return Intrinsics.areEqual(this.photo, baseCropPhoto.photo) && Intrinsics.areEqual(this.crop, baseCropPhoto.crop) && Intrinsics.areEqual(this.rect, baseCropPhoto.rect);
        }
        return false;
    }

    @NotNull
    public final BaseCropPhotoCrop getCrop() {
        return this.crop;
    }

    @NotNull
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @NotNull
    public final BaseCropPhotoRect getRect() {
        return this.rect;
    }

    public int hashCode() {
        return (((this.photo.hashCode() * 31) + this.crop.hashCode()) * 31) + this.rect.hashCode();
    }

    @NotNull
    public String toString() {
        PhotosPhoto photosPhoto = this.photo;
        BaseCropPhotoCrop baseCropPhotoCrop = this.crop;
        BaseCropPhotoRect baseCropPhotoRect = this.rect;
        return "BaseCropPhoto(photo=" + photosPhoto + ", crop=" + baseCropPhotoCrop + ", rect=" + baseCropPhotoRect + ")";
    }
}

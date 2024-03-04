package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ>\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosImage;", "", "height", "", "type", "Lcom/vk/sdk/api/photos/dto/PhotosImageType;", "url", "", "width", "(Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosImageType;Ljava/lang/String;Ljava/lang/Integer;)V", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getType", "()Lcom/vk/sdk/api/photos/dto/PhotosImageType;", "getUrl", "()Ljava/lang/String;", "getWidth", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Lcom/vk/sdk/api/photos/dto/PhotosImageType;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosImage;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosImage {
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("type")
    @Nullable
    private final PhotosImageType type;
    @SerializedName("url")
    @Nullable
    private final String url;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    public PhotosImage() {
        this(null, null, null, null, 15, null);
    }

    public PhotosImage(@Nullable Integer num, @Nullable PhotosImageType photosImageType, @Nullable String str, @Nullable Integer num2) {
        this.height = num;
        this.type = photosImageType;
        this.url = str;
        this.width = num2;
    }

    public static /* synthetic */ PhotosImage copy$default(PhotosImage photosImage, Integer num, PhotosImageType photosImageType, String str, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = photosImage.height;
        }
        if ((i9 & 2) != 0) {
            photosImageType = photosImage.type;
        }
        if ((i9 & 4) != 0) {
            str = photosImage.url;
        }
        if ((i9 & 8) != 0) {
            num2 = photosImage.width;
        }
        return photosImage.copy(num, photosImageType, str, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.height;
    }

    @Nullable
    public final PhotosImageType component2() {
        return this.type;
    }

    @Nullable
    public final String component3() {
        return this.url;
    }

    @Nullable
    public final Integer component4() {
        return this.width;
    }

    @NotNull
    public final PhotosImage copy(@Nullable Integer num, @Nullable PhotosImageType photosImageType, @Nullable String str, @Nullable Integer num2) {
        return new PhotosImage(num, photosImageType, str, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosImage) {
            PhotosImage photosImage = (PhotosImage) obj;
            return Intrinsics.areEqual(this.height, photosImage.height) && this.type == photosImage.type && Intrinsics.areEqual(this.url, photosImage.url) && Intrinsics.areEqual(this.width, photosImage.width);
        }
        return false;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    @Nullable
    public final PhotosImageType getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.height;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        PhotosImageType photosImageType = this.type;
        int hashCode2 = (hashCode + (photosImageType == null ? 0 : photosImageType.hashCode())) * 31;
        String str = this.url;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.width;
        return hashCode3 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.height;
        PhotosImageType photosImageType = this.type;
        String str = this.url;
        Integer num2 = this.width;
        return "PhotosImage(height=" + num + ", type=" + photosImageType + ", url=" + str + ", width=" + num2 + ")";
    }

    public /* synthetic */ PhotosImage(Integer num, PhotosImageType photosImageType, String str, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : photosImageType, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : num2);
    }
}

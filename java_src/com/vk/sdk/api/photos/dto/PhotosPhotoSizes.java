package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J=\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", "", "height", "", "url", "", "type", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizesType;", "width", "src", "(ILjava/lang/String;Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizesType;ILjava/lang/String;)V", "getHeight", "()I", "getSrc", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizesType;", "getUrl", "getWidth", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoSizes {
    @SerializedName("height")
    private final int height;
    @SerializedName("src")
    @Nullable
    private final String src;
    @SerializedName("type")
    @NotNull
    private final PhotosPhotoSizesType type;
    @SerializedName("url")
    @NotNull
    private final String url;
    @SerializedName("width")
    private final int width;

    public PhotosPhotoSizes(int i9, @NotNull String url, @NotNull PhotosPhotoSizesType type, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(type, "type");
        this.height = i9;
        this.url = url;
        this.type = type;
        this.width = i10;
        this.src = str;
    }

    public static /* synthetic */ PhotosPhotoSizes copy$default(PhotosPhotoSizes photosPhotoSizes, int i9, String str, PhotosPhotoSizesType photosPhotoSizesType, int i10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = photosPhotoSizes.height;
        }
        if ((i11 & 2) != 0) {
            str = photosPhotoSizes.url;
        }
        String str3 = str;
        if ((i11 & 4) != 0) {
            photosPhotoSizesType = photosPhotoSizes.type;
        }
        PhotosPhotoSizesType photosPhotoSizesType2 = photosPhotoSizesType;
        if ((i11 & 8) != 0) {
            i10 = photosPhotoSizes.width;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            str2 = photosPhotoSizes.src;
        }
        return photosPhotoSizes.copy(i9, str3, photosPhotoSizesType2, i12, str2);
    }

    public final int component1() {
        return this.height;
    }

    @NotNull
    public final String component2() {
        return this.url;
    }

    @NotNull
    public final PhotosPhotoSizesType component3() {
        return this.type;
    }

    public final int component4() {
        return this.width;
    }

    @Nullable
    public final String component5() {
        return this.src;
    }

    @NotNull
    public final PhotosPhotoSizes copy(int i9, @NotNull String url, @NotNull PhotosPhotoSizesType type, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(type, "type");
        return new PhotosPhotoSizes(i9, url, type, i10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoSizes) {
            PhotosPhotoSizes photosPhotoSizes = (PhotosPhotoSizes) obj;
            return this.height == photosPhotoSizes.height && Intrinsics.areEqual(this.url, photosPhotoSizes.url) && this.type == photosPhotoSizes.type && this.width == photosPhotoSizes.width && Intrinsics.areEqual(this.src, photosPhotoSizes.src);
        }
        return false;
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final String getSrc() {
        return this.src;
    }

    @NotNull
    public final PhotosPhotoSizesType getType() {
        return this.type;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int hashCode = ((((((this.height * 31) + this.url.hashCode()) * 31) + this.type.hashCode()) * 31) + this.width) * 31;
        String str = this.src;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.height;
        String str = this.url;
        PhotosPhotoSizesType photosPhotoSizesType = this.type;
        int i10 = this.width;
        String str2 = this.src;
        return "PhotosPhotoSizes(height=" + i9 + ", url=" + str + ", type=" + photosPhotoSizesType + ", width=" + i10 + ", src=" + str2 + ")";
    }

    public /* synthetic */ PhotosPhotoSizes(int i9, String str, PhotosPhotoSizesType photosPhotoSizesType, int i10, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, photosPhotoSizesType, i10, (i11 & 16) != 0 ? null : str2);
    }
}

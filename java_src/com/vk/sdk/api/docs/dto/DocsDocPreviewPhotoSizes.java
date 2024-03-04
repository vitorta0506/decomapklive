package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.photos.dto.PhotosPhotoSizesType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDocPreviewPhotoSizes;", "", "src", "", "width", "", "height", "type", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizesType;", "(Ljava/lang/String;IILcom/vk/sdk/api/photos/dto/PhotosPhotoSizesType;)V", "getHeight", "()I", "getSrc", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizesType;", "getWidth", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDocPreviewPhotoSizes {
    @SerializedName("height")
    private final int height;
    @SerializedName("src")
    @NotNull
    private final String src;
    @SerializedName("type")
    @NotNull
    private final PhotosPhotoSizesType type;
    @SerializedName("width")
    private final int width;

    public DocsDocPreviewPhotoSizes(@NotNull String src, int i9, int i10, @NotNull PhotosPhotoSizesType type) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(type, "type");
        this.src = src;
        this.width = i9;
        this.height = i10;
        this.type = type;
    }

    public static /* synthetic */ DocsDocPreviewPhotoSizes copy$default(DocsDocPreviewPhotoSizes docsDocPreviewPhotoSizes, String str, int i9, int i10, PhotosPhotoSizesType photosPhotoSizesType, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = docsDocPreviewPhotoSizes.src;
        }
        if ((i11 & 2) != 0) {
            i9 = docsDocPreviewPhotoSizes.width;
        }
        if ((i11 & 4) != 0) {
            i10 = docsDocPreviewPhotoSizes.height;
        }
        if ((i11 & 8) != 0) {
            photosPhotoSizesType = docsDocPreviewPhotoSizes.type;
        }
        return docsDocPreviewPhotoSizes.copy(str, i9, i10, photosPhotoSizesType);
    }

    @NotNull
    public final String component1() {
        return this.src;
    }

    public final int component2() {
        return this.width;
    }

    public final int component3() {
        return this.height;
    }

    @NotNull
    public final PhotosPhotoSizesType component4() {
        return this.type;
    }

    @NotNull
    public final DocsDocPreviewPhotoSizes copy(@NotNull String src, int i9, int i10, @NotNull PhotosPhotoSizesType type) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(type, "type");
        return new DocsDocPreviewPhotoSizes(src, i9, i10, type);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsDocPreviewPhotoSizes) {
            DocsDocPreviewPhotoSizes docsDocPreviewPhotoSizes = (DocsDocPreviewPhotoSizes) obj;
            return Intrinsics.areEqual(this.src, docsDocPreviewPhotoSizes.src) && this.width == docsDocPreviewPhotoSizes.width && this.height == docsDocPreviewPhotoSizes.height && this.type == docsDocPreviewPhotoSizes.type;
        }
        return false;
    }

    public final int getHeight() {
        return this.height;
    }

    @NotNull
    public final String getSrc() {
        return this.src;
    }

    @NotNull
    public final PhotosPhotoSizesType getType() {
        return this.type;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((((this.src.hashCode() * 31) + this.width) * 31) + this.height) * 31) + this.type.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.src;
        int i9 = this.width;
        int i10 = this.height;
        PhotosPhotoSizesType photosPhotoSizesType = this.type;
        return "DocsDocPreviewPhotoSizes(src=" + str + ", width=" + i9 + ", height=" + i10 + ", type=" + photosPhotoSizesType + ")";
    }
}

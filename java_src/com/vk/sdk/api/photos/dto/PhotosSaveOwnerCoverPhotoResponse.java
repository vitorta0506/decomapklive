package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseImage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\t\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosSaveOwnerCoverPhotoResponse;", "", "images", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "(Ljava/util/List;)V", "getImages", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosSaveOwnerCoverPhotoResponse {
    @SerializedName("images")
    @Nullable
    private final List<BaseImage> images;

    public PhotosSaveOwnerCoverPhotoResponse() {
        this(null, 1, null);
    }

    public PhotosSaveOwnerCoverPhotoResponse(@Nullable List<BaseImage> list) {
        this.images = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PhotosSaveOwnerCoverPhotoResponse copy$default(PhotosSaveOwnerCoverPhotoResponse photosSaveOwnerCoverPhotoResponse, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = photosSaveOwnerCoverPhotoResponse.images;
        }
        return photosSaveOwnerCoverPhotoResponse.copy(list);
    }

    @Nullable
    public final List<BaseImage> component1() {
        return this.images;
    }

    @NotNull
    public final PhotosSaveOwnerCoverPhotoResponse copy(@Nullable List<BaseImage> list) {
        return new PhotosSaveOwnerCoverPhotoResponse(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PhotosSaveOwnerCoverPhotoResponse) && Intrinsics.areEqual(this.images, ((PhotosSaveOwnerCoverPhotoResponse) obj).images);
    }

    @Nullable
    public final List<BaseImage> getImages() {
        return this.images;
    }

    public int hashCode() {
        List<BaseImage> list = this.images;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        List<BaseImage> list = this.images;
        return "PhotosSaveOwnerCoverPhotoResponse(images=" + list + ")";
    }

    public /* synthetic */ PhotosSaveOwnerCoverPhotoResponse(List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list);
    }
}

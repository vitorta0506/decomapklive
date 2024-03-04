package com.vk.sdk.api.classifieds.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlockProduct;", "", "id", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "(Ljava/lang/String;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)V", "getId", "()Ljava/lang/String;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaGroupsBlockProduct {
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35754id;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;

    public ClassifiedsYoulaGroupsBlockProduct(@NotNull String id2, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f35754id = id2;
        this.photo = photosPhoto;
    }

    public static /* synthetic */ ClassifiedsYoulaGroupsBlockProduct copy$default(ClassifiedsYoulaGroupsBlockProduct classifiedsYoulaGroupsBlockProduct, String str, PhotosPhoto photosPhoto, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = classifiedsYoulaGroupsBlockProduct.f35754id;
        }
        if ((i9 & 2) != 0) {
            photosPhoto = classifiedsYoulaGroupsBlockProduct.photo;
        }
        return classifiedsYoulaGroupsBlockProduct.copy(str, photosPhoto);
    }

    @NotNull
    public final String component1() {
        return this.f35754id;
    }

    @Nullable
    public final PhotosPhoto component2() {
        return this.photo;
    }

    @NotNull
    public final ClassifiedsYoulaGroupsBlockProduct copy(@NotNull String id2, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(id2, "id");
        return new ClassifiedsYoulaGroupsBlockProduct(id2, photosPhoto);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaGroupsBlockProduct) {
            ClassifiedsYoulaGroupsBlockProduct classifiedsYoulaGroupsBlockProduct = (ClassifiedsYoulaGroupsBlockProduct) obj;
            return Intrinsics.areEqual(this.f35754id, classifiedsYoulaGroupsBlockProduct.f35754id) && Intrinsics.areEqual(this.photo, classifiedsYoulaGroupsBlockProduct.photo);
        }
        return false;
    }

    @NotNull
    public final String getId() {
        return this.f35754id;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    public int hashCode() {
        int hashCode = this.f35754id.hashCode() * 31;
        PhotosPhoto photosPhoto = this.photo;
        return hashCode + (photosPhoto == null ? 0 : photosPhoto.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.f35754id;
        PhotosPhoto photosPhoto = this.photo;
        return "ClassifiedsYoulaGroupsBlockProduct(id=" + str + ", photo=" + photosPhoto + ")";
    }

    public /* synthetic */ ClassifiedsYoulaGroupsBlockProduct(String str, PhotosPhoto photosPhoto, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : photosPhoto);
    }
}

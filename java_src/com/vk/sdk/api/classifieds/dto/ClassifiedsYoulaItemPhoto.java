package com.vk.sdk.api.classifieds.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemPhoto;", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "url", "", "(Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/String;)V", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemPhoto {
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName("url")
    @Nullable
    private final String url;

    public ClassifiedsYoulaItemPhoto() {
        this(null, null, 3, null);
    }

    public ClassifiedsYoulaItemPhoto(@Nullable PhotosPhoto photosPhoto, @Nullable String str) {
        this.photo = photosPhoto;
        this.url = str;
    }

    public static /* synthetic */ ClassifiedsYoulaItemPhoto copy$default(ClassifiedsYoulaItemPhoto classifiedsYoulaItemPhoto, PhotosPhoto photosPhoto, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            photosPhoto = classifiedsYoulaItemPhoto.photo;
        }
        if ((i9 & 2) != 0) {
            str = classifiedsYoulaItemPhoto.url;
        }
        return classifiedsYoulaItemPhoto.copy(photosPhoto, str);
    }

    @Nullable
    public final PhotosPhoto component1() {
        return this.photo;
    }

    @Nullable
    public final String component2() {
        return this.url;
    }

    @NotNull
    public final ClassifiedsYoulaItemPhoto copy(@Nullable PhotosPhoto photosPhoto, @Nullable String str) {
        return new ClassifiedsYoulaItemPhoto(photosPhoto, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaItemPhoto) {
            ClassifiedsYoulaItemPhoto classifiedsYoulaItemPhoto = (ClassifiedsYoulaItemPhoto) obj;
            return Intrinsics.areEqual(this.photo, classifiedsYoulaItemPhoto.photo) && Intrinsics.areEqual(this.url, classifiedsYoulaItemPhoto.url);
        }
        return false;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        PhotosPhoto photosPhoto = this.photo;
        int hashCode = (photosPhoto == null ? 0 : photosPhoto.hashCode()) * 31;
        String str = this.url;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        PhotosPhoto photosPhoto = this.photo;
        String str = this.url;
        return "ClassifiedsYoulaItemPhoto(photo=" + photosPhoto + ", url=" + str + ")";
    }

    public /* synthetic */ ClassifiedsYoulaItemPhoto(PhotosPhoto photosPhoto, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : photosPhoto, (i9 & 2) != 0 ? null : str);
    }
}

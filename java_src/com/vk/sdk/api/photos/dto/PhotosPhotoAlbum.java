package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\tHÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\rHÆ\u0003J]\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010¨\u0006)"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoAlbum;", "", "created", "", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "size", "title", "", "updated", "description", "thumb", "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "(IILcom/vk/dto/common/id/UserId;ILjava/lang/String;ILjava/lang/String;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)V", "getCreated", "()I", "getDescription", "()Ljava/lang/String;", "getId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getSize", "getThumb", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getTitle", "getUpdated", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoAlbum {
    @SerializedName("created")
    private final int created;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35994id;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("size")
    private final int size;
    @SerializedName("thumb")
    @Nullable
    private final PhotosPhoto thumb;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("updated")
    private final int updated;

    public PhotosPhotoAlbum(int i9, int i10, @NotNull UserId ownerId, int i11, @NotNull String title, int i12, @Nullable String str, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        this.created = i9;
        this.f35994id = i10;
        this.ownerId = ownerId;
        this.size = i11;
        this.title = title;
        this.updated = i12;
        this.description = str;
        this.thumb = photosPhoto;
    }

    public final int component1() {
        return this.created;
    }

    public final int component2() {
        return this.f35994id;
    }

    @NotNull
    public final UserId component3() {
        return this.ownerId;
    }

    public final int component4() {
        return this.size;
    }

    @NotNull
    public final String component5() {
        return this.title;
    }

    public final int component6() {
        return this.updated;
    }

    @Nullable
    public final String component7() {
        return this.description;
    }

    @Nullable
    public final PhotosPhoto component8() {
        return this.thumb;
    }

    @NotNull
    public final PhotosPhotoAlbum copy(int i9, int i10, @NotNull UserId ownerId, int i11, @NotNull String title, int i12, @Nullable String str, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        return new PhotosPhotoAlbum(i9, i10, ownerId, i11, title, i12, str, photosPhoto);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoAlbum) {
            PhotosPhotoAlbum photosPhotoAlbum = (PhotosPhotoAlbum) obj;
            return this.created == photosPhotoAlbum.created && this.f35994id == photosPhotoAlbum.f35994id && Intrinsics.areEqual(this.ownerId, photosPhotoAlbum.ownerId) && this.size == photosPhotoAlbum.size && Intrinsics.areEqual(this.title, photosPhotoAlbum.title) && this.updated == photosPhotoAlbum.updated && Intrinsics.areEqual(this.description, photosPhotoAlbum.description) && Intrinsics.areEqual(this.thumb, photosPhotoAlbum.thumb);
        }
        return false;
    }

    public final int getCreated() {
        return this.created;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    public final int getId() {
        return this.f35994id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    public final int getSize() {
        return this.size;
    }

    @Nullable
    public final PhotosPhoto getThumb() {
        return this.thumb;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getUpdated() {
        return this.updated;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.created * 31) + this.f35994id) * 31) + this.ownerId.hashCode()) * 31) + this.size) * 31) + this.title.hashCode()) * 31) + this.updated) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.thumb;
        return hashCode2 + (photosPhoto != null ? photosPhoto.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.created;
        int i10 = this.f35994id;
        UserId userId = this.ownerId;
        int i11 = this.size;
        String str = this.title;
        int i12 = this.updated;
        String str2 = this.description;
        PhotosPhoto photosPhoto = this.thumb;
        return "PhotosPhotoAlbum(created=" + i9 + ", id=" + i10 + ", ownerId=" + userId + ", size=" + i11 + ", title=" + str + ", updated=" + i12 + ", description=" + str2 + ", thumb=" + photosPhoto + ")";
    }

    public /* synthetic */ PhotosPhotoAlbum(int i9, int i10, UserId userId, int i11, String str, int i12, String str2, PhotosPhoto photosPhoto, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, userId, i11, str, i12, (i13 & 64) != 0 ? null : str2, (i13 & 128) != 0 ? null : photosPhoto);
    }
}

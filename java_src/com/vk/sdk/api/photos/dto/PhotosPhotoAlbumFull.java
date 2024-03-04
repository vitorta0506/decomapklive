package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b3\b\u0086\b\u0018\u00002\u00020\u0001B§\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0018J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012HÆ\u0003J\u0010\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010*J\u000b\u00105\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0006HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\tHÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\tHÆ\u0003J¼\u0001\u0010@\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010AJ\u0013\u0010B\u001a\u00020\u00102\b\u0010C\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010D\u001a\u00020\u0003HÖ\u0001J\t\u0010E\u001a\u00020\tHÖ\u0001R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010 R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010 R\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010+\u001a\u0004\b)\u0010*R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001dR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\"R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\"R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010 R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001d¨\u0006F"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoAlbumFull;", "", "created", "", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "size", "title", "", "updated", "canUpload", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "commentsDisabled", "description", "canDelete", "", "sizes", "", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", "thumbId", "thumbIsLast", "thumbSrc", "uploadByAdminsOnly", "(IILcom/vk/dto/common/id/UserId;ILjava/lang/String;ILcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getCanDelete", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCanUpload", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCommentsDisabled", "getCreated", "()I", "getDescription", "()Ljava/lang/String;", "getId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getSize", "getSizes", "()Ljava/util/List;", "getThumbId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getThumbIsLast", "getThumbSrc", "getTitle", "getUpdated", "getUploadByAdminsOnly", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IILcom/vk/dto/common/id/UserId;ILjava/lang/String;ILcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)Lcom/vk/sdk/api/photos/dto/PhotosPhotoAlbumFull;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoAlbumFull {
    @SerializedName("can_delete")
    @Nullable
    private final Boolean canDelete;
    @SerializedName("can_upload")
    @Nullable
    private final BaseBoolInt canUpload;
    @SerializedName("comments_disabled")
    @Nullable
    private final BaseBoolInt commentsDisabled;
    @SerializedName("created")
    private final int created;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35995id;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("size")
    private final int size;
    @SerializedName("sizes")
    @Nullable
    private final List<PhotosPhotoSizes> sizes;
    @SerializedName("thumb_id")
    @Nullable
    private final Integer thumbId;
    @SerializedName("thumb_is_last")
    @Nullable
    private final BaseBoolInt thumbIsLast;
    @SerializedName("thumb_src")
    @Nullable
    private final String thumbSrc;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("updated")
    private final int updated;
    @SerializedName("upload_by_admins_only")
    @Nullable
    private final BaseBoolInt uploadByAdminsOnly;

    public PhotosPhotoAlbumFull(int i9, int i10, @NotNull UserId ownerId, int i11, @NotNull String title, int i12, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable Boolean bool, @Nullable List<PhotosPhotoSizes> list, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt3, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        this.created = i9;
        this.f35995id = i10;
        this.ownerId = ownerId;
        this.size = i11;
        this.title = title;
        this.updated = i12;
        this.canUpload = baseBoolInt;
        this.commentsDisabled = baseBoolInt2;
        this.description = str;
        this.canDelete = bool;
        this.sizes = list;
        this.thumbId = num;
        this.thumbIsLast = baseBoolInt3;
        this.thumbSrc = str2;
        this.uploadByAdminsOnly = baseBoolInt4;
    }

    public final int component1() {
        return this.created;
    }

    @Nullable
    public final Boolean component10() {
        return this.canDelete;
    }

    @Nullable
    public final List<PhotosPhotoSizes> component11() {
        return this.sizes;
    }

    @Nullable
    public final Integer component12() {
        return this.thumbId;
    }

    @Nullable
    public final BaseBoolInt component13() {
        return this.thumbIsLast;
    }

    @Nullable
    public final String component14() {
        return this.thumbSrc;
    }

    @Nullable
    public final BaseBoolInt component15() {
        return this.uploadByAdminsOnly;
    }

    public final int component2() {
        return this.f35995id;
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
    public final BaseBoolInt component7() {
        return this.canUpload;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.commentsDisabled;
    }

    @Nullable
    public final String component9() {
        return this.description;
    }

    @NotNull
    public final PhotosPhotoAlbumFull copy(int i9, int i10, @NotNull UserId ownerId, int i11, @NotNull String title, int i12, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable Boolean bool, @Nullable List<PhotosPhotoSizes> list, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt3, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        return new PhotosPhotoAlbumFull(i9, i10, ownerId, i11, title, i12, baseBoolInt, baseBoolInt2, str, bool, list, num, baseBoolInt3, str2, baseBoolInt4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoAlbumFull) {
            PhotosPhotoAlbumFull photosPhotoAlbumFull = (PhotosPhotoAlbumFull) obj;
            return this.created == photosPhotoAlbumFull.created && this.f35995id == photosPhotoAlbumFull.f35995id && Intrinsics.areEqual(this.ownerId, photosPhotoAlbumFull.ownerId) && this.size == photosPhotoAlbumFull.size && Intrinsics.areEqual(this.title, photosPhotoAlbumFull.title) && this.updated == photosPhotoAlbumFull.updated && this.canUpload == photosPhotoAlbumFull.canUpload && this.commentsDisabled == photosPhotoAlbumFull.commentsDisabled && Intrinsics.areEqual(this.description, photosPhotoAlbumFull.description) && Intrinsics.areEqual(this.canDelete, photosPhotoAlbumFull.canDelete) && Intrinsics.areEqual(this.sizes, photosPhotoAlbumFull.sizes) && Intrinsics.areEqual(this.thumbId, photosPhotoAlbumFull.thumbId) && this.thumbIsLast == photosPhotoAlbumFull.thumbIsLast && Intrinsics.areEqual(this.thumbSrc, photosPhotoAlbumFull.thumbSrc) && this.uploadByAdminsOnly == photosPhotoAlbumFull.uploadByAdminsOnly;
        }
        return false;
    }

    @Nullable
    public final Boolean getCanDelete() {
        return this.canDelete;
    }

    @Nullable
    public final BaseBoolInt getCanUpload() {
        return this.canUpload;
    }

    @Nullable
    public final BaseBoolInt getCommentsDisabled() {
        return this.commentsDisabled;
    }

    public final int getCreated() {
        return this.created;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    public final int getId() {
        return this.f35995id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    public final int getSize() {
        return this.size;
    }

    @Nullable
    public final List<PhotosPhotoSizes> getSizes() {
        return this.sizes;
    }

    @Nullable
    public final Integer getThumbId() {
        return this.thumbId;
    }

    @Nullable
    public final BaseBoolInt getThumbIsLast() {
        return this.thumbIsLast;
    }

    @Nullable
    public final String getThumbSrc() {
        return this.thumbSrc;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getUpdated() {
        return this.updated;
    }

    @Nullable
    public final BaseBoolInt getUploadByAdminsOnly() {
        return this.uploadByAdminsOnly;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.created * 31) + this.f35995id) * 31) + this.ownerId.hashCode()) * 31) + this.size) * 31) + this.title.hashCode()) * 31) + this.updated) * 31;
        BaseBoolInt baseBoolInt = this.canUpload;
        int hashCode2 = (hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.commentsDisabled;
        int hashCode3 = (hashCode2 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        String str = this.description;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.canDelete;
        int hashCode5 = (hashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<PhotosPhotoSizes> list = this.sizes;
        int hashCode6 = (hashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.thumbId;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt3 = this.thumbIsLast;
        int hashCode8 = (hashCode7 + (baseBoolInt3 == null ? 0 : baseBoolInt3.hashCode())) * 31;
        String str2 = this.thumbSrc;
        int hashCode9 = (hashCode8 + (str2 == null ? 0 : str2.hashCode())) * 31;
        BaseBoolInt baseBoolInt4 = this.uploadByAdminsOnly;
        return hashCode9 + (baseBoolInt4 != null ? baseBoolInt4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.created;
        int i10 = this.f35995id;
        UserId userId = this.ownerId;
        int i11 = this.size;
        String str = this.title;
        int i12 = this.updated;
        BaseBoolInt baseBoolInt = this.canUpload;
        BaseBoolInt baseBoolInt2 = this.commentsDisabled;
        String str2 = this.description;
        Boolean bool = this.canDelete;
        List<PhotosPhotoSizes> list = this.sizes;
        Integer num = this.thumbId;
        BaseBoolInt baseBoolInt3 = this.thumbIsLast;
        String str3 = this.thumbSrc;
        BaseBoolInt baseBoolInt4 = this.uploadByAdminsOnly;
        return "PhotosPhotoAlbumFull(created=" + i9 + ", id=" + i10 + ", ownerId=" + userId + ", size=" + i11 + ", title=" + str + ", updated=" + i12 + ", canUpload=" + baseBoolInt + ", commentsDisabled=" + baseBoolInt2 + ", description=" + str2 + ", canDelete=" + bool + ", sizes=" + list + ", thumbId=" + num + ", thumbIsLast=" + baseBoolInt3 + ", thumbSrc=" + str3 + ", uploadByAdminsOnly=" + baseBoolInt4 + ")";
    }

    public /* synthetic */ PhotosPhotoAlbumFull(int i9, int i10, UserId userId, int i11, String str, int i12, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, String str2, Boolean bool, List list, Integer num, BaseBoolInt baseBoolInt3, String str3, BaseBoolInt baseBoolInt4, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, userId, i11, str, i12, (i13 & 64) != 0 ? null : baseBoolInt, (i13 & 128) != 0 ? null : baseBoolInt2, (i13 & 256) != 0 ? null : str2, (i13 & 512) != 0 ? null : bool, (i13 & 1024) != 0 ? null : list, (i13 & 2048) != 0 ? null : num, (i13 & 4096) != 0 ? null : baseBoolInt3, (i13 & 8192) != 0 ? null : str3, (i13 & 16384) != 0 ? null : baseBoolInt4);
    }
}

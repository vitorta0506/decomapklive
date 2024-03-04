package com.vk.sdk.api.photos.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J?\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoUpload;", "", "albumId", "", "uploadUrl", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "fallbackUploadUrl", "groupId", "(ILjava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)V", "getAlbumId", "()I", "getFallbackUploadUrl", "()Ljava/lang/String;", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getUploadUrl", "getUserId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoUpload {
    @SerializedName("album_id")
    private final int albumId;
    @SerializedName("fallback_upload_url")
    @Nullable
    private final String fallbackUploadUrl;
    @SerializedName("group_id")
    @Nullable
    private final UserId groupId;
    @SerializedName("upload_url")
    @NotNull
    private final String uploadUrl;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public PhotosPhotoUpload(int i9, @NotNull String uploadUrl, @NotNull UserId userId, @Nullable String str, @Nullable UserId userId2) {
        Intrinsics.checkNotNullParameter(uploadUrl, "uploadUrl");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.albumId = i9;
        this.uploadUrl = uploadUrl;
        this.userId = userId;
        this.fallbackUploadUrl = str;
        this.groupId = userId2;
    }

    public static /* synthetic */ PhotosPhotoUpload copy$default(PhotosPhotoUpload photosPhotoUpload, int i9, String str, UserId userId, String str2, UserId userId2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = photosPhotoUpload.albumId;
        }
        if ((i10 & 2) != 0) {
            str = photosPhotoUpload.uploadUrl;
        }
        String str3 = str;
        if ((i10 & 4) != 0) {
            userId = photosPhotoUpload.userId;
        }
        UserId userId3 = userId;
        if ((i10 & 8) != 0) {
            str2 = photosPhotoUpload.fallbackUploadUrl;
        }
        String str4 = str2;
        if ((i10 & 16) != 0) {
            userId2 = photosPhotoUpload.groupId;
        }
        return photosPhotoUpload.copy(i9, str3, userId3, str4, userId2);
    }

    public final int component1() {
        return this.albumId;
    }

    @NotNull
    public final String component2() {
        return this.uploadUrl;
    }

    @NotNull
    public final UserId component3() {
        return this.userId;
    }

    @Nullable
    public final String component4() {
        return this.fallbackUploadUrl;
    }

    @Nullable
    public final UserId component5() {
        return this.groupId;
    }

    @NotNull
    public final PhotosPhotoUpload copy(int i9, @NotNull String uploadUrl, @NotNull UserId userId, @Nullable String str, @Nullable UserId userId2) {
        Intrinsics.checkNotNullParameter(uploadUrl, "uploadUrl");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new PhotosPhotoUpload(i9, uploadUrl, userId, str, userId2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoUpload) {
            PhotosPhotoUpload photosPhotoUpload = (PhotosPhotoUpload) obj;
            return this.albumId == photosPhotoUpload.albumId && Intrinsics.areEqual(this.uploadUrl, photosPhotoUpload.uploadUrl) && Intrinsics.areEqual(this.userId, photosPhotoUpload.userId) && Intrinsics.areEqual(this.fallbackUploadUrl, photosPhotoUpload.fallbackUploadUrl) && Intrinsics.areEqual(this.groupId, photosPhotoUpload.groupId);
        }
        return false;
    }

    public final int getAlbumId() {
        return this.albumId;
    }

    @Nullable
    public final String getFallbackUploadUrl() {
        return this.fallbackUploadUrl;
    }

    @Nullable
    public final UserId getGroupId() {
        return this.groupId;
    }

    @NotNull
    public final String getUploadUrl() {
        return this.uploadUrl;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((((this.albumId * 31) + this.uploadUrl.hashCode()) * 31) + this.userId.hashCode()) * 31;
        String str = this.fallbackUploadUrl;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        UserId userId = this.groupId;
        return hashCode2 + (userId != null ? userId.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.albumId;
        String str = this.uploadUrl;
        UserId userId = this.userId;
        String str2 = this.fallbackUploadUrl;
        UserId userId2 = this.groupId;
        return "PhotosPhotoUpload(albumId=" + i9 + ", uploadUrl=" + str + ", userId=" + userId + ", fallbackUploadUrl=" + str2 + ", groupId=" + userId2 + ")";
    }

    public /* synthetic */ PhotosPhotoUpload(int i9, String str, UserId userId, String str2, UserId userId2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, userId, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? null : userId2);
    }
}

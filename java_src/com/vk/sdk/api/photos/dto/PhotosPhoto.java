package com.vk.sdk.api.photos.dto;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b9\b\u0086\b\u0018\u00002\u00020\u0001BÕ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001dJ\t\u0010:\u001a\u00020\u0003HÆ\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u0010.J\u000b\u0010<\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010(J\u0011\u0010@\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000eHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010(J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\t\u0010F\u001a\u00020\u0007HÆ\u0003J\t\u0010G\u001a\u00020\tHÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010(J\u0011\u0010J\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003J\u0010\u0010K\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u0010.Jè\u0001\u0010L\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000e2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010MJ\u0013\u0010N\u001a\u00020\t2\b\u0010O\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010P\u001a\u00020\u0003HÖ\u0001J\t\u0010Q\u001a\u00020\u000bHÖ\u0001R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010!R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010!R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010/\u001a\u0004\b-\u0010.R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010/\u001a\u0004\b0\u0010.R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001fR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001fR\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b5\u0010(R\u001e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010,R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\u001fR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00102R\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b9\u0010(¨\u0006R"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "", "albumId", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "hasTags", "", "accessKey", "", "height", "images", "", "Lcom/vk/sdk/api/photos/dto/PhotosImage;", "lat", "", "long", "photo256", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", BaseConfig.DB_TYPE_PLACE_NAME, ShareConstants.RESULT_POST_ID, "sizes", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", ViewHierarchyConstants.TEXT_KEY, Contants.USER_ID, "width", "(IIILcom/vk/dto/common/id/UserId;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbumId", "()I", "getCanComment", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getDate", "getHasTags", "()Z", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getImages", "()Ljava/util/List;", "getLat", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLong", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto256", "getPlace", "getPostId", "getSizes", "getText", "getUserId", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhoto {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("album_id")
    private final int albumId;
    @SerializedName("can_comment")
    @Nullable
    private final BaseBoolInt canComment;
    @SerializedName("date")
    private final int date;
    @SerializedName("has_tags")
    private final boolean hasTags;
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35993id;
    @SerializedName("images")
    @Nullable
    private final List<PhotosImage> images;
    @SerializedName("lat")
    @Nullable
    private final Float lat;
    @SerializedName("long")
    @Nullable

    /* renamed from: long  reason: not valid java name */
    private final Float f4long;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("photo_256")
    @Nullable
    private final String photo256;
    @SerializedName(BaseConfig.DB_TYPE_PLACE_NAME)
    @Nullable
    private final String place;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("sizes")
    @Nullable
    private final List<PhotosPhotoSizes> sizes;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    public PhotosPhoto(int i9, int i10, int i11, @NotNull UserId ownerId, boolean z10, @Nullable String str, @Nullable Integer num, @Nullable List<PhotosImage> list, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt, @Nullable String str3, @Nullable Integer num2, @Nullable List<PhotosPhotoSizes> list2, @Nullable String str4, @Nullable UserId userId, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.albumId = i9;
        this.date = i10;
        this.f35993id = i11;
        this.ownerId = ownerId;
        this.hasTags = z10;
        this.accessKey = str;
        this.height = num;
        this.images = list;
        this.lat = f10;
        this.f4long = f11;
        this.photo256 = str2;
        this.canComment = baseBoolInt;
        this.place = str3;
        this.postId = num2;
        this.sizes = list2;
        this.text = str4;
        this.userId = userId;
        this.width = num3;
    }

    public final int component1() {
        return this.albumId;
    }

    @Nullable
    public final Float component10() {
        return this.f4long;
    }

    @Nullable
    public final String component11() {
        return this.photo256;
    }

    @Nullable
    public final BaseBoolInt component12() {
        return this.canComment;
    }

    @Nullable
    public final String component13() {
        return this.place;
    }

    @Nullable
    public final Integer component14() {
        return this.postId;
    }

    @Nullable
    public final List<PhotosPhotoSizes> component15() {
        return this.sizes;
    }

    @Nullable
    public final String component16() {
        return this.text;
    }

    @Nullable
    public final UserId component17() {
        return this.userId;
    }

    @Nullable
    public final Integer component18() {
        return this.width;
    }

    public final int component2() {
        return this.date;
    }

    public final int component3() {
        return this.f35993id;
    }

    @NotNull
    public final UserId component4() {
        return this.ownerId;
    }

    public final boolean component5() {
        return this.hasTags;
    }

    @Nullable
    public final String component6() {
        return this.accessKey;
    }

    @Nullable
    public final Integer component7() {
        return this.height;
    }

    @Nullable
    public final List<PhotosImage> component8() {
        return this.images;
    }

    @Nullable
    public final Float component9() {
        return this.lat;
    }

    @NotNull
    public final PhotosPhoto copy(int i9, int i10, int i11, @NotNull UserId ownerId, boolean z10, @Nullable String str, @Nullable Integer num, @Nullable List<PhotosImage> list, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt, @Nullable String str3, @Nullable Integer num2, @Nullable List<PhotosPhotoSizes> list2, @Nullable String str4, @Nullable UserId userId, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        return new PhotosPhoto(i9, i10, i11, ownerId, z10, str, num, list, f10, f11, str2, baseBoolInt, str3, num2, list2, str4, userId, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhoto) {
            PhotosPhoto photosPhoto = (PhotosPhoto) obj;
            return this.albumId == photosPhoto.albumId && this.date == photosPhoto.date && this.f35993id == photosPhoto.f35993id && Intrinsics.areEqual(this.ownerId, photosPhoto.ownerId) && this.hasTags == photosPhoto.hasTags && Intrinsics.areEqual(this.accessKey, photosPhoto.accessKey) && Intrinsics.areEqual(this.height, photosPhoto.height) && Intrinsics.areEqual(this.images, photosPhoto.images) && Intrinsics.areEqual((Object) this.lat, (Object) photosPhoto.lat) && Intrinsics.areEqual((Object) this.f4long, (Object) photosPhoto.f4long) && Intrinsics.areEqual(this.photo256, photosPhoto.photo256) && this.canComment == photosPhoto.canComment && Intrinsics.areEqual(this.place, photosPhoto.place) && Intrinsics.areEqual(this.postId, photosPhoto.postId) && Intrinsics.areEqual(this.sizes, photosPhoto.sizes) && Intrinsics.areEqual(this.text, photosPhoto.text) && Intrinsics.areEqual(this.userId, photosPhoto.userId) && Intrinsics.areEqual(this.width, photosPhoto.width);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    public final int getAlbumId() {
        return this.albumId;
    }

    @Nullable
    public final BaseBoolInt getCanComment() {
        return this.canComment;
    }

    public final int getDate() {
        return this.date;
    }

    public final boolean getHasTags() {
        return this.hasTags;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    public final int getId() {
        return this.f35993id;
    }

    @Nullable
    public final List<PhotosImage> getImages() {
        return this.images;
    }

    @Nullable
    public final Float getLat() {
        return this.lat;
    }

    @Nullable
    public final Float getLong() {
        return this.f4long;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getPhoto256() {
        return this.photo256;
    }

    @Nullable
    public final String getPlace() {
        return this.place;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final List<PhotosPhotoSizes> getSizes() {
        return this.sizes;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final UserId getUserId() {
        return this.userId;
    }

    @Nullable
    public final Integer getWidth() {
        return this.width;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((this.albumId * 31) + this.date) * 31) + this.f35993id) * 31) + this.ownerId.hashCode()) * 31;
        boolean z10 = this.hasTags;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode + i9) * 31;
        String str = this.accessKey;
        int hashCode2 = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.height;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        List<PhotosImage> list = this.images;
        int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        Float f10 = this.lat;
        int hashCode5 = (hashCode4 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.f4long;
        int hashCode6 = (hashCode5 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str2 = this.photo256;
        int hashCode7 = (hashCode6 + (str2 == null ? 0 : str2.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode8 = (hashCode7 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        String str3 = this.place;
        int hashCode9 = (hashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num2 = this.postId;
        int hashCode10 = (hashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<PhotosPhotoSizes> list2 = this.sizes;
        int hashCode11 = (hashCode10 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str4 = this.text;
        int hashCode12 = (hashCode11 + (str4 == null ? 0 : str4.hashCode())) * 31;
        UserId userId = this.userId;
        int hashCode13 = (hashCode12 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num3 = this.width;
        return hashCode13 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.albumId;
        int i10 = this.date;
        int i11 = this.f35993id;
        UserId userId = this.ownerId;
        boolean z10 = this.hasTags;
        String str = this.accessKey;
        Integer num = this.height;
        List<PhotosImage> list = this.images;
        Float f10 = this.lat;
        Float f11 = this.f4long;
        String str2 = this.photo256;
        BaseBoolInt baseBoolInt = this.canComment;
        String str3 = this.place;
        Integer num2 = this.postId;
        List<PhotosPhotoSizes> list2 = this.sizes;
        String str4 = this.text;
        UserId userId2 = this.userId;
        Integer num3 = this.width;
        return "PhotosPhoto(albumId=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", hasTags=" + z10 + ", accessKey=" + str + ", height=" + num + ", images=" + list + ", lat=" + f10 + ", long=" + f11 + ", photo256=" + str2 + ", canComment=" + baseBoolInt + ", place=" + str3 + ", postId=" + num2 + ", sizes=" + list2 + ", text=" + str4 + ", userId=" + userId2 + ", width=" + num3 + ")";
    }

    public /* synthetic */ PhotosPhoto(int i9, int i10, int i11, UserId userId, boolean z10, String str, Integer num, List list, Float f10, Float f11, String str2, BaseBoolInt baseBoolInt, String str3, Integer num2, List list2, String str4, UserId userId2, Integer num3, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, z10, (i12 & 32) != 0 ? null : str, (i12 & 64) != 0 ? null : num, (i12 & 128) != 0 ? null : list, (i12 & 256) != 0 ? null : f10, (i12 & 512) != 0 ? null : f11, (i12 & 1024) != 0 ? null : str2, (i12 & 2048) != 0 ? null : baseBoolInt, (i12 & 4096) != 0 ? null : str3, (i12 & 8192) != 0 ? null : num2, (i12 & 16384) != 0 ? null : list2, (32768 & i12) != 0 ? null : str4, (65536 & i12) != 0 ? null : userId2, (i12 & 131072) != 0 ? null : num3);
    }
}

package com.vk.sdk.api.newsfeed.dto;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikes;
import com.vk.sdk.api.base.dto.BaseObjectCount;
import com.vk.sdk.api.photos.dto.PhotosImage;
import com.vk.sdk.api.photos.dto.PhotosPhotoSizes;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\bA\b\u0086\b\u0018\u00002\u00020\u0001Bù\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\"J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\u0010\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0011\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014HÆ\u0003J\u0010\u0010G\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u00106J\u0010\u0010H\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u00106J\u000b\u0010I\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u0010\u0010L\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0011\u0010M\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u0014HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\t\u0010R\u001a\u00020\u0003HÆ\u0003J\t\u0010S\u001a\u00020\u0007HÆ\u0003J\t\u0010T\u001a\u00020\tHÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u008c\u0002\u0010Y\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u00142\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010ZJ\u0013\u0010[\u001a\u00020\t2\b\u0010\\\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010]\u001a\u00020\u0003HÖ\u0001J\t\u0010^\u001a\u00020\u0011HÖ\u0001R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010&R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\b/\u00100R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010&R\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00107\u001a\u0004\b5\u00106R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00107\u001a\u0004\b:\u00106R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010$R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010$R\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\b?\u00100R\u001e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u00104R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010$R\u0018\u0010 \u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010<R\u001a\u0010!\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bC\u00100¨\u0006_"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedPhoto;", "", "albumId", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "hasTags", "", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikes;", "comments", "Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "canRepost", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "accessKey", "", "height", "images", "", "Lcom/vk/sdk/api/photos/dto/PhotosImage;", "lat", "", "long", "photo256", "canComment", BaseConfig.DB_TYPE_PLACE_NAME, ShareConstants.RESULT_POST_ID, "sizes", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", ViewHierarchyConstants.TEXT_KEY, Contants.USER_ID, "width", "(IIILcom/vk/dto/common/id/UserId;ZLcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbumId", "()I", "getCanComment", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCanRepost", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "getDate", "getHasTags", "()Z", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getImages", "()Ljava/util/List;", "getLat", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikes;", "getLong", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto256", "getPlace", "getPostId", "getSizes", "getText", "getUserId", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;ZLcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedPhoto;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedNewsfeedPhoto {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("album_id")
    private final int albumId;
    @SerializedName("can_comment")
    @Nullable
    private final BaseBoolInt canComment;
    @SerializedName("can_repost")
    @Nullable
    private final BaseBoolInt canRepost;
    @SerializedName("comments")
    @Nullable
    private final BaseObjectCount comments;
    @SerializedName("date")
    private final int date;
    @SerializedName("has_tags")
    private final boolean hasTags;
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35956id;
    @SerializedName("images")
    @Nullable
    private final List<PhotosImage> images;
    @SerializedName("lat")
    @Nullable
    private final Float lat;
    @SerializedName("likes")
    @Nullable
    private final BaseLikes likes;
    @SerializedName("long")
    @Nullable

    /* renamed from: long  reason: not valid java name */
    private final Float f3long;
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

    public NewsfeedNewsfeedPhoto(int i9, int i10, int i11, @NotNull UserId ownerId, boolean z10, @Nullable BaseLikes baseLikes, @Nullable BaseObjectCount baseObjectCount, @Nullable BaseBoolInt baseBoolInt, @Nullable String str, @Nullable Integer num, @Nullable List<PhotosImage> list, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str3, @Nullable Integer num2, @Nullable List<PhotosPhotoSizes> list2, @Nullable String str4, @Nullable UserId userId, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.albumId = i9;
        this.date = i10;
        this.f35956id = i11;
        this.ownerId = ownerId;
        this.hasTags = z10;
        this.likes = baseLikes;
        this.comments = baseObjectCount;
        this.canRepost = baseBoolInt;
        this.accessKey = str;
        this.height = num;
        this.images = list;
        this.lat = f10;
        this.f3long = f11;
        this.photo256 = str2;
        this.canComment = baseBoolInt2;
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
    public final Integer component10() {
        return this.height;
    }

    @Nullable
    public final List<PhotosImage> component11() {
        return this.images;
    }

    @Nullable
    public final Float component12() {
        return this.lat;
    }

    @Nullable
    public final Float component13() {
        return this.f3long;
    }

    @Nullable
    public final String component14() {
        return this.photo256;
    }

    @Nullable
    public final BaseBoolInt component15() {
        return this.canComment;
    }

    @Nullable
    public final String component16() {
        return this.place;
    }

    @Nullable
    public final Integer component17() {
        return this.postId;
    }

    @Nullable
    public final List<PhotosPhotoSizes> component18() {
        return this.sizes;
    }

    @Nullable
    public final String component19() {
        return this.text;
    }

    public final int component2() {
        return this.date;
    }

    @Nullable
    public final UserId component20() {
        return this.userId;
    }

    @Nullable
    public final Integer component21() {
        return this.width;
    }

    public final int component3() {
        return this.f35956id;
    }

    @NotNull
    public final UserId component4() {
        return this.ownerId;
    }

    public final boolean component5() {
        return this.hasTags;
    }

    @Nullable
    public final BaseLikes component6() {
        return this.likes;
    }

    @Nullable
    public final BaseObjectCount component7() {
        return this.comments;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.canRepost;
    }

    @Nullable
    public final String component9() {
        return this.accessKey;
    }

    @NotNull
    public final NewsfeedNewsfeedPhoto copy(int i9, int i10, int i11, @NotNull UserId ownerId, boolean z10, @Nullable BaseLikes baseLikes, @Nullable BaseObjectCount baseObjectCount, @Nullable BaseBoolInt baseBoolInt, @Nullable String str, @Nullable Integer num, @Nullable List<PhotosImage> list, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str3, @Nullable Integer num2, @Nullable List<PhotosPhotoSizes> list2, @Nullable String str4, @Nullable UserId userId, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        return new NewsfeedNewsfeedPhoto(i9, i10, i11, ownerId, z10, baseLikes, baseObjectCount, baseBoolInt, str, num, list, f10, f11, str2, baseBoolInt2, str3, num2, list2, str4, userId, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedNewsfeedPhoto) {
            NewsfeedNewsfeedPhoto newsfeedNewsfeedPhoto = (NewsfeedNewsfeedPhoto) obj;
            return this.albumId == newsfeedNewsfeedPhoto.albumId && this.date == newsfeedNewsfeedPhoto.date && this.f35956id == newsfeedNewsfeedPhoto.f35956id && Intrinsics.areEqual(this.ownerId, newsfeedNewsfeedPhoto.ownerId) && this.hasTags == newsfeedNewsfeedPhoto.hasTags && Intrinsics.areEqual(this.likes, newsfeedNewsfeedPhoto.likes) && Intrinsics.areEqual(this.comments, newsfeedNewsfeedPhoto.comments) && this.canRepost == newsfeedNewsfeedPhoto.canRepost && Intrinsics.areEqual(this.accessKey, newsfeedNewsfeedPhoto.accessKey) && Intrinsics.areEqual(this.height, newsfeedNewsfeedPhoto.height) && Intrinsics.areEqual(this.images, newsfeedNewsfeedPhoto.images) && Intrinsics.areEqual((Object) this.lat, (Object) newsfeedNewsfeedPhoto.lat) && Intrinsics.areEqual((Object) this.f3long, (Object) newsfeedNewsfeedPhoto.f3long) && Intrinsics.areEqual(this.photo256, newsfeedNewsfeedPhoto.photo256) && this.canComment == newsfeedNewsfeedPhoto.canComment && Intrinsics.areEqual(this.place, newsfeedNewsfeedPhoto.place) && Intrinsics.areEqual(this.postId, newsfeedNewsfeedPhoto.postId) && Intrinsics.areEqual(this.sizes, newsfeedNewsfeedPhoto.sizes) && Intrinsics.areEqual(this.text, newsfeedNewsfeedPhoto.text) && Intrinsics.areEqual(this.userId, newsfeedNewsfeedPhoto.userId) && Intrinsics.areEqual(this.width, newsfeedNewsfeedPhoto.width);
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

    @Nullable
    public final BaseBoolInt getCanRepost() {
        return this.canRepost;
    }

    @Nullable
    public final BaseObjectCount getComments() {
        return this.comments;
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
        return this.f35956id;
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
    public final BaseLikes getLikes() {
        return this.likes;
    }

    @Nullable
    public final Float getLong() {
        return this.f3long;
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
        int hashCode = ((((((this.albumId * 31) + this.date) * 31) + this.f35956id) * 31) + this.ownerId.hashCode()) * 31;
        boolean z10 = this.hasTags;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode + i9) * 31;
        BaseLikes baseLikes = this.likes;
        int hashCode2 = (i10 + (baseLikes == null ? 0 : baseLikes.hashCode())) * 31;
        BaseObjectCount baseObjectCount = this.comments;
        int hashCode3 = (hashCode2 + (baseObjectCount == null ? 0 : baseObjectCount.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canRepost;
        int hashCode4 = (hashCode3 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        String str = this.accessKey;
        int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.height;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        List<PhotosImage> list = this.images;
        int hashCode7 = (hashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        Float f10 = this.lat;
        int hashCode8 = (hashCode7 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.f3long;
        int hashCode9 = (hashCode8 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str2 = this.photo256;
        int hashCode10 = (hashCode9 + (str2 == null ? 0 : str2.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.canComment;
        int hashCode11 = (hashCode10 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        String str3 = this.place;
        int hashCode12 = (hashCode11 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num2 = this.postId;
        int hashCode13 = (hashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        List<PhotosPhotoSizes> list2 = this.sizes;
        int hashCode14 = (hashCode13 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str4 = this.text;
        int hashCode15 = (hashCode14 + (str4 == null ? 0 : str4.hashCode())) * 31;
        UserId userId = this.userId;
        int hashCode16 = (hashCode15 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num3 = this.width;
        return hashCode16 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.albumId;
        int i10 = this.date;
        int i11 = this.f35956id;
        UserId userId = this.ownerId;
        boolean z10 = this.hasTags;
        BaseLikes baseLikes = this.likes;
        BaseObjectCount baseObjectCount = this.comments;
        BaseBoolInt baseBoolInt = this.canRepost;
        String str = this.accessKey;
        Integer num = this.height;
        List<PhotosImage> list = this.images;
        Float f10 = this.lat;
        Float f11 = this.f3long;
        String str2 = this.photo256;
        BaseBoolInt baseBoolInt2 = this.canComment;
        String str3 = this.place;
        Integer num2 = this.postId;
        List<PhotosPhotoSizes> list2 = this.sizes;
        String str4 = this.text;
        UserId userId2 = this.userId;
        Integer num3 = this.width;
        return "NewsfeedNewsfeedPhoto(albumId=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", hasTags=" + z10 + ", likes=" + baseLikes + ", comments=" + baseObjectCount + ", canRepost=" + baseBoolInt + ", accessKey=" + str + ", height=" + num + ", images=" + list + ", lat=" + f10 + ", long=" + f11 + ", photo256=" + str2 + ", canComment=" + baseBoolInt2 + ", place=" + str3 + ", postId=" + num2 + ", sizes=" + list2 + ", text=" + str4 + ", userId=" + userId2 + ", width=" + num3 + ")";
    }

    public /* synthetic */ NewsfeedNewsfeedPhoto(int i9, int i10, int i11, UserId userId, boolean z10, BaseLikes baseLikes, BaseObjectCount baseObjectCount, BaseBoolInt baseBoolInt, String str, Integer num, List list, Float f10, Float f11, String str2, BaseBoolInt baseBoolInt2, String str3, Integer num2, List list2, String str4, UserId userId2, Integer num3, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, z10, (i12 & 32) != 0 ? null : baseLikes, (i12 & 64) != 0 ? null : baseObjectCount, (i12 & 128) != 0 ? null : baseBoolInt, (i12 & 256) != 0 ? null : str, (i12 & 512) != 0 ? null : num, (i12 & 1024) != 0 ? null : list, (i12 & 2048) != 0 ? null : f10, (i12 & 4096) != 0 ? null : f11, (i12 & 8192) != 0 ? null : str2, (i12 & 16384) != 0 ? null : baseBoolInt2, (32768 & i12) != 0 ? null : str3, (65536 & i12) != 0 ? null : num2, (131072 & i12) != 0 ? null : list2, (262144 & i12) != 0 ? null : str4, (524288 & i12) != 0 ? null : userId2, (i12 & 1048576) != 0 ? null : num3);
    }
}

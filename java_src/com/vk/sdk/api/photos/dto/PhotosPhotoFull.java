package com.vk.sdk.api.photos.dto;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikes;
import com.vk.sdk.api.base.dto.BaseObjectCount;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b:\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BÓ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001eJ\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u0010/J\u0010\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010C\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\t\u0010G\u001a\u00020\u0003HÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\u0007HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010L\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0011\u0010M\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eHÆ\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u0010/Jä\u0001\u0010O\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010PJ\u0013\u0010Q\u001a\u00020R2\b\u0010S\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010T\u001a\u00020\u0003HÖ\u0001J\t\u0010U\u001a\u00020\tHÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\"R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b(\u0010)R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\"R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00100\u001a\u0004\b.\u0010/R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00100\u001a\u0004\b3\u0010/R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b6\u0010)R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010&R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010 R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u00105R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b<\u0010)¨\u0006V"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoFull;", "", "albumId", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "accessKey", "", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "height", "images", "", "Lcom/vk/sdk/api/photos/dto/PhotosImage;", "lat", "", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikes;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "comments", "Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "long", ShareConstants.RESULT_POST_ID, "tags", ViewHierarchyConstants.TEXT_KEY, Contants.USER_ID, "width", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Float;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/Float;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbumId", "()I", "getCanComment", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "getDate", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getImages", "()Ljava/util/List;", "getLat", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikes;", "getLong", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPostId", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getTags", "getText", "getUserId", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Float;Lcom/vk/sdk/api/base/dto/BaseLikes;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/Float;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosPhotoFull;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoFull {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("album_id")
    private final int albumId;
    @SerializedName("can_comment")
    @Nullable
    private final BaseBoolInt canComment;
    @SerializedName("comments")
    @Nullable
    private final BaseObjectCount comments;
    @SerializedName("date")
    private final int date;
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35996id;
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
    private final Float f5long;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("reposts")
    @Nullable
    private final BaseRepostsInfo reposts;
    @SerializedName("tags")
    @Nullable
    private final BaseObjectCount tags;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    public PhotosPhotoFull(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable List<PhotosImage> list, @Nullable Float f10, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable BaseObjectCount baseObjectCount, @Nullable Float f11, @Nullable Integer num2, @Nullable BaseObjectCount baseObjectCount2, @Nullable String str2, @Nullable UserId userId, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.albumId = i9;
        this.date = i10;
        this.f35996id = i11;
        this.ownerId = ownerId;
        this.accessKey = str;
        this.canComment = baseBoolInt;
        this.height = num;
        this.images = list;
        this.lat = f10;
        this.likes = baseLikes;
        this.reposts = baseRepostsInfo;
        this.comments = baseObjectCount;
        this.f5long = f11;
        this.postId = num2;
        this.tags = baseObjectCount2;
        this.text = str2;
        this.userId = userId;
        this.width = num3;
    }

    public final int component1() {
        return this.albumId;
    }

    @Nullable
    public final BaseLikes component10() {
        return this.likes;
    }

    @Nullable
    public final BaseRepostsInfo component11() {
        return this.reposts;
    }

    @Nullable
    public final BaseObjectCount component12() {
        return this.comments;
    }

    @Nullable
    public final Float component13() {
        return this.f5long;
    }

    @Nullable
    public final Integer component14() {
        return this.postId;
    }

    @Nullable
    public final BaseObjectCount component15() {
        return this.tags;
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
        return this.f35996id;
    }

    @NotNull
    public final UserId component4() {
        return this.ownerId;
    }

    @Nullable
    public final String component5() {
        return this.accessKey;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.canComment;
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
    public final PhotosPhotoFull copy(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable List<PhotosImage> list, @Nullable Float f10, @Nullable BaseLikes baseLikes, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable BaseObjectCount baseObjectCount, @Nullable Float f11, @Nullable Integer num2, @Nullable BaseObjectCount baseObjectCount2, @Nullable String str2, @Nullable UserId userId, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        return new PhotosPhotoFull(i9, i10, i11, ownerId, str, baseBoolInt, num, list, f10, baseLikes, baseRepostsInfo, baseObjectCount, f11, num2, baseObjectCount2, str2, userId, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoFull) {
            PhotosPhotoFull photosPhotoFull = (PhotosPhotoFull) obj;
            return this.albumId == photosPhotoFull.albumId && this.date == photosPhotoFull.date && this.f35996id == photosPhotoFull.f35996id && Intrinsics.areEqual(this.ownerId, photosPhotoFull.ownerId) && Intrinsics.areEqual(this.accessKey, photosPhotoFull.accessKey) && this.canComment == photosPhotoFull.canComment && Intrinsics.areEqual(this.height, photosPhotoFull.height) && Intrinsics.areEqual(this.images, photosPhotoFull.images) && Intrinsics.areEqual((Object) this.lat, (Object) photosPhotoFull.lat) && Intrinsics.areEqual(this.likes, photosPhotoFull.likes) && Intrinsics.areEqual(this.reposts, photosPhotoFull.reposts) && Intrinsics.areEqual(this.comments, photosPhotoFull.comments) && Intrinsics.areEqual((Object) this.f5long, (Object) photosPhotoFull.f5long) && Intrinsics.areEqual(this.postId, photosPhotoFull.postId) && Intrinsics.areEqual(this.tags, photosPhotoFull.tags) && Intrinsics.areEqual(this.text, photosPhotoFull.text) && Intrinsics.areEqual(this.userId, photosPhotoFull.userId) && Intrinsics.areEqual(this.width, photosPhotoFull.width);
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
    public final BaseObjectCount getComments() {
        return this.comments;
    }

    public final int getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    public final int getId() {
        return this.f35996id;
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
        return this.f5long;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final BaseRepostsInfo getReposts() {
        return this.reposts;
    }

    @Nullable
    public final BaseObjectCount getTags() {
        return this.tags;
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

    public int hashCode() {
        int hashCode = ((((((this.albumId * 31) + this.date) * 31) + this.f35996id) * 31) + this.ownerId.hashCode()) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        Integer num = this.height;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        List<PhotosImage> list = this.images;
        int hashCode5 = (hashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        Float f10 = this.lat;
        int hashCode6 = (hashCode5 + (f10 == null ? 0 : f10.hashCode())) * 31;
        BaseLikes baseLikes = this.likes;
        int hashCode7 = (hashCode6 + (baseLikes == null ? 0 : baseLikes.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode8 = (hashCode7 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        BaseObjectCount baseObjectCount = this.comments;
        int hashCode9 = (hashCode8 + (baseObjectCount == null ? 0 : baseObjectCount.hashCode())) * 31;
        Float f11 = this.f5long;
        int hashCode10 = (hashCode9 + (f11 == null ? 0 : f11.hashCode())) * 31;
        Integer num2 = this.postId;
        int hashCode11 = (hashCode10 + (num2 == null ? 0 : num2.hashCode())) * 31;
        BaseObjectCount baseObjectCount2 = this.tags;
        int hashCode12 = (hashCode11 + (baseObjectCount2 == null ? 0 : baseObjectCount2.hashCode())) * 31;
        String str2 = this.text;
        int hashCode13 = (hashCode12 + (str2 == null ? 0 : str2.hashCode())) * 31;
        UserId userId = this.userId;
        int hashCode14 = (hashCode13 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num3 = this.width;
        return hashCode14 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.albumId;
        int i10 = this.date;
        int i11 = this.f35996id;
        UserId userId = this.ownerId;
        String str = this.accessKey;
        BaseBoolInt baseBoolInt = this.canComment;
        Integer num = this.height;
        List<PhotosImage> list = this.images;
        Float f10 = this.lat;
        BaseLikes baseLikes = this.likes;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        BaseObjectCount baseObjectCount = this.comments;
        Float f11 = this.f5long;
        Integer num2 = this.postId;
        BaseObjectCount baseObjectCount2 = this.tags;
        String str2 = this.text;
        UserId userId2 = this.userId;
        Integer num3 = this.width;
        return "PhotosPhotoFull(albumId=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", accessKey=" + str + ", canComment=" + baseBoolInt + ", height=" + num + ", images=" + list + ", lat=" + f10 + ", likes=" + baseLikes + ", reposts=" + baseRepostsInfo + ", comments=" + baseObjectCount + ", long=" + f11 + ", postId=" + num2 + ", tags=" + baseObjectCount2 + ", text=" + str2 + ", userId=" + userId2 + ", width=" + num3 + ")";
    }

    public /* synthetic */ PhotosPhotoFull(int i9, int i10, int i11, UserId userId, String str, BaseBoolInt baseBoolInt, Integer num, List list, Float f10, BaseLikes baseLikes, BaseRepostsInfo baseRepostsInfo, BaseObjectCount baseObjectCount, Float f11, Integer num2, BaseObjectCount baseObjectCount2, String str2, UserId userId2, Integer num3, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, (i12 & 16) != 0 ? null : str, (i12 & 32) != 0 ? null : baseBoolInt, (i12 & 64) != 0 ? null : num, (i12 & 128) != 0 ? null : list, (i12 & 256) != 0 ? null : f10, (i12 & 512) != 0 ? null : baseLikes, (i12 & 1024) != 0 ? null : baseRepostsInfo, (i12 & 2048) != 0 ? null : baseObjectCount, (i12 & 4096) != 0 ? null : f11, (i12 & 8192) != 0 ? null : num2, (i12 & 16384) != 0 ? null : baseObjectCount2, (32768 & i12) != 0 ? null : str2, (65536 & i12) != 0 ? null : userId2, (i12 & 131072) != 0 ? null : num3);
    }
}

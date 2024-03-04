package com.vk.sdk.api.photos.dto;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b=\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0083\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001eJ\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\u0010\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\u0011\u0010E\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017HÆ\u0003J\u0010\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\u0010\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010K\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\t\u0010L\u001a\u00020\u0003HÆ\u0003J\t\u0010M\u001a\u00020\u0007HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\u0010\u0010P\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010Q\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010R\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0094\u0002\u0010S\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010TJ\u0013\u0010U\u001a\u00020V2\b\u0010W\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010X\u001a\u00020\u0003HÖ\u0001J\t\u0010Y\u001a\u00020\tHÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\"R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b$\u0010%R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\"R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b(\u0010)R\u001a\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b+\u0010)R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010 R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010 R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010 R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010 R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010 R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010 R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b4\u0010%R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b5\u0010%R\u001e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b8\u0010%R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b9\u0010%R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010 R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010-R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b<\u0010%¨\u0006Z"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoXtrTagInfo;", "", "albumId", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "accessKey", "", "height", "lat", "", "long", "photo1280", "photo130", "photo2560", "photo604", "photo75", "photo807", "placerId", ShareConstants.RESULT_POST_ID, "sizes", "", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", "tagCreated", "tagId", ViewHierarchyConstants.TEXT_KEY, Contants.USER_ID, "width", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbumId", "()I", "getDate", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getLat", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLong", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto1280", "getPhoto130", "getPhoto2560", "getPhoto604", "getPhoto75", "getPhoto807", "getPlacerId", "getPostId", "getSizes", "()Ljava/util/List;", "getTagCreated", "getTagId", "getText", "getUserId", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosPhotoXtrTagInfo;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoXtrTagInfo {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("album_id")
    private final int albumId;
    @SerializedName("date")
    private final int date;
    @SerializedName("height")
    @Nullable
    private final Integer height;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36004id;
    @SerializedName("lat")
    @Nullable
    private final Float lat;
    @SerializedName("long")
    @Nullable

    /* renamed from: long  reason: not valid java name */
    private final Float f8long;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("photo_1280")
    @Nullable
    private final String photo1280;
    @SerializedName("photo_130")
    @Nullable
    private final String photo130;
    @SerializedName("photo_2560")
    @Nullable
    private final String photo2560;
    @SerializedName("photo_604")
    @Nullable
    private final String photo604;
    @SerializedName("photo_75")
    @Nullable
    private final String photo75;
    @SerializedName("photo_807")
    @Nullable
    private final String photo807;
    @SerializedName("placer_id")
    @Nullable
    private final Integer placerId;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("sizes")
    @Nullable
    private final List<PhotosPhotoSizes> sizes;
    @SerializedName("tag_created")
    @Nullable
    private final Integer tagCreated;
    @SerializedName(PushConstants.SUB_TAGS_STATUS_ID)
    @Nullable
    private final Integer tagId;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;
    @SerializedName("width")
    @Nullable
    private final Integer width;

    public PhotosPhotoXtrTagInfo(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<PhotosPhotoSizes> list, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str8, @Nullable UserId userId, @Nullable Integer num6) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.albumId = i9;
        this.date = i10;
        this.f36004id = i11;
        this.ownerId = ownerId;
        this.accessKey = str;
        this.height = num;
        this.lat = f10;
        this.f8long = f11;
        this.photo1280 = str2;
        this.photo130 = str3;
        this.photo2560 = str4;
        this.photo604 = str5;
        this.photo75 = str6;
        this.photo807 = str7;
        this.placerId = num2;
        this.postId = num3;
        this.sizes = list;
        this.tagCreated = num4;
        this.tagId = num5;
        this.text = str8;
        this.userId = userId;
        this.width = num6;
    }

    public final int component1() {
        return this.albumId;
    }

    @Nullable
    public final String component10() {
        return this.photo130;
    }

    @Nullable
    public final String component11() {
        return this.photo2560;
    }

    @Nullable
    public final String component12() {
        return this.photo604;
    }

    @Nullable
    public final String component13() {
        return this.photo75;
    }

    @Nullable
    public final String component14() {
        return this.photo807;
    }

    @Nullable
    public final Integer component15() {
        return this.placerId;
    }

    @Nullable
    public final Integer component16() {
        return this.postId;
    }

    @Nullable
    public final List<PhotosPhotoSizes> component17() {
        return this.sizes;
    }

    @Nullable
    public final Integer component18() {
        return this.tagCreated;
    }

    @Nullable
    public final Integer component19() {
        return this.tagId;
    }

    public final int component2() {
        return this.date;
    }

    @Nullable
    public final String component20() {
        return this.text;
    }

    @Nullable
    public final UserId component21() {
        return this.userId;
    }

    @Nullable
    public final Integer component22() {
        return this.width;
    }

    public final int component3() {
        return this.f36004id;
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
    public final Integer component6() {
        return this.height;
    }

    @Nullable
    public final Float component7() {
        return this.lat;
    }

    @Nullable
    public final Float component8() {
        return this.f8long;
    }

    @Nullable
    public final String component9() {
        return this.photo1280;
    }

    @NotNull
    public final PhotosPhotoXtrTagInfo copy(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable Integer num, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<PhotosPhotoSizes> list, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str8, @Nullable UserId userId, @Nullable Integer num6) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        return new PhotosPhotoXtrTagInfo(i9, i10, i11, ownerId, str, num, f10, f11, str2, str3, str4, str5, str6, str7, num2, num3, list, num4, num5, str8, userId, num6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoXtrTagInfo) {
            PhotosPhotoXtrTagInfo photosPhotoXtrTagInfo = (PhotosPhotoXtrTagInfo) obj;
            return this.albumId == photosPhotoXtrTagInfo.albumId && this.date == photosPhotoXtrTagInfo.date && this.f36004id == photosPhotoXtrTagInfo.f36004id && Intrinsics.areEqual(this.ownerId, photosPhotoXtrTagInfo.ownerId) && Intrinsics.areEqual(this.accessKey, photosPhotoXtrTagInfo.accessKey) && Intrinsics.areEqual(this.height, photosPhotoXtrTagInfo.height) && Intrinsics.areEqual((Object) this.lat, (Object) photosPhotoXtrTagInfo.lat) && Intrinsics.areEqual((Object) this.f8long, (Object) photosPhotoXtrTagInfo.f8long) && Intrinsics.areEqual(this.photo1280, photosPhotoXtrTagInfo.photo1280) && Intrinsics.areEqual(this.photo130, photosPhotoXtrTagInfo.photo130) && Intrinsics.areEqual(this.photo2560, photosPhotoXtrTagInfo.photo2560) && Intrinsics.areEqual(this.photo604, photosPhotoXtrTagInfo.photo604) && Intrinsics.areEqual(this.photo75, photosPhotoXtrTagInfo.photo75) && Intrinsics.areEqual(this.photo807, photosPhotoXtrTagInfo.photo807) && Intrinsics.areEqual(this.placerId, photosPhotoXtrTagInfo.placerId) && Intrinsics.areEqual(this.postId, photosPhotoXtrTagInfo.postId) && Intrinsics.areEqual(this.sizes, photosPhotoXtrTagInfo.sizes) && Intrinsics.areEqual(this.tagCreated, photosPhotoXtrTagInfo.tagCreated) && Intrinsics.areEqual(this.tagId, photosPhotoXtrTagInfo.tagId) && Intrinsics.areEqual(this.text, photosPhotoXtrTagInfo.text) && Intrinsics.areEqual(this.userId, photosPhotoXtrTagInfo.userId) && Intrinsics.areEqual(this.width, photosPhotoXtrTagInfo.width);
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

    public final int getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getHeight() {
        return this.height;
    }

    public final int getId() {
        return this.f36004id;
    }

    @Nullable
    public final Float getLat() {
        return this.lat;
    }

    @Nullable
    public final Float getLong() {
        return this.f8long;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getPhoto1280() {
        return this.photo1280;
    }

    @Nullable
    public final String getPhoto130() {
        return this.photo130;
    }

    @Nullable
    public final String getPhoto2560() {
        return this.photo2560;
    }

    @Nullable
    public final String getPhoto604() {
        return this.photo604;
    }

    @Nullable
    public final String getPhoto75() {
        return this.photo75;
    }

    @Nullable
    public final String getPhoto807() {
        return this.photo807;
    }

    @Nullable
    public final Integer getPlacerId() {
        return this.placerId;
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
    public final Integer getTagCreated() {
        return this.tagCreated;
    }

    @Nullable
    public final Integer getTagId() {
        return this.tagId;
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
        int hashCode = ((((((this.albumId * 31) + this.date) * 31) + this.f36004id) * 31) + this.ownerId.hashCode()) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.height;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Float f10 = this.lat;
        int hashCode4 = (hashCode3 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.f8long;
        int hashCode5 = (hashCode4 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str2 = this.photo1280;
        int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo130;
        int hashCode7 = (hashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photo2560;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.photo604;
        int hashCode9 = (hashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.photo75;
        int hashCode10 = (hashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.photo807;
        int hashCode11 = (hashCode10 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num2 = this.placerId;
        int hashCode12 = (hashCode11 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.postId;
        int hashCode13 = (hashCode12 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<PhotosPhotoSizes> list = this.sizes;
        int hashCode14 = (hashCode13 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num4 = this.tagCreated;
        int hashCode15 = (hashCode14 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.tagId;
        int hashCode16 = (hashCode15 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str8 = this.text;
        int hashCode17 = (hashCode16 + (str8 == null ? 0 : str8.hashCode())) * 31;
        UserId userId = this.userId;
        int hashCode18 = (hashCode17 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num6 = this.width;
        return hashCode18 + (num6 != null ? num6.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.albumId;
        int i10 = this.date;
        int i11 = this.f36004id;
        UserId userId = this.ownerId;
        String str = this.accessKey;
        Integer num = this.height;
        Float f10 = this.lat;
        Float f11 = this.f8long;
        String str2 = this.photo1280;
        String str3 = this.photo130;
        String str4 = this.photo2560;
        String str5 = this.photo604;
        String str6 = this.photo75;
        String str7 = this.photo807;
        Integer num2 = this.placerId;
        Integer num3 = this.postId;
        List<PhotosPhotoSizes> list = this.sizes;
        Integer num4 = this.tagCreated;
        Integer num5 = this.tagId;
        String str8 = this.text;
        UserId userId2 = this.userId;
        Integer num6 = this.width;
        return "PhotosPhotoXtrTagInfo(albumId=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", accessKey=" + str + ", height=" + num + ", lat=" + f10 + ", long=" + f11 + ", photo1280=" + str2 + ", photo130=" + str3 + ", photo2560=" + str4 + ", photo604=" + str5 + ", photo75=" + str6 + ", photo807=" + str7 + ", placerId=" + num2 + ", postId=" + num3 + ", sizes=" + list + ", tagCreated=" + num4 + ", tagId=" + num5 + ", text=" + str8 + ", userId=" + userId2 + ", width=" + num6 + ")";
    }

    public /* synthetic */ PhotosPhotoXtrTagInfo(int i9, int i10, int i11, UserId userId, String str, Integer num, Float f10, Float f11, String str2, String str3, String str4, String str5, String str6, String str7, Integer num2, Integer num3, List list, Integer num4, Integer num5, String str8, UserId userId2, Integer num6, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, (i12 & 16) != 0 ? null : str, (i12 & 32) != 0 ? null : num, (i12 & 64) != 0 ? null : f10, (i12 & 128) != 0 ? null : f11, (i12 & 256) != 0 ? null : str2, (i12 & 512) != 0 ? null : str3, (i12 & 1024) != 0 ? null : str4, (i12 & 2048) != 0 ? null : str5, (i12 & 4096) != 0 ? null : str6, (i12 & 8192) != 0 ? null : str7, (i12 & 16384) != 0 ? null : num2, (32768 & i12) != 0 ? null : num3, (65536 & i12) != 0 ? null : list, (131072 & i12) != 0 ? null : num4, (262144 & i12) != 0 ? null : num5, (524288 & i12) != 0 ? null : str8, (1048576 & i12) != 0 ? null : userId2, (i12 & 2097152) != 0 ? null : num6);
    }
}

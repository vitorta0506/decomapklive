package com.vk.sdk.api.photos.dto;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BasePropertyExists;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b:\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B÷\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001eJ\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\u0010\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\u0011\u0010F\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\t\u0010L\u001a\u00020\u0007HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010%J\u000b\u0010O\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010Q\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010+J\u0088\u0002\u0010R\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010SJ\u0013\u0010T\u001a\u00020U2\b\u0010V\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010W\u001a\u00020\u0003HÖ\u0001J\t\u0010X\u001a\u00020\tHÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\"R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b$\u0010%R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\"R\u001a\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010,\u001a\u0004\b*\u0010+R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010,\u001a\u0004\b-\u0010+R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010 R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010 R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010 R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010 R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010 R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010 R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b6\u0010%R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b7\u0010%R\u001e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010 R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010/R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b<\u0010%¨\u0006Y"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoXtrRealOffset;", "", "albumId", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "accessKey", "", "height", "hidden", "Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "lat", "", "long", "photo1280", "photo130", "photo2560", "photo604", "photo75", "photo807", ShareConstants.RESULT_POST_ID, "realOffset", "sizes", "", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", ViewHierarchyConstants.TEXT_KEY, Contants.USER_ID, "width", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbumId", "()I", "getDate", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getHidden", "()Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "getId", "getLat", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLong", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto1280", "getPhoto130", "getPhoto2560", "getPhoto604", "getPhoto75", "getPhoto807", "getPostId", "getRealOffset", "getSizes", "()Ljava/util/List;", "getText", "getUserId", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosPhotoXtrRealOffset;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoXtrRealOffset {
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
    @SerializedName("hidden")
    @Nullable
    private final BasePropertyExists hidden;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36003id;
    @SerializedName("lat")
    @Nullable
    private final Float lat;
    @SerializedName("long")
    @Nullable

    /* renamed from: long  reason: not valid java name */
    private final Float f7long;
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
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("real_offset")
    @Nullable
    private final Integer realOffset;
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

    public PhotosPhotoXtrRealOffset(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable Integer num, @Nullable BasePropertyExists basePropertyExists, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<PhotosPhotoSizes> list, @Nullable String str8, @Nullable UserId userId, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.albumId = i9;
        this.date = i10;
        this.f36003id = i11;
        this.ownerId = ownerId;
        this.accessKey = str;
        this.height = num;
        this.hidden = basePropertyExists;
        this.lat = f10;
        this.f7long = f11;
        this.photo1280 = str2;
        this.photo130 = str3;
        this.photo2560 = str4;
        this.photo604 = str5;
        this.photo75 = str6;
        this.photo807 = str7;
        this.postId = num2;
        this.realOffset = num3;
        this.sizes = list;
        this.text = str8;
        this.userId = userId;
        this.width = num4;
    }

    public final int component1() {
        return this.albumId;
    }

    @Nullable
    public final String component10() {
        return this.photo1280;
    }

    @Nullable
    public final String component11() {
        return this.photo130;
    }

    @Nullable
    public final String component12() {
        return this.photo2560;
    }

    @Nullable
    public final String component13() {
        return this.photo604;
    }

    @Nullable
    public final String component14() {
        return this.photo75;
    }

    @Nullable
    public final String component15() {
        return this.photo807;
    }

    @Nullable
    public final Integer component16() {
        return this.postId;
    }

    @Nullable
    public final Integer component17() {
        return this.realOffset;
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
        return this.f36003id;
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
    public final BasePropertyExists component7() {
        return this.hidden;
    }

    @Nullable
    public final Float component8() {
        return this.lat;
    }

    @Nullable
    public final Float component9() {
        return this.f7long;
    }

    @NotNull
    public final PhotosPhotoXtrRealOffset copy(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable Integer num, @Nullable BasePropertyExists basePropertyExists, @Nullable Float f10, @Nullable Float f11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<PhotosPhotoSizes> list, @Nullable String str8, @Nullable UserId userId, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        return new PhotosPhotoXtrRealOffset(i9, i10, i11, ownerId, str, num, basePropertyExists, f10, f11, str2, str3, str4, str5, str6, str7, num2, num3, list, str8, userId, num4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoXtrRealOffset) {
            PhotosPhotoXtrRealOffset photosPhotoXtrRealOffset = (PhotosPhotoXtrRealOffset) obj;
            return this.albumId == photosPhotoXtrRealOffset.albumId && this.date == photosPhotoXtrRealOffset.date && this.f36003id == photosPhotoXtrRealOffset.f36003id && Intrinsics.areEqual(this.ownerId, photosPhotoXtrRealOffset.ownerId) && Intrinsics.areEqual(this.accessKey, photosPhotoXtrRealOffset.accessKey) && Intrinsics.areEqual(this.height, photosPhotoXtrRealOffset.height) && this.hidden == photosPhotoXtrRealOffset.hidden && Intrinsics.areEqual((Object) this.lat, (Object) photosPhotoXtrRealOffset.lat) && Intrinsics.areEqual((Object) this.f7long, (Object) photosPhotoXtrRealOffset.f7long) && Intrinsics.areEqual(this.photo1280, photosPhotoXtrRealOffset.photo1280) && Intrinsics.areEqual(this.photo130, photosPhotoXtrRealOffset.photo130) && Intrinsics.areEqual(this.photo2560, photosPhotoXtrRealOffset.photo2560) && Intrinsics.areEqual(this.photo604, photosPhotoXtrRealOffset.photo604) && Intrinsics.areEqual(this.photo75, photosPhotoXtrRealOffset.photo75) && Intrinsics.areEqual(this.photo807, photosPhotoXtrRealOffset.photo807) && Intrinsics.areEqual(this.postId, photosPhotoXtrRealOffset.postId) && Intrinsics.areEqual(this.realOffset, photosPhotoXtrRealOffset.realOffset) && Intrinsics.areEqual(this.sizes, photosPhotoXtrRealOffset.sizes) && Intrinsics.areEqual(this.text, photosPhotoXtrRealOffset.text) && Intrinsics.areEqual(this.userId, photosPhotoXtrRealOffset.userId) && Intrinsics.areEqual(this.width, photosPhotoXtrRealOffset.width);
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

    @Nullable
    public final BasePropertyExists getHidden() {
        return this.hidden;
    }

    public final int getId() {
        return this.f36003id;
    }

    @Nullable
    public final Float getLat() {
        return this.lat;
    }

    @Nullable
    public final Float getLong() {
        return this.f7long;
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
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final Integer getRealOffset() {
        return this.realOffset;
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

    public int hashCode() {
        int hashCode = ((((((this.albumId * 31) + this.date) * 31) + this.f36003id) * 31) + this.ownerId.hashCode()) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.height;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        BasePropertyExists basePropertyExists = this.hidden;
        int hashCode4 = (hashCode3 + (basePropertyExists == null ? 0 : basePropertyExists.hashCode())) * 31;
        Float f10 = this.lat;
        int hashCode5 = (hashCode4 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.f7long;
        int hashCode6 = (hashCode5 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str2 = this.photo1280;
        int hashCode7 = (hashCode6 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo130;
        int hashCode8 = (hashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photo2560;
        int hashCode9 = (hashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.photo604;
        int hashCode10 = (hashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.photo75;
        int hashCode11 = (hashCode10 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.photo807;
        int hashCode12 = (hashCode11 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num2 = this.postId;
        int hashCode13 = (hashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.realOffset;
        int hashCode14 = (hashCode13 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<PhotosPhotoSizes> list = this.sizes;
        int hashCode15 = (hashCode14 + (list == null ? 0 : list.hashCode())) * 31;
        String str8 = this.text;
        int hashCode16 = (hashCode15 + (str8 == null ? 0 : str8.hashCode())) * 31;
        UserId userId = this.userId;
        int hashCode17 = (hashCode16 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num4 = this.width;
        return hashCode17 + (num4 != null ? num4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.albumId;
        int i10 = this.date;
        int i11 = this.f36003id;
        UserId userId = this.ownerId;
        String str = this.accessKey;
        Integer num = this.height;
        BasePropertyExists basePropertyExists = this.hidden;
        Float f10 = this.lat;
        Float f11 = this.f7long;
        String str2 = this.photo1280;
        String str3 = this.photo130;
        String str4 = this.photo2560;
        String str5 = this.photo604;
        String str6 = this.photo75;
        String str7 = this.photo807;
        Integer num2 = this.postId;
        Integer num3 = this.realOffset;
        List<PhotosPhotoSizes> list = this.sizes;
        String str8 = this.text;
        UserId userId2 = this.userId;
        Integer num4 = this.width;
        return "PhotosPhotoXtrRealOffset(albumId=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", accessKey=" + str + ", height=" + num + ", hidden=" + basePropertyExists + ", lat=" + f10 + ", long=" + f11 + ", photo1280=" + str2 + ", photo130=" + str3 + ", photo2560=" + str4 + ", photo604=" + str5 + ", photo75=" + str6 + ", photo807=" + str7 + ", postId=" + num2 + ", realOffset=" + num3 + ", sizes=" + list + ", text=" + str8 + ", userId=" + userId2 + ", width=" + num4 + ")";
    }

    public /* synthetic */ PhotosPhotoXtrRealOffset(int i9, int i10, int i11, UserId userId, String str, Integer num, BasePropertyExists basePropertyExists, Float f10, Float f11, String str2, String str3, String str4, String str5, String str6, String str7, Integer num2, Integer num3, List list, String str8, UserId userId2, Integer num4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, (i12 & 16) != 0 ? null : str, (i12 & 32) != 0 ? null : num, (i12 & 64) != 0 ? null : basePropertyExists, (i12 & 128) != 0 ? null : f10, (i12 & 256) != 0 ? null : f11, (i12 & 512) != 0 ? null : str2, (i12 & 1024) != 0 ? null : str3, (i12 & 2048) != 0 ? null : str4, (i12 & 4096) != 0 ? null : str5, (i12 & 8192) != 0 ? null : str6, (i12 & 16384) != 0 ? null : str7, (32768 & i12) != 0 ? null : num2, (65536 & i12) != 0 ? null : num3, (131072 & i12) != 0 ? null : list, (262144 & i12) != 0 ? null : str8, (524288 & i12) != 0 ? null : userId2, (i12 & 1048576) != 0 ? null : num4);
    }
}

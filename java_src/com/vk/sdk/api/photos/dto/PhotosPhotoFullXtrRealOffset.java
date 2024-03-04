package com.vk.sdk.api.photos.dto;

import com.facebook.AccessToken;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.tencent.thumbplayer.core.common.TPMediaCodecProfileLevel;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikes;
import com.vk.sdk.api.base.dto.BaseObjectCount;
import com.vk.sdk.api.base.dto.BasePropertyExists;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\bH\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B³\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 \u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010&J\t\u0010M\u001a\u00020\u0003HÆ\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u00107J\u000b\u0010O\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u00107J\u000b\u0010Q\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010U\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00101J\t\u0010X\u001a\u00020\u0003HÆ\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00101J\u000b\u0010Z\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0011\u0010[\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010_\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00101J\t\u0010`\u001a\u00020\u0003HÆ\u0003J\t\u0010a\u001a\u00020\u0007HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u0010e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00101J\u000b\u0010f\u001a\u0004\u0018\u00010\u0010HÆ\u0003JÄ\u0002\u0010g\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\r2\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010hJ\u0013\u0010i\u001a\u00020j2\b\u0010k\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010l\u001a\u00020\u0003HÖ\u0001J\t\u0010m\u001a\u00020\tHÖ\u0001R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010*R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00102\u001a\u0004\b0\u00101R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010*R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00108\u001a\u0004\b6\u00107R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00108\u001a\u0004\b;\u00107R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010(R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010(R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010(R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u0010(R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010(R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010(R\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00102\u001a\u0004\bD\u00101R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00102\u001a\u0004\bE\u00101R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bF\u0010.R\u001e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u0018\u0010\"\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bI\u0010.R\u0018\u0010#\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010(R\u0018\u0010$\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010=R\u001a\u0010%\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00102\u001a\u0004\bL\u00101¨\u0006n"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;", "", "albumId", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "accessKey", "", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "comments", "Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "height", "hidden", "Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "lat", "", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikes;", "long", "photo1280", "photo130", "photo2560", "photo604", "photo75", "photo807", ShareConstants.RESULT_POST_ID, "realOffset", "reposts", "sizes", "", "Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizes;", "tags", ViewHierarchyConstants.TEXT_KEY, Contants.USER_ID, "width", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Float;Lcom/vk/sdk/api/base/dto/BaseLikes;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getAccessKey", "()Ljava/lang/String;", "getAlbumId", "()I", "getCanComment", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "getDate", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getHidden", "()Lcom/vk/sdk/api/base/dto/BasePropertyExists;", "getId", "getLat", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikes;", "getLong", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto1280", "getPhoto130", "getPhoto2560", "getPhoto604", "getPhoto75", "getPhoto807", "getPostId", "getRealOffset", "getReposts", "getSizes", "()Ljava/util/List;", "getTags", "getText", "getUserId", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BasePropertyExists;Ljava/lang/Float;Lcom/vk/sdk/api/base/dto/BaseLikes;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseObjectCount;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosPhotoFullXtrRealOffset;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoFullXtrRealOffset {
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
    @SerializedName("hidden")
    @Nullable
    private final BasePropertyExists hidden;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35997id;
    @SerializedName("lat")
    @Nullable
    private final Float lat;
    @SerializedName("likes")
    @Nullable
    private final BaseLikes likes;
    @SerializedName("long")
    @Nullable

    /* renamed from: long  reason: not valid java name */
    private final Float f6long;
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
    @SerializedName("reposts")
    @Nullable
    private final BaseObjectCount reposts;
    @SerializedName("sizes")
    @Nullable
    private final List<PhotosPhotoSizes> sizes;
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

    public PhotosPhotoFullXtrRealOffset(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseObjectCount baseObjectCount, @Nullable Integer num, @Nullable BasePropertyExists basePropertyExists, @Nullable Float f10, @Nullable BaseLikes baseLikes, @Nullable Float f11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Integer num2, @Nullable Integer num3, @Nullable BaseObjectCount baseObjectCount2, @Nullable List<PhotosPhotoSizes> list, @Nullable BaseObjectCount baseObjectCount3, @Nullable String str8, @Nullable UserId userId, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        this.albumId = i9;
        this.date = i10;
        this.f35997id = i11;
        this.ownerId = ownerId;
        this.accessKey = str;
        this.canComment = baseBoolInt;
        this.comments = baseObjectCount;
        this.height = num;
        this.hidden = basePropertyExists;
        this.lat = f10;
        this.likes = baseLikes;
        this.f6long = f11;
        this.photo1280 = str2;
        this.photo130 = str3;
        this.photo2560 = str4;
        this.photo604 = str5;
        this.photo75 = str6;
        this.photo807 = str7;
        this.postId = num2;
        this.realOffset = num3;
        this.reposts = baseObjectCount2;
        this.sizes = list;
        this.tags = baseObjectCount3;
        this.text = str8;
        this.userId = userId;
        this.width = num4;
    }

    public final int component1() {
        return this.albumId;
    }

    @Nullable
    public final Float component10() {
        return this.lat;
    }

    @Nullable
    public final BaseLikes component11() {
        return this.likes;
    }

    @Nullable
    public final Float component12() {
        return this.f6long;
    }

    @Nullable
    public final String component13() {
        return this.photo1280;
    }

    @Nullable
    public final String component14() {
        return this.photo130;
    }

    @Nullable
    public final String component15() {
        return this.photo2560;
    }

    @Nullable
    public final String component16() {
        return this.photo604;
    }

    @Nullable
    public final String component17() {
        return this.photo75;
    }

    @Nullable
    public final String component18() {
        return this.photo807;
    }

    @Nullable
    public final Integer component19() {
        return this.postId;
    }

    public final int component2() {
        return this.date;
    }

    @Nullable
    public final Integer component20() {
        return this.realOffset;
    }

    @Nullable
    public final BaseObjectCount component21() {
        return this.reposts;
    }

    @Nullable
    public final List<PhotosPhotoSizes> component22() {
        return this.sizes;
    }

    @Nullable
    public final BaseObjectCount component23() {
        return this.tags;
    }

    @Nullable
    public final String component24() {
        return this.text;
    }

    @Nullable
    public final UserId component25() {
        return this.userId;
    }

    @Nullable
    public final Integer component26() {
        return this.width;
    }

    public final int component3() {
        return this.f35997id;
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
    public final BaseObjectCount component7() {
        return this.comments;
    }

    @Nullable
    public final Integer component8() {
        return this.height;
    }

    @Nullable
    public final BasePropertyExists component9() {
        return this.hidden;
    }

    @NotNull
    public final PhotosPhotoFullXtrRealOffset copy(int i9, int i10, int i11, @NotNull UserId ownerId, @Nullable String str, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseObjectCount baseObjectCount, @Nullable Integer num, @Nullable BasePropertyExists basePropertyExists, @Nullable Float f10, @Nullable BaseLikes baseLikes, @Nullable Float f11, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable Integer num2, @Nullable Integer num3, @Nullable BaseObjectCount baseObjectCount2, @Nullable List<PhotosPhotoSizes> list, @Nullable BaseObjectCount baseObjectCount3, @Nullable String str8, @Nullable UserId userId, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        return new PhotosPhotoFullXtrRealOffset(i9, i10, i11, ownerId, str, baseBoolInt, baseObjectCount, num, basePropertyExists, f10, baseLikes, f11, str2, str3, str4, str5, str6, str7, num2, num3, baseObjectCount2, list, baseObjectCount3, str8, userId, num4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoFullXtrRealOffset) {
            PhotosPhotoFullXtrRealOffset photosPhotoFullXtrRealOffset = (PhotosPhotoFullXtrRealOffset) obj;
            return this.albumId == photosPhotoFullXtrRealOffset.albumId && this.date == photosPhotoFullXtrRealOffset.date && this.f35997id == photosPhotoFullXtrRealOffset.f35997id && Intrinsics.areEqual(this.ownerId, photosPhotoFullXtrRealOffset.ownerId) && Intrinsics.areEqual(this.accessKey, photosPhotoFullXtrRealOffset.accessKey) && this.canComment == photosPhotoFullXtrRealOffset.canComment && Intrinsics.areEqual(this.comments, photosPhotoFullXtrRealOffset.comments) && Intrinsics.areEqual(this.height, photosPhotoFullXtrRealOffset.height) && this.hidden == photosPhotoFullXtrRealOffset.hidden && Intrinsics.areEqual((Object) this.lat, (Object) photosPhotoFullXtrRealOffset.lat) && Intrinsics.areEqual(this.likes, photosPhotoFullXtrRealOffset.likes) && Intrinsics.areEqual((Object) this.f6long, (Object) photosPhotoFullXtrRealOffset.f6long) && Intrinsics.areEqual(this.photo1280, photosPhotoFullXtrRealOffset.photo1280) && Intrinsics.areEqual(this.photo130, photosPhotoFullXtrRealOffset.photo130) && Intrinsics.areEqual(this.photo2560, photosPhotoFullXtrRealOffset.photo2560) && Intrinsics.areEqual(this.photo604, photosPhotoFullXtrRealOffset.photo604) && Intrinsics.areEqual(this.photo75, photosPhotoFullXtrRealOffset.photo75) && Intrinsics.areEqual(this.photo807, photosPhotoFullXtrRealOffset.photo807) && Intrinsics.areEqual(this.postId, photosPhotoFullXtrRealOffset.postId) && Intrinsics.areEqual(this.realOffset, photosPhotoFullXtrRealOffset.realOffset) && Intrinsics.areEqual(this.reposts, photosPhotoFullXtrRealOffset.reposts) && Intrinsics.areEqual(this.sizes, photosPhotoFullXtrRealOffset.sizes) && Intrinsics.areEqual(this.tags, photosPhotoFullXtrRealOffset.tags) && Intrinsics.areEqual(this.text, photosPhotoFullXtrRealOffset.text) && Intrinsics.areEqual(this.userId, photosPhotoFullXtrRealOffset.userId) && Intrinsics.areEqual(this.width, photosPhotoFullXtrRealOffset.width);
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

    @Nullable
    public final BasePropertyExists getHidden() {
        return this.hidden;
    }

    public final int getId() {
        return this.f35997id;
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
        return this.f6long;
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
    public final BaseObjectCount getReposts() {
        return this.reposts;
    }

    @Nullable
    public final List<PhotosPhotoSizes> getSizes() {
        return this.sizes;
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
        int hashCode = ((((((this.albumId * 31) + this.date) * 31) + this.f35997id) * 31) + this.ownerId.hashCode()) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseObjectCount baseObjectCount = this.comments;
        int hashCode4 = (hashCode3 + (baseObjectCount == null ? 0 : baseObjectCount.hashCode())) * 31;
        Integer num = this.height;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        BasePropertyExists basePropertyExists = this.hidden;
        int hashCode6 = (hashCode5 + (basePropertyExists == null ? 0 : basePropertyExists.hashCode())) * 31;
        Float f10 = this.lat;
        int hashCode7 = (hashCode6 + (f10 == null ? 0 : f10.hashCode())) * 31;
        BaseLikes baseLikes = this.likes;
        int hashCode8 = (hashCode7 + (baseLikes == null ? 0 : baseLikes.hashCode())) * 31;
        Float f11 = this.f6long;
        int hashCode9 = (hashCode8 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str2 = this.photo1280;
        int hashCode10 = (hashCode9 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.photo130;
        int hashCode11 = (hashCode10 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photo2560;
        int hashCode12 = (hashCode11 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.photo604;
        int hashCode13 = (hashCode12 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.photo75;
        int hashCode14 = (hashCode13 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.photo807;
        int hashCode15 = (hashCode14 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num2 = this.postId;
        int hashCode16 = (hashCode15 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.realOffset;
        int hashCode17 = (hashCode16 + (num3 == null ? 0 : num3.hashCode())) * 31;
        BaseObjectCount baseObjectCount2 = this.reposts;
        int hashCode18 = (hashCode17 + (baseObjectCount2 == null ? 0 : baseObjectCount2.hashCode())) * 31;
        List<PhotosPhotoSizes> list = this.sizes;
        int hashCode19 = (hashCode18 + (list == null ? 0 : list.hashCode())) * 31;
        BaseObjectCount baseObjectCount3 = this.tags;
        int hashCode20 = (hashCode19 + (baseObjectCount3 == null ? 0 : baseObjectCount3.hashCode())) * 31;
        String str8 = this.text;
        int hashCode21 = (hashCode20 + (str8 == null ? 0 : str8.hashCode())) * 31;
        UserId userId = this.userId;
        int hashCode22 = (hashCode21 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num4 = this.width;
        return hashCode22 + (num4 != null ? num4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.albumId;
        int i10 = this.date;
        int i11 = this.f35997id;
        UserId userId = this.ownerId;
        String str = this.accessKey;
        BaseBoolInt baseBoolInt = this.canComment;
        BaseObjectCount baseObjectCount = this.comments;
        Integer num = this.height;
        BasePropertyExists basePropertyExists = this.hidden;
        Float f10 = this.lat;
        BaseLikes baseLikes = this.likes;
        Float f11 = this.f6long;
        String str2 = this.photo1280;
        String str3 = this.photo130;
        String str4 = this.photo2560;
        String str5 = this.photo604;
        String str6 = this.photo75;
        String str7 = this.photo807;
        Integer num2 = this.postId;
        Integer num3 = this.realOffset;
        BaseObjectCount baseObjectCount2 = this.reposts;
        List<PhotosPhotoSizes> list = this.sizes;
        BaseObjectCount baseObjectCount3 = this.tags;
        String str8 = this.text;
        UserId userId2 = this.userId;
        Integer num4 = this.width;
        return "PhotosPhotoFullXtrRealOffset(albumId=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", accessKey=" + str + ", canComment=" + baseBoolInt + ", comments=" + baseObjectCount + ", height=" + num + ", hidden=" + basePropertyExists + ", lat=" + f10 + ", likes=" + baseLikes + ", long=" + f11 + ", photo1280=" + str2 + ", photo130=" + str3 + ", photo2560=" + str4 + ", photo604=" + str5 + ", photo75=" + str6 + ", photo807=" + str7 + ", postId=" + num2 + ", realOffset=" + num3 + ", reposts=" + baseObjectCount2 + ", sizes=" + list + ", tags=" + baseObjectCount3 + ", text=" + str8 + ", userId=" + userId2 + ", width=" + num4 + ")";
    }

    public /* synthetic */ PhotosPhotoFullXtrRealOffset(int i9, int i10, int i11, UserId userId, String str, BaseBoolInt baseBoolInt, BaseObjectCount baseObjectCount, Integer num, BasePropertyExists basePropertyExists, Float f10, BaseLikes baseLikes, Float f11, String str2, String str3, String str4, String str5, String str6, String str7, Integer num2, Integer num3, BaseObjectCount baseObjectCount2, List list, BaseObjectCount baseObjectCount3, String str8, UserId userId2, Integer num4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, (i12 & 16) != 0 ? null : str, (i12 & 32) != 0 ? null : baseBoolInt, (i12 & 64) != 0 ? null : baseObjectCount, (i12 & 128) != 0 ? null : num, (i12 & 256) != 0 ? null : basePropertyExists, (i12 & 512) != 0 ? null : f10, (i12 & 1024) != 0 ? null : baseLikes, (i12 & 2048) != 0 ? null : f11, (i12 & 4096) != 0 ? null : str2, (i12 & 8192) != 0 ? null : str3, (i12 & 16384) != 0 ? null : str4, (32768 & i12) != 0 ? null : str5, (65536 & i12) != 0 ? null : str6, (131072 & i12) != 0 ? null : str7, (262144 & i12) != 0 ? null : num2, (524288 & i12) != 0 ? null : num3, (1048576 & i12) != 0 ? null : baseObjectCount2, (2097152 & i12) != 0 ? null : list, (4194304 & i12) != 0 ? null : baseObjectCount3, (8388608 & i12) != 0 ? null : str8, (16777216 & i12) != 0 ? null : userId2, (i12 & TPMediaCodecProfileLevel.HEVCHighTierLevel62) != 0 ? null : num4);
    }
}

package com.vk.sdk.api.newsfeed.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import com.vk.sdk.api.wall.dto.WallGeo;
import com.vk.sdk.api.wall.dto.WallPostCopyright;
import com.vk.sdk.api.wall.dto.WallPostSource;
import com.vk.sdk.api.wall.dto.WallPostType;
import com.vk.sdk.api.wall.dto.WallViews;
import com.vk.sdk.api.wall.dto.WallWallpostAttachment;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b=\b\u0086\b\u0018\u00002\u00020\u0001B\u008d\u0002\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\u0002\u0010$J\u000b\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010F\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u00104J\u0010\u0010G\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u00104J\u000b\u0010H\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0010\u0010J\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010,J\u0011\u0010K\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0007HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u001fHÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u00104J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010#HÆ\u0003J\u0011\u0010S\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010,J\u0010\u0010V\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010,J\u000b\u0010W\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010,J\u0096\u0002\u0010Z\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00072\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#HÆ\u0001¢\u0006\u0002\u0010[J\u0013\u0010\\\u001a\u00020\u00052\b\u0010]\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010^\u001a\u00020\fHÖ\u0001J\t\u0010_\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b+\u0010,R\u001a\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b.\u0010,R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b3\u0010,R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00105\u001a\u0004\b\u0013\u00104R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00105\u001a\u0004\b\u0004\u00104R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00105\u001a\u0004\b\u0014\u00104R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00100R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010(R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b:\u0010,R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0018\u0010 \u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u00100R\u0018\u0010!\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010&R\u0018\u0010\"\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010D¨\u0006`"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestItem;", "", "accessKey", "", "isDeleted", "", "attachments", "", "Lcom/vk/sdk/api/wall/dto/WallWallpostAttachment;", "copyright", "Lcom/vk/sdk/api/wall/dto/WallPostCopyright;", "date", "", "edited", "fromId", "Lcom/vk/dto/common/id/UserId;", "geo", "Lcom/vk/sdk/api/wall/dto/WallGeo;", "id", "isArchived", "isFavorite", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "ownerId", ShareConstants.RESULT_POST_ID, "parentsStack", "postSource", "Lcom/vk/sdk/api/wall/dto/WallPostSource;", "postType", "Lcom/vk/sdk/api/wall/dto/WallPostType;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "signerId", ViewHierarchyConstants.TEXT_KEY, AdUnitActivity.EXTRA_VIEWS, "Lcom/vk/sdk/api/wall/dto/WallViews;", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostCopyright;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallViews;)V", "getAccessKey", "()Ljava/lang/String;", "getAttachments", "()Ljava/util/List;", "getCopyright", "()Lcom/vk/sdk/api/wall/dto/WallPostCopyright;", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEdited", "getFromId", "()Lcom/vk/dto/common/id/UserId;", "getGeo", "()Lcom/vk/sdk/api/wall/dto/WallGeo;", "getId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getOwnerId", "getParentsStack", "getPostId", "getPostSource", "()Lcom/vk/sdk/api/wall/dto/WallPostSource;", "getPostType", "()Lcom/vk/sdk/api/wall/dto/WallPostType;", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getSignerId", "getText", "getViews", "()Lcom/vk/sdk/api/wall/dto/WallViews;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostCopyright;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/wall/dto/WallViews;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestItem;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemDigestItem {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("attachments")
    @Nullable
    private final List<WallWallpostAttachment> attachments;
    @SerializedName("copyright")
    @Nullable
    private final WallPostCopyright copyright;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("edited")
    @Nullable
    private final Integer edited;
    @SerializedName("from_id")
    @Nullable
    private final UserId fromId;
    @SerializedName("geo")
    @Nullable
    private final WallGeo geo;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35950id;
    @SerializedName("is_archived")
    @Nullable
    private final Boolean isArchived;
    @SerializedName("is_deleted")
    @Nullable
    private final Boolean isDeleted;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName("likes")
    @Nullable
    private final BaseLikesInfo likes;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("parents_stack")
    @Nullable
    private final List<Integer> parentsStack;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("post_source")
    @Nullable
    private final WallPostSource postSource;
    @SerializedName("post_type")
    @Nullable
    private final WallPostType postType;
    @SerializedName("reposts")
    @Nullable
    private final BaseRepostsInfo reposts;
    @SerializedName("signer_id")
    @Nullable
    private final UserId signerId;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    @Nullable
    private final WallViews views;

    public NewsfeedItemDigestItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2097151, null);
    }

    public NewsfeedItemDigestItem(@Nullable String str, @Nullable Boolean bool, @Nullable List<WallWallpostAttachment> list, @Nullable WallPostCopyright wallPostCopyright, @Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId, @Nullable WallGeo wallGeo, @Nullable Integer num3, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable BaseLikesInfo baseLikesInfo, @Nullable UserId userId2, @Nullable Integer num4, @Nullable List<Integer> list2, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId3, @Nullable String str2, @Nullable WallViews wallViews) {
        this.accessKey = str;
        this.isDeleted = bool;
        this.attachments = list;
        this.copyright = wallPostCopyright;
        this.date = num;
        this.edited = num2;
        this.fromId = userId;
        this.geo = wallGeo;
        this.f35950id = num3;
        this.isArchived = bool2;
        this.isFavorite = bool3;
        this.likes = baseLikesInfo;
        this.ownerId = userId2;
        this.postId = num4;
        this.parentsStack = list2;
        this.postSource = wallPostSource;
        this.postType = wallPostType;
        this.reposts = baseRepostsInfo;
        this.signerId = userId3;
        this.text = str2;
        this.views = wallViews;
    }

    @Nullable
    public final String component1() {
        return this.accessKey;
    }

    @Nullable
    public final Boolean component10() {
        return this.isArchived;
    }

    @Nullable
    public final Boolean component11() {
        return this.isFavorite;
    }

    @Nullable
    public final BaseLikesInfo component12() {
        return this.likes;
    }

    @Nullable
    public final UserId component13() {
        return this.ownerId;
    }

    @Nullable
    public final Integer component14() {
        return this.postId;
    }

    @Nullable
    public final List<Integer> component15() {
        return this.parentsStack;
    }

    @Nullable
    public final WallPostSource component16() {
        return this.postSource;
    }

    @Nullable
    public final WallPostType component17() {
        return this.postType;
    }

    @Nullable
    public final BaseRepostsInfo component18() {
        return this.reposts;
    }

    @Nullable
    public final UserId component19() {
        return this.signerId;
    }

    @Nullable
    public final Boolean component2() {
        return this.isDeleted;
    }

    @Nullable
    public final String component20() {
        return this.text;
    }

    @Nullable
    public final WallViews component21() {
        return this.views;
    }

    @Nullable
    public final List<WallWallpostAttachment> component3() {
        return this.attachments;
    }

    @Nullable
    public final WallPostCopyright component4() {
        return this.copyright;
    }

    @Nullable
    public final Integer component5() {
        return this.date;
    }

    @Nullable
    public final Integer component6() {
        return this.edited;
    }

    @Nullable
    public final UserId component7() {
        return this.fromId;
    }

    @Nullable
    public final WallGeo component8() {
        return this.geo;
    }

    @Nullable
    public final Integer component9() {
        return this.f35950id;
    }

    @NotNull
    public final NewsfeedItemDigestItem copy(@Nullable String str, @Nullable Boolean bool, @Nullable List<WallWallpostAttachment> list, @Nullable WallPostCopyright wallPostCopyright, @Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId, @Nullable WallGeo wallGeo, @Nullable Integer num3, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable BaseLikesInfo baseLikesInfo, @Nullable UserId userId2, @Nullable Integer num4, @Nullable List<Integer> list2, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId3, @Nullable String str2, @Nullable WallViews wallViews) {
        return new NewsfeedItemDigestItem(str, bool, list, wallPostCopyright, num, num2, userId, wallGeo, num3, bool2, bool3, baseLikesInfo, userId2, num4, list2, wallPostSource, wallPostType, baseRepostsInfo, userId3, str2, wallViews);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemDigestItem) {
            NewsfeedItemDigestItem newsfeedItemDigestItem = (NewsfeedItemDigestItem) obj;
            return Intrinsics.areEqual(this.accessKey, newsfeedItemDigestItem.accessKey) && Intrinsics.areEqual(this.isDeleted, newsfeedItemDigestItem.isDeleted) && Intrinsics.areEqual(this.attachments, newsfeedItemDigestItem.attachments) && Intrinsics.areEqual(this.copyright, newsfeedItemDigestItem.copyright) && Intrinsics.areEqual(this.date, newsfeedItemDigestItem.date) && Intrinsics.areEqual(this.edited, newsfeedItemDigestItem.edited) && Intrinsics.areEqual(this.fromId, newsfeedItemDigestItem.fromId) && Intrinsics.areEqual(this.geo, newsfeedItemDigestItem.geo) && Intrinsics.areEqual(this.f35950id, newsfeedItemDigestItem.f35950id) && Intrinsics.areEqual(this.isArchived, newsfeedItemDigestItem.isArchived) && Intrinsics.areEqual(this.isFavorite, newsfeedItemDigestItem.isFavorite) && Intrinsics.areEqual(this.likes, newsfeedItemDigestItem.likes) && Intrinsics.areEqual(this.ownerId, newsfeedItemDigestItem.ownerId) && Intrinsics.areEqual(this.postId, newsfeedItemDigestItem.postId) && Intrinsics.areEqual(this.parentsStack, newsfeedItemDigestItem.parentsStack) && Intrinsics.areEqual(this.postSource, newsfeedItemDigestItem.postSource) && this.postType == newsfeedItemDigestItem.postType && Intrinsics.areEqual(this.reposts, newsfeedItemDigestItem.reposts) && Intrinsics.areEqual(this.signerId, newsfeedItemDigestItem.signerId) && Intrinsics.areEqual(this.text, newsfeedItemDigestItem.text) && Intrinsics.areEqual(this.views, newsfeedItemDigestItem.views);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @Nullable
    public final List<WallWallpostAttachment> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final WallPostCopyright getCopyright() {
        return this.copyright;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getEdited() {
        return this.edited;
    }

    @Nullable
    public final UserId getFromId() {
        return this.fromId;
    }

    @Nullable
    public final WallGeo getGeo() {
        return this.geo;
    }

    @Nullable
    public final Integer getId() {
        return this.f35950id;
    }

    @Nullable
    public final BaseLikesInfo getLikes() {
        return this.likes;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final List<Integer> getParentsStack() {
        return this.parentsStack;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final WallPostSource getPostSource() {
        return this.postSource;
    }

    @Nullable
    public final WallPostType getPostType() {
        return this.postType;
    }

    @Nullable
    public final BaseRepostsInfo getReposts() {
        return this.reposts;
    }

    @Nullable
    public final UserId getSignerId() {
        return this.signerId;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final WallViews getViews() {
        return this.views;
    }

    public int hashCode() {
        String str = this.accessKey;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.isDeleted;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        List<WallWallpostAttachment> list = this.attachments;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        WallPostCopyright wallPostCopyright = this.copyright;
        int hashCode4 = (hashCode3 + (wallPostCopyright == null ? 0 : wallPostCopyright.hashCode())) * 31;
        Integer num = this.date;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.edited;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        UserId userId = this.fromId;
        int hashCode7 = (hashCode6 + (userId == null ? 0 : userId.hashCode())) * 31;
        WallGeo wallGeo = this.geo;
        int hashCode8 = (hashCode7 + (wallGeo == null ? 0 : wallGeo.hashCode())) * 31;
        Integer num3 = this.f35950id;
        int hashCode9 = (hashCode8 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Boolean bool2 = this.isArchived;
        int hashCode10 = (hashCode9 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isFavorite;
        int hashCode11 = (hashCode10 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        BaseLikesInfo baseLikesInfo = this.likes;
        int hashCode12 = (hashCode11 + (baseLikesInfo == null ? 0 : baseLikesInfo.hashCode())) * 31;
        UserId userId2 = this.ownerId;
        int hashCode13 = (hashCode12 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        Integer num4 = this.postId;
        int hashCode14 = (hashCode13 + (num4 == null ? 0 : num4.hashCode())) * 31;
        List<Integer> list2 = this.parentsStack;
        int hashCode15 = (hashCode14 + (list2 == null ? 0 : list2.hashCode())) * 31;
        WallPostSource wallPostSource = this.postSource;
        int hashCode16 = (hashCode15 + (wallPostSource == null ? 0 : wallPostSource.hashCode())) * 31;
        WallPostType wallPostType = this.postType;
        int hashCode17 = (hashCode16 + (wallPostType == null ? 0 : wallPostType.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode18 = (hashCode17 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        UserId userId3 = this.signerId;
        int hashCode19 = (hashCode18 + (userId3 == null ? 0 : userId3.hashCode())) * 31;
        String str2 = this.text;
        int hashCode20 = (hashCode19 + (str2 == null ? 0 : str2.hashCode())) * 31;
        WallViews wallViews = this.views;
        return hashCode20 + (wallViews != null ? wallViews.hashCode() : 0);
    }

    @Nullable
    public final Boolean isArchived() {
        return this.isArchived;
    }

    @Nullable
    public final Boolean isDeleted() {
        return this.isDeleted;
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @NotNull
    public String toString() {
        String str = this.accessKey;
        Boolean bool = this.isDeleted;
        List<WallWallpostAttachment> list = this.attachments;
        WallPostCopyright wallPostCopyright = this.copyright;
        Integer num = this.date;
        Integer num2 = this.edited;
        UserId userId = this.fromId;
        WallGeo wallGeo = this.geo;
        Integer num3 = this.f35950id;
        Boolean bool2 = this.isArchived;
        Boolean bool3 = this.isFavorite;
        BaseLikesInfo baseLikesInfo = this.likes;
        UserId userId2 = this.ownerId;
        Integer num4 = this.postId;
        List<Integer> list2 = this.parentsStack;
        WallPostSource wallPostSource = this.postSource;
        WallPostType wallPostType = this.postType;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        UserId userId3 = this.signerId;
        String str2 = this.text;
        WallViews wallViews = this.views;
        return "NewsfeedItemDigestItem(accessKey=" + str + ", isDeleted=" + bool + ", attachments=" + list + ", copyright=" + wallPostCopyright + ", date=" + num + ", edited=" + num2 + ", fromId=" + userId + ", geo=" + wallGeo + ", id=" + num3 + ", isArchived=" + bool2 + ", isFavorite=" + bool3 + ", likes=" + baseLikesInfo + ", ownerId=" + userId2 + ", postId=" + num4 + ", parentsStack=" + list2 + ", postSource=" + wallPostSource + ", postType=" + wallPostType + ", reposts=" + baseRepostsInfo + ", signerId=" + userId3 + ", text=" + str2 + ", views=" + wallViews + ")";
    }

    public /* synthetic */ NewsfeedItemDigestItem(String str, Boolean bool, List list, WallPostCopyright wallPostCopyright, Integer num, Integer num2, UserId userId, WallGeo wallGeo, Integer num3, Boolean bool2, Boolean bool3, BaseLikesInfo baseLikesInfo, UserId userId2, Integer num4, List list2, WallPostSource wallPostSource, WallPostType wallPostType, BaseRepostsInfo baseRepostsInfo, UserId userId3, String str2, WallViews wallViews, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : bool, (i9 & 4) != 0 ? null : list, (i9 & 8) != 0 ? null : wallPostCopyright, (i9 & 16) != 0 ? null : num, (i9 & 32) != 0 ? null : num2, (i9 & 64) != 0 ? null : userId, (i9 & 128) != 0 ? null : wallGeo, (i9 & 256) != 0 ? null : num3, (i9 & 512) != 0 ? null : bool2, (i9 & 1024) != 0 ? null : bool3, (i9 & 2048) != 0 ? null : baseLikesInfo, (i9 & 4096) != 0 ? null : userId2, (i9 & 8192) != 0 ? null : num4, (i9 & 16384) != 0 ? null : list2, (i9 & 32768) != 0 ? null : wallPostSource, (i9 & 65536) != 0 ? null : wallPostType, (i9 & 131072) != 0 ? null : baseRepostsInfo, (i9 & 262144) != 0 ? null : userId3, (i9 & 524288) != 0 ? null : str2, (i9 & 1048576) != 0 ? null : wallViews);
    }
}

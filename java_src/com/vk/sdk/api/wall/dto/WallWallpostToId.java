package com.vk.sdk.api.wall.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseCommentsInfo;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b7\b\u0086\b\u0018\u00002\u00020\u0001B×\u0001\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u001fJ\u0011\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u0010\u0010?\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010'J\u000b\u0010@\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010H\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010'J\u0010\u0010I\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010'J\u000b\u0010J\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0010\u0010L\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010'J\u0010\u0010M\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0002\u0010.Jà\u0001\u0010N\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010OJ\u0013\u0010P\u001a\u00020\u00112\b\u0010Q\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010R\u001a\u00020\nHÖ\u0001J\t\u0010S\u001a\u00020\u001dHÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b&\u0010'R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b)\u0010'R\u0018\u0010\f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010%R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b-\u0010'R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010/\u001a\u0004\b\u0010\u0010.R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b2\u0010'R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010%R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010%¨\u0006T"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallpostToId;", "", "attachments", "", "Lcom/vk/sdk/api/wall/dto/WallWallpostAttachment;", "comments", "Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "copyOwnerId", "Lcom/vk/dto/common/id/UserId;", "copyPostId", "", "date", "fromId", "geo", "Lcom/vk/sdk/api/wall/dto/WallGeo;", "id", "isFavorite", "", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", ShareConstants.RESULT_POST_ID, "postSource", "Lcom/vk/sdk/api/wall/dto/WallPostSource;", "postType", "Lcom/vk/sdk/api/wall/dto/WallPostType;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "signerId", ViewHierarchyConstants.TEXT_KEY, "", "toId", "(Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Ljava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)V", "getAttachments", "()Ljava/util/List;", "getComments", "()Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;", "getCopyOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getCopyPostId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "getFromId", "getGeo", "()Lcom/vk/sdk/api/wall/dto/WallGeo;", "getId", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getPostId", "getPostSource", "()Lcom/vk/sdk/api/wall/dto/WallPostSource;", "getPostType", "()Lcom/vk/sdk/api/wall/dto/WallPostType;", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getSignerId", "getText", "()Ljava/lang/String;", "getToId", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseCommentsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/wall/dto/WallGeo;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Ljava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/wall/dto/WallPostType;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)Lcom/vk/sdk/api/wall/dto/WallWallpostToId;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallWallpostToId {
    @SerializedName("attachments")
    @Nullable
    private final List<WallWallpostAttachment> attachments;
    @SerializedName("comments")
    @Nullable
    private final BaseCommentsInfo comments;
    @SerializedName("copy_owner_id")
    @Nullable
    private final UserId copyOwnerId;
    @SerializedName("copy_post_id")
    @Nullable
    private final Integer copyPostId;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("from_id")
    @Nullable
    private final UserId fromId;
    @SerializedName("geo")
    @Nullable
    private final WallGeo geo;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36159id;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName("likes")
    @Nullable
    private final BaseLikesInfo likes;
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
    @SerializedName("to_id")
    @Nullable
    private final UserId toId;

    public WallWallpostToId() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
    }

    public WallWallpostToId(@Nullable List<WallWallpostAttachment> list, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId2, @Nullable WallGeo wallGeo, @Nullable Integer num3, @Nullable Boolean bool, @Nullable BaseLikesInfo baseLikesInfo, @Nullable Integer num4, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId3, @Nullable String str, @Nullable UserId userId4) {
        this.attachments = list;
        this.comments = baseCommentsInfo;
        this.copyOwnerId = userId;
        this.copyPostId = num;
        this.date = num2;
        this.fromId = userId2;
        this.geo = wallGeo;
        this.f36159id = num3;
        this.isFavorite = bool;
        this.likes = baseLikesInfo;
        this.postId = num4;
        this.postSource = wallPostSource;
        this.postType = wallPostType;
        this.reposts = baseRepostsInfo;
        this.signerId = userId3;
        this.text = str;
        this.toId = userId4;
    }

    @Nullable
    public final List<WallWallpostAttachment> component1() {
        return this.attachments;
    }

    @Nullable
    public final BaseLikesInfo component10() {
        return this.likes;
    }

    @Nullable
    public final Integer component11() {
        return this.postId;
    }

    @Nullable
    public final WallPostSource component12() {
        return this.postSource;
    }

    @Nullable
    public final WallPostType component13() {
        return this.postType;
    }

    @Nullable
    public final BaseRepostsInfo component14() {
        return this.reposts;
    }

    @Nullable
    public final UserId component15() {
        return this.signerId;
    }

    @Nullable
    public final String component16() {
        return this.text;
    }

    @Nullable
    public final UserId component17() {
        return this.toId;
    }

    @Nullable
    public final BaseCommentsInfo component2() {
        return this.comments;
    }

    @Nullable
    public final UserId component3() {
        return this.copyOwnerId;
    }

    @Nullable
    public final Integer component4() {
        return this.copyPostId;
    }

    @Nullable
    public final Integer component5() {
        return this.date;
    }

    @Nullable
    public final UserId component6() {
        return this.fromId;
    }

    @Nullable
    public final WallGeo component7() {
        return this.geo;
    }

    @Nullable
    public final Integer component8() {
        return this.f36159id;
    }

    @Nullable
    public final Boolean component9() {
        return this.isFavorite;
    }

    @NotNull
    public final WallWallpostToId copy(@Nullable List<WallWallpostAttachment> list, @Nullable BaseCommentsInfo baseCommentsInfo, @Nullable UserId userId, @Nullable Integer num, @Nullable Integer num2, @Nullable UserId userId2, @Nullable WallGeo wallGeo, @Nullable Integer num3, @Nullable Boolean bool, @Nullable BaseLikesInfo baseLikesInfo, @Nullable Integer num4, @Nullable WallPostSource wallPostSource, @Nullable WallPostType wallPostType, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UserId userId3, @Nullable String str, @Nullable UserId userId4) {
        return new WallWallpostToId(list, baseCommentsInfo, userId, num, num2, userId2, wallGeo, num3, bool, baseLikesInfo, num4, wallPostSource, wallPostType, baseRepostsInfo, userId3, str, userId4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallWallpostToId) {
            WallWallpostToId wallWallpostToId = (WallWallpostToId) obj;
            return Intrinsics.areEqual(this.attachments, wallWallpostToId.attachments) && Intrinsics.areEqual(this.comments, wallWallpostToId.comments) && Intrinsics.areEqual(this.copyOwnerId, wallWallpostToId.copyOwnerId) && Intrinsics.areEqual(this.copyPostId, wallWallpostToId.copyPostId) && Intrinsics.areEqual(this.date, wallWallpostToId.date) && Intrinsics.areEqual(this.fromId, wallWallpostToId.fromId) && Intrinsics.areEqual(this.geo, wallWallpostToId.geo) && Intrinsics.areEqual(this.f36159id, wallWallpostToId.f36159id) && Intrinsics.areEqual(this.isFavorite, wallWallpostToId.isFavorite) && Intrinsics.areEqual(this.likes, wallWallpostToId.likes) && Intrinsics.areEqual(this.postId, wallWallpostToId.postId) && Intrinsics.areEqual(this.postSource, wallWallpostToId.postSource) && this.postType == wallWallpostToId.postType && Intrinsics.areEqual(this.reposts, wallWallpostToId.reposts) && Intrinsics.areEqual(this.signerId, wallWallpostToId.signerId) && Intrinsics.areEqual(this.text, wallWallpostToId.text) && Intrinsics.areEqual(this.toId, wallWallpostToId.toId);
        }
        return false;
    }

    @Nullable
    public final List<WallWallpostAttachment> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final BaseCommentsInfo getComments() {
        return this.comments;
    }

    @Nullable
    public final UserId getCopyOwnerId() {
        return this.copyOwnerId;
    }

    @Nullable
    public final Integer getCopyPostId() {
        return this.copyPostId;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
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
        return this.f36159id;
    }

    @Nullable
    public final BaseLikesInfo getLikes() {
        return this.likes;
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
    public final UserId getToId() {
        return this.toId;
    }

    public int hashCode() {
        List<WallWallpostAttachment> list = this.attachments;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        BaseCommentsInfo baseCommentsInfo = this.comments;
        int hashCode2 = (hashCode + (baseCommentsInfo == null ? 0 : baseCommentsInfo.hashCode())) * 31;
        UserId userId = this.copyOwnerId;
        int hashCode3 = (hashCode2 + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num = this.copyPostId;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.date;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        UserId userId2 = this.fromId;
        int hashCode6 = (hashCode5 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        WallGeo wallGeo = this.geo;
        int hashCode7 = (hashCode6 + (wallGeo == null ? 0 : wallGeo.hashCode())) * 31;
        Integer num3 = this.f36159id;
        int hashCode8 = (hashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Boolean bool = this.isFavorite;
        int hashCode9 = (hashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        BaseLikesInfo baseLikesInfo = this.likes;
        int hashCode10 = (hashCode9 + (baseLikesInfo == null ? 0 : baseLikesInfo.hashCode())) * 31;
        Integer num4 = this.postId;
        int hashCode11 = (hashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        WallPostSource wallPostSource = this.postSource;
        int hashCode12 = (hashCode11 + (wallPostSource == null ? 0 : wallPostSource.hashCode())) * 31;
        WallPostType wallPostType = this.postType;
        int hashCode13 = (hashCode12 + (wallPostType == null ? 0 : wallPostType.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode14 = (hashCode13 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        UserId userId3 = this.signerId;
        int hashCode15 = (hashCode14 + (userId3 == null ? 0 : userId3.hashCode())) * 31;
        String str = this.text;
        int hashCode16 = (hashCode15 + (str == null ? 0 : str.hashCode())) * 31;
        UserId userId4 = this.toId;
        return hashCode16 + (userId4 != null ? userId4.hashCode() : 0);
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @NotNull
    public String toString() {
        List<WallWallpostAttachment> list = this.attachments;
        BaseCommentsInfo baseCommentsInfo = this.comments;
        UserId userId = this.copyOwnerId;
        Integer num = this.copyPostId;
        Integer num2 = this.date;
        UserId userId2 = this.fromId;
        WallGeo wallGeo = this.geo;
        Integer num3 = this.f36159id;
        Boolean bool = this.isFavorite;
        BaseLikesInfo baseLikesInfo = this.likes;
        Integer num4 = this.postId;
        WallPostSource wallPostSource = this.postSource;
        WallPostType wallPostType = this.postType;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        UserId userId3 = this.signerId;
        String str = this.text;
        UserId userId4 = this.toId;
        return "WallWallpostToId(attachments=" + list + ", comments=" + baseCommentsInfo + ", copyOwnerId=" + userId + ", copyPostId=" + num + ", date=" + num2 + ", fromId=" + userId2 + ", geo=" + wallGeo + ", id=" + num3 + ", isFavorite=" + bool + ", likes=" + baseLikesInfo + ", postId=" + num4 + ", postSource=" + wallPostSource + ", postType=" + wallPostType + ", reposts=" + baseRepostsInfo + ", signerId=" + userId3 + ", text=" + str + ", toId=" + userId4 + ")";
    }

    public /* synthetic */ WallWallpostToId(List list, BaseCommentsInfo baseCommentsInfo, UserId userId, Integer num, Integer num2, UserId userId2, WallGeo wallGeo, Integer num3, Boolean bool, BaseLikesInfo baseLikesInfo, Integer num4, WallPostSource wallPostSource, WallPostType wallPostType, BaseRepostsInfo baseRepostsInfo, UserId userId3, String str, UserId userId4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : baseCommentsInfo, (i9 & 4) != 0 ? null : userId, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : num2, (i9 & 32) != 0 ? null : userId2, (i9 & 64) != 0 ? null : wallGeo, (i9 & 128) != 0 ? null : num3, (i9 & 256) != 0 ? null : bool, (i9 & 512) != 0 ? null : baseLikesInfo, (i9 & 1024) != 0 ? null : num4, (i9 & 2048) != 0 ? null : wallPostSource, (i9 & 4096) != 0 ? null : wallPostType, (i9 & 8192) != 0 ? null : baseRepostsInfo, (i9 & 16384) != 0 ? null : userId3, (i9 & 32768) != 0 ? null : str, (i9 & 65536) != 0 ? null : userId4);
    }
}

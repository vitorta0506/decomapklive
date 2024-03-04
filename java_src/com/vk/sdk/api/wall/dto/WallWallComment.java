package com.vk.sdk.api.wall.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.TCConstants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.comment.dto.CommentThread;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b;\b\u0086\b\u0018\u00002\u00020\u0001Bå\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001fJ\t\u0010?\u001a\u00020\u0003HÆ\u0003J\u0010\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00103J\u0011\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000eHÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010G\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\u0010\u0010H\u001a\u0004\u0018\u00010\u001dHÆ\u0003¢\u0006\u0002\u0010'J\u0010\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00103J\t\u0010J\u001a\u00020\u0005HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\t\u0010L\u001a\u00020\bHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00103J\u000b\u0010O\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010P\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eHÆ\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00103Jö\u0001\u0010R\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000e2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010SJ\u0013\u0010T\u001a\u00020\u001d2\b\u0010U\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010V\u001a\u00020\u0003HÖ\u0001J\t\u0010W\u001a\u00020\bHÖ\u0001R\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010(\u001a\u0004\b&\u0010'R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010%R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010,R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010!R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b2\u00103R\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b5\u00103R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b6\u00103R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b7\u00103R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b8\u00103R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010,R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00104\u001a\u0004\b>\u00103¨\u0006X"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallComment;", "", "id", "", "fromId", "Lcom/vk/dto/common/id/UserId;", "date", ViewHierarchyConstants.TEXT_KEY, "", "canEdit", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", ShareConstants.RESULT_POST_ID, "ownerId", "parentsStack", "", "photoId", "videoId", "attachments", "Lcom/vk/sdk/api/wall/dto/WallCommentAttachment;", "donut", "Lcom/vk/sdk/api/wall/dto/WallWallCommentDonut;", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "realOffset", "replyToUser", "replyToComment", "thread", "Lcom/vk/sdk/api/comment/dto/CommentThread;", "deleted", "", "pid", "(ILcom/vk/dto/common/id/UserId;ILjava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallWallCommentDonut;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Lcom/vk/sdk/api/comment/dto/CommentThread;Ljava/lang/Boolean;Ljava/lang/Integer;)V", "getAttachments", "()Ljava/util/List;", "getCanEdit", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getDate", "()I", "getDeleted", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getDonut", "()Lcom/vk/sdk/api/wall/dto/WallWallCommentDonut;", "getFromId", "()Lcom/vk/dto/common/id/UserId;", "getId", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getOwnerId", "getParentsStack", "getPhotoId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPid", "getPostId", "getRealOffset", "getReplyToComment", "getReplyToUser", "getText", "()Ljava/lang/String;", "getThread", "()Lcom/vk/sdk/api/comment/dto/CommentThread;", "getVideoId", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILcom/vk/dto/common/id/UserId;ILjava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/wall/dto/WallWallCommentDonut;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Lcom/vk/sdk/api/comment/dto/CommentThread;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/vk/sdk/api/wall/dto/WallWallComment;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallWallComment {
    @SerializedName("attachments")
    @Nullable
    private final List<WallCommentAttachment> attachments;
    @SerializedName("can_edit")
    @Nullable
    private final BaseBoolInt canEdit;
    @SerializedName("date")
    private final int date;
    @SerializedName("deleted")
    @Nullable
    private final Boolean deleted;
    @SerializedName("donut")
    @Nullable
    private final WallWallCommentDonut donut;
    @SerializedName("from_id")
    @NotNull
    private final UserId fromId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36157id;
    @SerializedName("likes")
    @Nullable
    private final BaseLikesInfo likes;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("parents_stack")
    @Nullable
    private final List<Integer> parentsStack;
    @SerializedName("photo_id")
    @Nullable
    private final Integer photoId;
    @SerializedName("pid")
    @Nullable
    private final Integer pid;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("real_offset")
    @Nullable
    private final Integer realOffset;
    @SerializedName("reply_to_comment")
    @Nullable
    private final Integer replyToComment;
    @SerializedName("reply_to_user")
    @Nullable
    private final UserId replyToUser;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;
    @SerializedName("thread")
    @Nullable
    private final CommentThread thread;
    @SerializedName(TCConstants.PLAYER_VIDEO_ID)
    @Nullable
    private final Integer videoId;

    public WallWallComment(int i9, @NotNull UserId fromId, int i10, @NotNull String text, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable UserId userId, @Nullable List<Integer> list, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<WallCommentAttachment> list2, @Nullable WallWallCommentDonut wallWallCommentDonut, @Nullable BaseLikesInfo baseLikesInfo, @Nullable Integer num4, @Nullable UserId userId2, @Nullable Integer num5, @Nullable CommentThread commentThread, @Nullable Boolean bool, @Nullable Integer num6) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(text, "text");
        this.f36157id = i9;
        this.fromId = fromId;
        this.date = i10;
        this.text = text;
        this.canEdit = baseBoolInt;
        this.postId = num;
        this.ownerId = userId;
        this.parentsStack = list;
        this.photoId = num2;
        this.videoId = num3;
        this.attachments = list2;
        this.donut = wallWallCommentDonut;
        this.likes = baseLikesInfo;
        this.realOffset = num4;
        this.replyToUser = userId2;
        this.replyToComment = num5;
        this.thread = commentThread;
        this.deleted = bool;
        this.pid = num6;
    }

    public final int component1() {
        return this.f36157id;
    }

    @Nullable
    public final Integer component10() {
        return this.videoId;
    }

    @Nullable
    public final List<WallCommentAttachment> component11() {
        return this.attachments;
    }

    @Nullable
    public final WallWallCommentDonut component12() {
        return this.donut;
    }

    @Nullable
    public final BaseLikesInfo component13() {
        return this.likes;
    }

    @Nullable
    public final Integer component14() {
        return this.realOffset;
    }

    @Nullable
    public final UserId component15() {
        return this.replyToUser;
    }

    @Nullable
    public final Integer component16() {
        return this.replyToComment;
    }

    @Nullable
    public final CommentThread component17() {
        return this.thread;
    }

    @Nullable
    public final Boolean component18() {
        return this.deleted;
    }

    @Nullable
    public final Integer component19() {
        return this.pid;
    }

    @NotNull
    public final UserId component2() {
        return this.fromId;
    }

    public final int component3() {
        return this.date;
    }

    @NotNull
    public final String component4() {
        return this.text;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.canEdit;
    }

    @Nullable
    public final Integer component6() {
        return this.postId;
    }

    @Nullable
    public final UserId component7() {
        return this.ownerId;
    }

    @Nullable
    public final List<Integer> component8() {
        return this.parentsStack;
    }

    @Nullable
    public final Integer component9() {
        return this.photoId;
    }

    @NotNull
    public final WallWallComment copy(int i9, @NotNull UserId fromId, int i10, @NotNull String text, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable UserId userId, @Nullable List<Integer> list, @Nullable Integer num2, @Nullable Integer num3, @Nullable List<WallCommentAttachment> list2, @Nullable WallWallCommentDonut wallWallCommentDonut, @Nullable BaseLikesInfo baseLikesInfo, @Nullable Integer num4, @Nullable UserId userId2, @Nullable Integer num5, @Nullable CommentThread commentThread, @Nullable Boolean bool, @Nullable Integer num6) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(text, "text");
        return new WallWallComment(i9, fromId, i10, text, baseBoolInt, num, userId, list, num2, num3, list2, wallWallCommentDonut, baseLikesInfo, num4, userId2, num5, commentThread, bool, num6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallWallComment) {
            WallWallComment wallWallComment = (WallWallComment) obj;
            return this.f36157id == wallWallComment.f36157id && Intrinsics.areEqual(this.fromId, wallWallComment.fromId) && this.date == wallWallComment.date && Intrinsics.areEqual(this.text, wallWallComment.text) && this.canEdit == wallWallComment.canEdit && Intrinsics.areEqual(this.postId, wallWallComment.postId) && Intrinsics.areEqual(this.ownerId, wallWallComment.ownerId) && Intrinsics.areEqual(this.parentsStack, wallWallComment.parentsStack) && Intrinsics.areEqual(this.photoId, wallWallComment.photoId) && Intrinsics.areEqual(this.videoId, wallWallComment.videoId) && Intrinsics.areEqual(this.attachments, wallWallComment.attachments) && Intrinsics.areEqual(this.donut, wallWallComment.donut) && Intrinsics.areEqual(this.likes, wallWallComment.likes) && Intrinsics.areEqual(this.realOffset, wallWallComment.realOffset) && Intrinsics.areEqual(this.replyToUser, wallWallComment.replyToUser) && Intrinsics.areEqual(this.replyToComment, wallWallComment.replyToComment) && Intrinsics.areEqual(this.thread, wallWallComment.thread) && Intrinsics.areEqual(this.deleted, wallWallComment.deleted) && Intrinsics.areEqual(this.pid, wallWallComment.pid);
        }
        return false;
    }

    @Nullable
    public final List<WallCommentAttachment> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final BaseBoolInt getCanEdit() {
        return this.canEdit;
    }

    public final int getDate() {
        return this.date;
    }

    @Nullable
    public final Boolean getDeleted() {
        return this.deleted;
    }

    @Nullable
    public final WallWallCommentDonut getDonut() {
        return this.donut;
    }

    @NotNull
    public final UserId getFromId() {
        return this.fromId;
    }

    public final int getId() {
        return this.f36157id;
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
    public final Integer getPhotoId() {
        return this.photoId;
    }

    @Nullable
    public final Integer getPid() {
        return this.pid;
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
    public final Integer getReplyToComment() {
        return this.replyToComment;
    }

    @Nullable
    public final UserId getReplyToUser() {
        return this.replyToUser;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final CommentThread getThread() {
        return this.thread;
    }

    @Nullable
    public final Integer getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        int hashCode = ((((((this.f36157id * 31) + this.fromId.hashCode()) * 31) + this.date) * 31) + this.text.hashCode()) * 31;
        BaseBoolInt baseBoolInt = this.canEdit;
        int hashCode2 = (hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        Integer num = this.postId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        UserId userId = this.ownerId;
        int hashCode4 = (hashCode3 + (userId == null ? 0 : userId.hashCode())) * 31;
        List<Integer> list = this.parentsStack;
        int hashCode5 = (hashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num2 = this.photoId;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.videoId;
        int hashCode7 = (hashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        List<WallCommentAttachment> list2 = this.attachments;
        int hashCode8 = (hashCode7 + (list2 == null ? 0 : list2.hashCode())) * 31;
        WallWallCommentDonut wallWallCommentDonut = this.donut;
        int hashCode9 = (hashCode8 + (wallWallCommentDonut == null ? 0 : wallWallCommentDonut.hashCode())) * 31;
        BaseLikesInfo baseLikesInfo = this.likes;
        int hashCode10 = (hashCode9 + (baseLikesInfo == null ? 0 : baseLikesInfo.hashCode())) * 31;
        Integer num4 = this.realOffset;
        int hashCode11 = (hashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        UserId userId2 = this.replyToUser;
        int hashCode12 = (hashCode11 + (userId2 == null ? 0 : userId2.hashCode())) * 31;
        Integer num5 = this.replyToComment;
        int hashCode13 = (hashCode12 + (num5 == null ? 0 : num5.hashCode())) * 31;
        CommentThread commentThread = this.thread;
        int hashCode14 = (hashCode13 + (commentThread == null ? 0 : commentThread.hashCode())) * 31;
        Boolean bool = this.deleted;
        int hashCode15 = (hashCode14 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num6 = this.pid;
        return hashCode15 + (num6 != null ? num6.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f36157id;
        UserId userId = this.fromId;
        int i10 = this.date;
        String str = this.text;
        BaseBoolInt baseBoolInt = this.canEdit;
        Integer num = this.postId;
        UserId userId2 = this.ownerId;
        List<Integer> list = this.parentsStack;
        Integer num2 = this.photoId;
        Integer num3 = this.videoId;
        List<WallCommentAttachment> list2 = this.attachments;
        WallWallCommentDonut wallWallCommentDonut = this.donut;
        BaseLikesInfo baseLikesInfo = this.likes;
        Integer num4 = this.realOffset;
        UserId userId3 = this.replyToUser;
        Integer num5 = this.replyToComment;
        CommentThread commentThread = this.thread;
        Boolean bool = this.deleted;
        Integer num6 = this.pid;
        return "WallWallComment(id=" + i9 + ", fromId=" + userId + ", date=" + i10 + ", text=" + str + ", canEdit=" + baseBoolInt + ", postId=" + num + ", ownerId=" + userId2 + ", parentsStack=" + list + ", photoId=" + num2 + ", videoId=" + num3 + ", attachments=" + list2 + ", donut=" + wallWallCommentDonut + ", likes=" + baseLikesInfo + ", realOffset=" + num4 + ", replyToUser=" + userId3 + ", replyToComment=" + num5 + ", thread=" + commentThread + ", deleted=" + bool + ", pid=" + num6 + ")";
    }

    public /* synthetic */ WallWallComment(int i9, UserId userId, int i10, String str, BaseBoolInt baseBoolInt, Integer num, UserId userId2, List list, Integer num2, Integer num3, List list2, WallWallCommentDonut wallWallCommentDonut, BaseLikesInfo baseLikesInfo, Integer num4, UserId userId3, Integer num5, CommentThread commentThread, Boolean bool, Integer num6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, i10, str, (i11 & 16) != 0 ? null : baseBoolInt, (i11 & 32) != 0 ? null : num, (i11 & 64) != 0 ? null : userId2, (i11 & 128) != 0 ? null : list, (i11 & 256) != 0 ? null : num2, (i11 & 512) != 0 ? null : num3, (i11 & 1024) != 0 ? null : list2, (i11 & 2048) != 0 ? null : wallWallCommentDonut, (i11 & 4096) != 0 ? null : baseLikesInfo, (i11 & 8192) != 0 ? null : num4, (i11 & 16384) != 0 ? null : userId3, (32768 & i11) != 0 ? null : num5, (65536 & i11) != 0 ? null : commentThread, (131072 & i11) != 0 ? null : bool, (i11 & 262144) != 0 ? null : num6);
    }
}

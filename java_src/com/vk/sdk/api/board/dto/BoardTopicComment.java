package com.vk.sdk.api.board.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.wall.dto.WallCommentAttachment;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u0010&\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jl\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\t\u0010.\u001a\u00020\u0007HÖ\u0001R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u0006/"}, d2 = {"Lcom/vk/sdk/api/board/dto/BoardTopicComment;", "", "date", "", "fromId", "id", ViewHierarchyConstants.TEXT_KEY, "", "attachments", "", "Lcom/vk/sdk/api/wall/dto/WallCommentAttachment;", "realOffset", "canEdit", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "(IIILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;)V", "getAttachments", "()Ljava/util/List;", "getCanEdit", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getDate", "()I", "getFromId", "getId", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getRealOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getText", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(IIILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;)Lcom/vk/sdk/api/board/dto/BoardTopicComment;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoardTopicComment {
    @SerializedName("attachments")
    @Nullable
    private final List<WallCommentAttachment> attachments;
    @SerializedName("can_edit")
    @Nullable
    private final BaseBoolInt canEdit;
    @SerializedName("date")
    private final int date;
    @SerializedName("from_id")
    private final int fromId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35751id;
    @SerializedName("likes")
    @Nullable
    private final BaseLikesInfo likes;
    @SerializedName("real_offset")
    @Nullable
    private final Integer realOffset;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    public BoardTopicComment(int i9, int i10, int i11, @NotNull String text, @Nullable List<WallCommentAttachment> list, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseLikesInfo baseLikesInfo) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.date = i9;
        this.fromId = i10;
        this.f35751id = i11;
        this.text = text;
        this.attachments = list;
        this.realOffset = num;
        this.canEdit = baseBoolInt;
        this.likes = baseLikesInfo;
    }

    public final int component1() {
        return this.date;
    }

    public final int component2() {
        return this.fromId;
    }

    public final int component3() {
        return this.f35751id;
    }

    @NotNull
    public final String component4() {
        return this.text;
    }

    @Nullable
    public final List<WallCommentAttachment> component5() {
        return this.attachments;
    }

    @Nullable
    public final Integer component6() {
        return this.realOffset;
    }

    @Nullable
    public final BaseBoolInt component7() {
        return this.canEdit;
    }

    @Nullable
    public final BaseLikesInfo component8() {
        return this.likes;
    }

    @NotNull
    public final BoardTopicComment copy(int i9, int i10, int i11, @NotNull String text, @Nullable List<WallCommentAttachment> list, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseLikesInfo baseLikesInfo) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new BoardTopicComment(i9, i10, i11, text, list, num, baseBoolInt, baseLikesInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BoardTopicComment) {
            BoardTopicComment boardTopicComment = (BoardTopicComment) obj;
            return this.date == boardTopicComment.date && this.fromId == boardTopicComment.fromId && this.f35751id == boardTopicComment.f35751id && Intrinsics.areEqual(this.text, boardTopicComment.text) && Intrinsics.areEqual(this.attachments, boardTopicComment.attachments) && Intrinsics.areEqual(this.realOffset, boardTopicComment.realOffset) && this.canEdit == boardTopicComment.canEdit && Intrinsics.areEqual(this.likes, boardTopicComment.likes);
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

    public final int getFromId() {
        return this.fromId;
    }

    public final int getId() {
        return this.f35751id;
    }

    @Nullable
    public final BaseLikesInfo getLikes() {
        return this.likes;
    }

    @Nullable
    public final Integer getRealOffset() {
        return this.realOffset;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode = ((((((this.date * 31) + this.fromId) * 31) + this.f35751id) * 31) + this.text.hashCode()) * 31;
        List<WallCommentAttachment> list = this.attachments;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.realOffset;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canEdit;
        int hashCode4 = (hashCode3 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseLikesInfo baseLikesInfo = this.likes;
        return hashCode4 + (baseLikesInfo != null ? baseLikesInfo.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.date;
        int i10 = this.fromId;
        int i11 = this.f35751id;
        String str = this.text;
        List<WallCommentAttachment> list = this.attachments;
        Integer num = this.realOffset;
        BaseBoolInt baseBoolInt = this.canEdit;
        BaseLikesInfo baseLikesInfo = this.likes;
        return "BoardTopicComment(date=" + i9 + ", fromId=" + i10 + ", id=" + i11 + ", text=" + str + ", attachments=" + list + ", realOffset=" + num + ", canEdit=" + baseBoolInt + ", likes=" + baseLikesInfo + ")";
    }

    public /* synthetic */ BoardTopicComment(int i9, int i10, int i11, String str, List list, Integer num, BaseBoolInt baseBoolInt, BaseLikesInfo baseLikesInfo, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, str, (i12 & 16) != 0 ? null : list, (i12 & 32) != 0 ? null : num, (i12 & 64) != 0 ? null : baseBoolInt, (i12 & 128) != 0 ? null : baseLikesInfo);
    }
}

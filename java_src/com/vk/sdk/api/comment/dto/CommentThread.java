package com.vk.sdk.api.comment.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.wall.dto.WallWallComment;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\rJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\rJN\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\n\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0011\u0010\rR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\u0014\u0010\r¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/comment/dto/CommentThread;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallComment;", "canPost", "", "showReplyButton", "groupsCanPost", "(ILjava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getCanPost", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCount", "()I", "getGroupsCanPost", "getItems", "()Ljava/util/List;", "getShowReplyButton", "component1", "component2", "component3", "component4", "component5", "copy", "(ILjava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/comment/dto/CommentThread;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CommentThread {
    @SerializedName("can_post")
    @Nullable
    private final Boolean canPost;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups_can_post")
    @Nullable
    private final Boolean groupsCanPost;
    @SerializedName("items")
    @Nullable
    private final List<WallWallComment> items;
    @SerializedName("show_reply_button")
    @Nullable
    private final Boolean showReplyButton;

    public CommentThread(int i9, @Nullable List<WallWallComment> list, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        this.count = i9;
        this.items = list;
        this.canPost = bool;
        this.showReplyButton = bool2;
        this.groupsCanPost = bool3;
    }

    public static /* synthetic */ CommentThread copy$default(CommentThread commentThread, int i9, List list, Boolean bool, Boolean bool2, Boolean bool3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = commentThread.count;
        }
        List<WallWallComment> list2 = list;
        if ((i10 & 2) != 0) {
            list2 = commentThread.items;
        }
        List list3 = list2;
        if ((i10 & 4) != 0) {
            bool = commentThread.canPost;
        }
        Boolean bool4 = bool;
        if ((i10 & 8) != 0) {
            bool2 = commentThread.showReplyButton;
        }
        Boolean bool5 = bool2;
        if ((i10 & 16) != 0) {
            bool3 = commentThread.groupsCanPost;
        }
        return commentThread.copy(i9, list3, bool4, bool5, bool3);
    }

    public final int component1() {
        return this.count;
    }

    @Nullable
    public final List<WallWallComment> component2() {
        return this.items;
    }

    @Nullable
    public final Boolean component3() {
        return this.canPost;
    }

    @Nullable
    public final Boolean component4() {
        return this.showReplyButton;
    }

    @Nullable
    public final Boolean component5() {
        return this.groupsCanPost;
    }

    @NotNull
    public final CommentThread copy(int i9, @Nullable List<WallWallComment> list, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        return new CommentThread(i9, list, bool, bool2, bool3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CommentThread) {
            CommentThread commentThread = (CommentThread) obj;
            return this.count == commentThread.count && Intrinsics.areEqual(this.items, commentThread.items) && Intrinsics.areEqual(this.canPost, commentThread.canPost) && Intrinsics.areEqual(this.showReplyButton, commentThread.showReplyButton) && Intrinsics.areEqual(this.groupsCanPost, commentThread.groupsCanPost);
        }
        return false;
    }

    @Nullable
    public final Boolean getCanPost() {
        return this.canPost;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final Boolean getGroupsCanPost() {
        return this.groupsCanPost;
    }

    @Nullable
    public final List<WallWallComment> getItems() {
        return this.items;
    }

    @Nullable
    public final Boolean getShowReplyButton() {
        return this.showReplyButton;
    }

    public int hashCode() {
        int i9 = this.count * 31;
        List<WallWallComment> list = this.items;
        int hashCode = (i9 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool = this.canPost;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.showReplyButton;
        int hashCode3 = (hashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.groupsCanPost;
        return hashCode3 + (bool3 != null ? bool3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<WallWallComment> list = this.items;
        Boolean bool = this.canPost;
        Boolean bool2 = this.showReplyButton;
        Boolean bool3 = this.groupsCanPost;
        return "CommentThread(count=" + i9 + ", items=" + list + ", canPost=" + bool + ", showReplyButton=" + bool2 + ", groupsCanPost=" + bool3 + ")";
    }

    public /* synthetic */ CommentThread(int i9, List list, Boolean bool, Boolean bool2, Boolean bool3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : list, (i10 & 4) != 0 ? null : bool, (i10 & 8) != 0 ? null : bool2, (i10 & 16) != 0 ? null : bool3);
    }
}

package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u000eJX\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0015\u0010\u000eR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0018\u0010\u000e¨\u0006&"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallGetCommentsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallComment;", "currentLevelCount", "canPost", "", "showReplyButton", "groupsCanPost", "(ILjava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getCanPost", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCount", "()I", "getCurrentLevelCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroupsCanPost", "getItems", "()Ljava/util/List;", "getShowReplyButton", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(ILjava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/wall/dto/WallGetCommentsResponse;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallGetCommentsResponse {
    @SerializedName("can_post")
    @Nullable
    private final Boolean canPost;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("current_level_count")
    @Nullable
    private final Integer currentLevelCount;
    @SerializedName("groups_can_post")
    @Nullable
    private final Boolean groupsCanPost;
    @SerializedName("items")
    @NotNull
    private final List<WallWallComment> items;
    @SerializedName("show_reply_button")
    @Nullable
    private final Boolean showReplyButton;

    public WallGetCommentsResponse(int i9, @NotNull List<WallWallComment> items, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.currentLevelCount = num;
        this.canPost = bool;
        this.showReplyButton = bool2;
        this.groupsCanPost = bool3;
    }

    public static /* synthetic */ WallGetCommentsResponse copy$default(WallGetCommentsResponse wallGetCommentsResponse, int i9, List list, Integer num, Boolean bool, Boolean bool2, Boolean bool3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = wallGetCommentsResponse.count;
        }
        List<WallWallComment> list2 = list;
        if ((i10 & 2) != 0) {
            list2 = wallGetCommentsResponse.items;
        }
        List list3 = list2;
        if ((i10 & 4) != 0) {
            num = wallGetCommentsResponse.currentLevelCount;
        }
        Integer num2 = num;
        if ((i10 & 8) != 0) {
            bool = wallGetCommentsResponse.canPost;
        }
        Boolean bool4 = bool;
        if ((i10 & 16) != 0) {
            bool2 = wallGetCommentsResponse.showReplyButton;
        }
        Boolean bool5 = bool2;
        if ((i10 & 32) != 0) {
            bool3 = wallGetCommentsResponse.groupsCanPost;
        }
        return wallGetCommentsResponse.copy(i9, list3, num2, bool4, bool5, bool3);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<WallWallComment> component2() {
        return this.items;
    }

    @Nullable
    public final Integer component3() {
        return this.currentLevelCount;
    }

    @Nullable
    public final Boolean component4() {
        return this.canPost;
    }

    @Nullable
    public final Boolean component5() {
        return this.showReplyButton;
    }

    @Nullable
    public final Boolean component6() {
        return this.groupsCanPost;
    }

    @NotNull
    public final WallGetCommentsResponse copy(int i9, @NotNull List<WallWallComment> items, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new WallGetCommentsResponse(i9, items, num, bool, bool2, bool3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallGetCommentsResponse) {
            WallGetCommentsResponse wallGetCommentsResponse = (WallGetCommentsResponse) obj;
            return this.count == wallGetCommentsResponse.count && Intrinsics.areEqual(this.items, wallGetCommentsResponse.items) && Intrinsics.areEqual(this.currentLevelCount, wallGetCommentsResponse.currentLevelCount) && Intrinsics.areEqual(this.canPost, wallGetCommentsResponse.canPost) && Intrinsics.areEqual(this.showReplyButton, wallGetCommentsResponse.showReplyButton) && Intrinsics.areEqual(this.groupsCanPost, wallGetCommentsResponse.groupsCanPost);
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
    public final Integer getCurrentLevelCount() {
        return this.currentLevelCount;
    }

    @Nullable
    public final Boolean getGroupsCanPost() {
        return this.groupsCanPost;
    }

    @NotNull
    public final List<WallWallComment> getItems() {
        return this.items;
    }

    @Nullable
    public final Boolean getShowReplyButton() {
        return this.showReplyButton;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        Integer num = this.currentLevelCount;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.canPost;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.showReplyButton;
        int hashCode4 = (hashCode3 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.groupsCanPost;
        return hashCode4 + (bool3 != null ? bool3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<WallWallComment> list = this.items;
        Integer num = this.currentLevelCount;
        Boolean bool = this.canPost;
        Boolean bool2 = this.showReplyButton;
        Boolean bool3 = this.groupsCanPost;
        return "WallGetCommentsResponse(count=" + i9 + ", items=" + list + ", currentLevelCount=" + num + ", canPost=" + bool + ", showReplyButton=" + bool2 + ", groupsCanPost=" + bool3 + ")";
    }

    public /* synthetic */ WallGetCommentsResponse(int i9, List list, Integer num, Boolean bool, Boolean bool2, Boolean bool3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : num, (i10 & 8) != 0 ? null : bool, (i10 & 16) != 0 ? null : bool2, (i10 & 32) != 0 ? null : bool3);
    }
}

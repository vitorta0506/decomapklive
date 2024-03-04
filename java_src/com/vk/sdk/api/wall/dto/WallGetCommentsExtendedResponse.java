package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroup;
import com.vk.sdk.api.users.dto.UsersUser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010!\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010%\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010&\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0012Jx\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020\r2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020-HÖ\u0001R\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001b\u0010\u0012R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001e\u0010\u0012¨\u0006."}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallGetCommentsExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallComment;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUser;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "currentLevelCount", "canPost", "", "showReplyButton", "groupsCanPost", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getCanPost", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCount", "()I", "getCurrentLevelCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroups", "()Ljava/util/List;", "getGroupsCanPost", "getItems", "getProfiles", "getShowReplyButton", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/wall/dto/WallGetCommentsExtendedResponse;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallGetCommentsExtendedResponse {
    @SerializedName("can_post")
    @Nullable
    private final Boolean canPost;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("current_level_count")
    @Nullable
    private final Integer currentLevelCount;
    @SerializedName("groups")
    @NotNull
    private final List<GroupsGroup> groups;
    @SerializedName("groups_can_post")
    @Nullable
    private final Boolean groupsCanPost;
    @SerializedName("items")
    @NotNull
    private final List<WallWallComment> items;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUser> profiles;
    @SerializedName("show_reply_button")
    @Nullable
    private final Boolean showReplyButton;

    public WallGetCommentsExtendedResponse(int i9, @NotNull List<WallWallComment> items, @NotNull List<UsersUser> profiles, @NotNull List<GroupsGroup> groups, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.count = i9;
        this.items = items;
        this.profiles = profiles;
        this.groups = groups;
        this.currentLevelCount = num;
        this.canPost = bool;
        this.showReplyButton = bool2;
        this.groupsCanPost = bool3;
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<WallWallComment> component2() {
        return this.items;
    }

    @NotNull
    public final List<UsersUser> component3() {
        return this.profiles;
    }

    @NotNull
    public final List<GroupsGroup> component4() {
        return this.groups;
    }

    @Nullable
    public final Integer component5() {
        return this.currentLevelCount;
    }

    @Nullable
    public final Boolean component6() {
        return this.canPost;
    }

    @Nullable
    public final Boolean component7() {
        return this.showReplyButton;
    }

    @Nullable
    public final Boolean component8() {
        return this.groupsCanPost;
    }

    @NotNull
    public final WallGetCommentsExtendedResponse copy(int i9, @NotNull List<WallWallComment> items, @NotNull List<UsersUser> profiles, @NotNull List<GroupsGroup> groups, @Nullable Integer num, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new WallGetCommentsExtendedResponse(i9, items, profiles, groups, num, bool, bool2, bool3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallGetCommentsExtendedResponse) {
            WallGetCommentsExtendedResponse wallGetCommentsExtendedResponse = (WallGetCommentsExtendedResponse) obj;
            return this.count == wallGetCommentsExtendedResponse.count && Intrinsics.areEqual(this.items, wallGetCommentsExtendedResponse.items) && Intrinsics.areEqual(this.profiles, wallGetCommentsExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, wallGetCommentsExtendedResponse.groups) && Intrinsics.areEqual(this.currentLevelCount, wallGetCommentsExtendedResponse.currentLevelCount) && Intrinsics.areEqual(this.canPost, wallGetCommentsExtendedResponse.canPost) && Intrinsics.areEqual(this.showReplyButton, wallGetCommentsExtendedResponse.showReplyButton) && Intrinsics.areEqual(this.groupsCanPost, wallGetCommentsExtendedResponse.groupsCanPost);
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

    @NotNull
    public final List<GroupsGroup> getGroups() {
        return this.groups;
    }

    @Nullable
    public final Boolean getGroupsCanPost() {
        return this.groupsCanPost;
    }

    @NotNull
    public final List<WallWallComment> getItems() {
        return this.items;
    }

    @NotNull
    public final List<UsersUser> getProfiles() {
        return this.profiles;
    }

    @Nullable
    public final Boolean getShowReplyButton() {
        return this.showReplyButton;
    }

    public int hashCode() {
        int hashCode = ((((((this.count * 31) + this.items.hashCode()) * 31) + this.profiles.hashCode()) * 31) + this.groups.hashCode()) * 31;
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
        List<UsersUser> list2 = this.profiles;
        List<GroupsGroup> list3 = this.groups;
        Integer num = this.currentLevelCount;
        Boolean bool = this.canPost;
        Boolean bool2 = this.showReplyButton;
        Boolean bool3 = this.groupsCanPost;
        return "WallGetCommentsExtendedResponse(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", currentLevelCount=" + num + ", canPost=" + bool + ", showReplyButton=" + bool2 + ", groupsCanPost=" + bool3 + ")";
    }

    public /* synthetic */ WallGetCommentsExtendedResponse(int i9, List list, List list2, List list3, Integer num, Boolean bool, Boolean bool2, Boolean bool3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, list2, list3, (i10 & 16) != 0 ? null : num, (i10 & 32) != 0 ? null : bool, (i10 & 64) != 0 ? null : bool2, (i10 & 128) != 0 ? null : bool3);
    }
}

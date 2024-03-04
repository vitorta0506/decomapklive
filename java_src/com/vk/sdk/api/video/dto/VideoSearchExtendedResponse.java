package com.vk.sdk.api.video.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0003JC\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/video/dto/VideoSearchExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/video/dto/VideoVideoFull;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUser;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoSearchExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @NotNull
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<VideoVideoFull> items;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUser> profiles;

    public VideoSearchExtendedResponse(int i9, @NotNull List<VideoVideoFull> items, @NotNull List<UsersUser> profiles, @NotNull List<GroupsGroupFull> groups) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.count = i9;
        this.items = items;
        this.profiles = profiles;
        this.groups = groups;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VideoSearchExtendedResponse copy$default(VideoSearchExtendedResponse videoSearchExtendedResponse, int i9, List list, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = videoSearchExtendedResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = videoSearchExtendedResponse.items;
        }
        if ((i10 & 4) != 0) {
            list2 = videoSearchExtendedResponse.profiles;
        }
        if ((i10 & 8) != 0) {
            list3 = videoSearchExtendedResponse.groups;
        }
        return videoSearchExtendedResponse.copy(i9, list, list2, list3);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<VideoVideoFull> component2() {
        return this.items;
    }

    @NotNull
    public final List<UsersUser> component3() {
        return this.profiles;
    }

    @NotNull
    public final List<GroupsGroupFull> component4() {
        return this.groups;
    }

    @NotNull
    public final VideoSearchExtendedResponse copy(int i9, @NotNull List<VideoVideoFull> items, @NotNull List<UsersUser> profiles, @NotNull List<GroupsGroupFull> groups) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new VideoSearchExtendedResponse(i9, items, profiles, groups);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSearchExtendedResponse) {
            VideoSearchExtendedResponse videoSearchExtendedResponse = (VideoSearchExtendedResponse) obj;
            return this.count == videoSearchExtendedResponse.count && Intrinsics.areEqual(this.items, videoSearchExtendedResponse.items) && Intrinsics.areEqual(this.profiles, videoSearchExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, videoSearchExtendedResponse.groups);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<VideoVideoFull> getItems() {
        return this.items;
    }

    @NotNull
    public final List<UsersUser> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        return (((((this.count * 31) + this.items.hashCode()) * 31) + this.profiles.hashCode()) * 31) + this.groups.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<VideoVideoFull> list = this.items;
        List<UsersUser> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "VideoSearchExtendedResponse(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }
}

package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005¢\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u0005HÆ\u0003JC\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00052\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesGetBannedExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesGetBannedExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @NotNull
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<Integer> items;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUserFull> profiles;

    public StoriesGetBannedExtendedResponse(int i9, @NotNull List<Integer> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.count = i9;
        this.items = items;
        this.profiles = profiles;
        this.groups = groups;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StoriesGetBannedExtendedResponse copy$default(StoriesGetBannedExtendedResponse storiesGetBannedExtendedResponse, int i9, List list, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = storiesGetBannedExtendedResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = storiesGetBannedExtendedResponse.items;
        }
        if ((i10 & 4) != 0) {
            list2 = storiesGetBannedExtendedResponse.profiles;
        }
        if ((i10 & 8) != 0) {
            list3 = storiesGetBannedExtendedResponse.groups;
        }
        return storiesGetBannedExtendedResponse.copy(i9, list, list2, list3);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<Integer> component2() {
        return this.items;
    }

    @NotNull
    public final List<UsersUserFull> component3() {
        return this.profiles;
    }

    @NotNull
    public final List<GroupsGroupFull> component4() {
        return this.groups;
    }

    @NotNull
    public final StoriesGetBannedExtendedResponse copy(int i9, @NotNull List<Integer> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new StoriesGetBannedExtendedResponse(i9, items, profiles, groups);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesGetBannedExtendedResponse) {
            StoriesGetBannedExtendedResponse storiesGetBannedExtendedResponse = (StoriesGetBannedExtendedResponse) obj;
            return this.count == storiesGetBannedExtendedResponse.count && Intrinsics.areEqual(this.items, storiesGetBannedExtendedResponse.items) && Intrinsics.areEqual(this.profiles, storiesGetBannedExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, storiesGetBannedExtendedResponse.groups);
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
    public final List<Integer> getItems() {
        return this.items;
    }

    @NotNull
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        return (((((this.count * 31) + this.items.hashCode()) * 31) + this.profiles.hashCode()) * 31) + this.groups.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<Integer> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        return "StoriesGetBannedExtendedResponse(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }
}

package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J6\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u0004\u0010\nR\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsLiveCovers;", "", "isEnabled", "", "isScalable", "storyIds", "", "", "(ZLjava/lang/Boolean;Ljava/util/List;)V", "()Z", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getStoryIds", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(ZLjava/lang/Boolean;Ljava/util/List;)Lcom/vk/sdk/api/groups/dto/GroupsLiveCovers;", "equals", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsLiveCovers {
    @SerializedName("is_enabled")
    private final boolean isEnabled;
    @SerializedName("is_scalable")
    @Nullable
    private final Boolean isScalable;
    @SerializedName("story_ids")
    @Nullable
    private final List<String> storyIds;

    public GroupsLiveCovers(boolean z10, @Nullable Boolean bool, @Nullable List<String> list) {
        this.isEnabled = z10;
        this.isScalable = bool;
        this.storyIds = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GroupsLiveCovers copy$default(GroupsLiveCovers groupsLiveCovers, boolean z10, Boolean bool, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = groupsLiveCovers.isEnabled;
        }
        if ((i9 & 2) != 0) {
            bool = groupsLiveCovers.isScalable;
        }
        if ((i9 & 4) != 0) {
            list = groupsLiveCovers.storyIds;
        }
        return groupsLiveCovers.copy(z10, bool, list);
    }

    public final boolean component1() {
        return this.isEnabled;
    }

    @Nullable
    public final Boolean component2() {
        return this.isScalable;
    }

    @Nullable
    public final List<String> component3() {
        return this.storyIds;
    }

    @NotNull
    public final GroupsLiveCovers copy(boolean z10, @Nullable Boolean bool, @Nullable List<String> list) {
        return new GroupsLiveCovers(z10, bool, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsLiveCovers) {
            GroupsLiveCovers groupsLiveCovers = (GroupsLiveCovers) obj;
            return this.isEnabled == groupsLiveCovers.isEnabled && Intrinsics.areEqual(this.isScalable, groupsLiveCovers.isScalable) && Intrinsics.areEqual(this.storyIds, groupsLiveCovers.storyIds);
        }
        return false;
    }

    @Nullable
    public final List<String> getStoryIds() {
        return this.storyIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z10 = this.isEnabled;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        Boolean bool = this.isScalable;
        int hashCode = (i9 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<String> list = this.storyIds;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    @Nullable
    public final Boolean isScalable() {
        return this.isScalable;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.isEnabled;
        Boolean bool = this.isScalable;
        List<String> list = this.storyIds;
        return "GroupsLiveCovers(isEnabled=" + z10 + ", isScalable=" + bool + ", storyIds=" + list + ")";
    }

    public /* synthetic */ GroupsLiveCovers(boolean z10, Boolean bool, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i9 & 2) != 0 ? null : bool, (i9 & 4) != 0 ? null : list);
    }
}

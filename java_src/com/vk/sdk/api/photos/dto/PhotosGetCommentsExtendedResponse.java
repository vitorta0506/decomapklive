package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import com.vk.sdk.api.users.dto.UsersUserFull;
import com.vk.sdk.api.wall.dto.WallWallComment;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014JT\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/wall/dto/WallWallComment;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "realOffset", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "getRealOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "copy", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosGetCommentsExtendedResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosGetCommentsExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @NotNull
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<WallWallComment> items;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUserFull> profiles;
    @SerializedName("real_offset")
    @Nullable
    private final Integer realOffset;

    public PhotosGetCommentsExtendedResponse(int i9, @NotNull List<WallWallComment> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.count = i9;
        this.items = items;
        this.profiles = profiles;
        this.groups = groups;
        this.realOffset = num;
    }

    public static /* synthetic */ PhotosGetCommentsExtendedResponse copy$default(PhotosGetCommentsExtendedResponse photosGetCommentsExtendedResponse, int i9, List list, List list2, List list3, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = photosGetCommentsExtendedResponse.count;
        }
        List<WallWallComment> list4 = list;
        if ((i10 & 2) != 0) {
            list4 = photosGetCommentsExtendedResponse.items;
        }
        List list5 = list4;
        List<UsersUserFull> list6 = list2;
        if ((i10 & 4) != 0) {
            list6 = photosGetCommentsExtendedResponse.profiles;
        }
        List list7 = list6;
        List<GroupsGroupFull> list8 = list3;
        if ((i10 & 8) != 0) {
            list8 = photosGetCommentsExtendedResponse.groups;
        }
        List list9 = list8;
        if ((i10 & 16) != 0) {
            num = photosGetCommentsExtendedResponse.realOffset;
        }
        return photosGetCommentsExtendedResponse.copy(i9, list5, list7, list9, num);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<WallWallComment> component2() {
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

    @Nullable
    public final Integer component5() {
        return this.realOffset;
    }

    @NotNull
    public final PhotosGetCommentsExtendedResponse copy(int i9, @NotNull List<WallWallComment> items, @NotNull List<UsersUserFull> profiles, @NotNull List<GroupsGroupFull> groups, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new PhotosGetCommentsExtendedResponse(i9, items, profiles, groups, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosGetCommentsExtendedResponse) {
            PhotosGetCommentsExtendedResponse photosGetCommentsExtendedResponse = (PhotosGetCommentsExtendedResponse) obj;
            return this.count == photosGetCommentsExtendedResponse.count && Intrinsics.areEqual(this.items, photosGetCommentsExtendedResponse.items) && Intrinsics.areEqual(this.profiles, photosGetCommentsExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, photosGetCommentsExtendedResponse.groups) && Intrinsics.areEqual(this.realOffset, photosGetCommentsExtendedResponse.realOffset);
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
    public final List<WallWallComment> getItems() {
        return this.items;
    }

    @NotNull
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    @Nullable
    public final Integer getRealOffset() {
        return this.realOffset;
    }

    public int hashCode() {
        int hashCode = ((((((this.count * 31) + this.items.hashCode()) * 31) + this.profiles.hashCode()) * 31) + this.groups.hashCode()) * 31;
        Integer num = this.realOffset;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<WallWallComment> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroupFull> list3 = this.groups;
        Integer num = this.realOffset;
        return "PhotosGetCommentsExtendedResponse(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", realOffset=" + num + ")";
    }

    public /* synthetic */ PhotosGetCommentsExtendedResponse(int i9, List list, List list2, List list3, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, list2, list3, (i10 & 16) != 0 ? null : num);
    }
}

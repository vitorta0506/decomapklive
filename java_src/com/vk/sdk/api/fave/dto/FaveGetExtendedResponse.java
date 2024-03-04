package com.vk.sdk.api.fave.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroup;
import com.vk.sdk.api.users.dto.UsersUserFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003JP\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/fave/dto/FaveGetExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/fave/dto/FaveBookmark;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getGroups", "()Ljava/util/List;", "getItems", "getProfiles", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/fave/dto/FaveGetExtendedResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FaveGetExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroup> groups;
    @SerializedName("items")
    @Nullable
    private final List<FaveBookmark> items;
    @SerializedName("profiles")
    @Nullable
    private final List<UsersUserFull> profiles;

    public FaveGetExtendedResponse() {
        this(null, null, null, null, 15, null);
    }

    public FaveGetExtendedResponse(@Nullable Integer num, @Nullable List<FaveBookmark> list, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroup> list3) {
        this.count = num;
        this.items = list;
        this.profiles = list2;
        this.groups = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FaveGetExtendedResponse copy$default(FaveGetExtendedResponse faveGetExtendedResponse, Integer num, List list, List list2, List list3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = faveGetExtendedResponse.count;
        }
        if ((i9 & 2) != 0) {
            list = faveGetExtendedResponse.items;
        }
        if ((i9 & 4) != 0) {
            list2 = faveGetExtendedResponse.profiles;
        }
        if ((i9 & 8) != 0) {
            list3 = faveGetExtendedResponse.groups;
        }
        return faveGetExtendedResponse.copy(num, list, list2, list3);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final List<FaveBookmark> component2() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> component3() {
        return this.profiles;
    }

    @Nullable
    public final List<GroupsGroup> component4() {
        return this.groups;
    }

    @NotNull
    public final FaveGetExtendedResponse copy(@Nullable Integer num, @Nullable List<FaveBookmark> list, @Nullable List<UsersUserFull> list2, @Nullable List<GroupsGroup> list3) {
        return new FaveGetExtendedResponse(num, list, list2, list3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FaveGetExtendedResponse) {
            FaveGetExtendedResponse faveGetExtendedResponse = (FaveGetExtendedResponse) obj;
            return Intrinsics.areEqual(this.count, faveGetExtendedResponse.count) && Intrinsics.areEqual(this.items, faveGetExtendedResponse.items) && Intrinsics.areEqual(this.profiles, faveGetExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, faveGetExtendedResponse.groups);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroup> getGroups() {
        return this.groups;
    }

    @Nullable
    public final List<FaveBookmark> getItems() {
        return this.items;
    }

    @Nullable
    public final List<UsersUserFull> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<FaveBookmark> list = this.items;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<UsersUserFull> list2 = this.profiles;
        int hashCode3 = (hashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<GroupsGroup> list3 = this.groups;
        return hashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<FaveBookmark> list = this.items;
        List<UsersUserFull> list2 = this.profiles;
        List<GroupsGroup> list3 = this.groups;
        return "FaveGetExtendedResponse(count=" + num + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ")";
    }

    public /* synthetic */ FaveGetExtendedResponse(Integer num, List list, List list2, List list3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : list2, (i9 & 8) != 0 ? null : list3);
    }
}

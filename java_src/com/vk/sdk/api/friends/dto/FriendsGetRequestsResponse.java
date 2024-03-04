package com.vk.sdk.api.friends.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ8\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/friends/dto/FriendsGetRequestsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/dto/common/id/UserId;", "countUnread", "(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCountUnread", "getItems", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;)Lcom/vk/sdk/api/friends/dto/FriendsGetRequestsResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FriendsGetRequestsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("count_unread")
    @Nullable
    private final Integer countUnread;
    @SerializedName("items")
    @Nullable
    private final List<UserId> items;

    public FriendsGetRequestsResponse() {
        this(null, null, null, 7, null);
    }

    public FriendsGetRequestsResponse(@Nullable Integer num, @Nullable List<UserId> list, @Nullable Integer num2) {
        this.count = num;
        this.items = list;
        this.countUnread = num2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FriendsGetRequestsResponse copy$default(FriendsGetRequestsResponse friendsGetRequestsResponse, Integer num, List list, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = friendsGetRequestsResponse.count;
        }
        if ((i9 & 2) != 0) {
            list = friendsGetRequestsResponse.items;
        }
        if ((i9 & 4) != 0) {
            num2 = friendsGetRequestsResponse.countUnread;
        }
        return friendsGetRequestsResponse.copy(num, list, num2);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final List<UserId> component2() {
        return this.items;
    }

    @Nullable
    public final Integer component3() {
        return this.countUnread;
    }

    @NotNull
    public final FriendsGetRequestsResponse copy(@Nullable Integer num, @Nullable List<UserId> list, @Nullable Integer num2) {
        return new FriendsGetRequestsResponse(num, list, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendsGetRequestsResponse) {
            FriendsGetRequestsResponse friendsGetRequestsResponse = (FriendsGetRequestsResponse) obj;
            return Intrinsics.areEqual(this.count, friendsGetRequestsResponse.count) && Intrinsics.areEqual(this.items, friendsGetRequestsResponse.items) && Intrinsics.areEqual(this.countUnread, friendsGetRequestsResponse.countUnread);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final Integer getCountUnread() {
        return this.countUnread;
    }

    @Nullable
    public final List<UserId> getItems() {
        return this.items;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<UserId> list = this.items;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        Integer num2 = this.countUnread;
        return hashCode2 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<UserId> list = this.items;
        Integer num2 = this.countUnread;
        return "FriendsGetRequestsResponse(count=" + num + ", items=" + list + ", countUnread=" + num2 + ")";
    }

    public /* synthetic */ FriendsGetRequestsResponse(Integer num, List list, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : num2);
    }
}

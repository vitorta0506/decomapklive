package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroupFull;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J5\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketGetOrdersExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/market/dto/MarketOrder;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(ILjava/util/List;Ljava/util/List;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketGetOrdersExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<MarketOrder> items;

    public MarketGetOrdersExtendedResponse(int i9, @NotNull List<MarketOrder> items, @Nullable List<GroupsGroupFull> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.groups = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MarketGetOrdersExtendedResponse copy$default(MarketGetOrdersExtendedResponse marketGetOrdersExtendedResponse, int i9, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = marketGetOrdersExtendedResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = marketGetOrdersExtendedResponse.items;
        }
        if ((i10 & 4) != 0) {
            list2 = marketGetOrdersExtendedResponse.groups;
        }
        return marketGetOrdersExtendedResponse.copy(i9, list, list2);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<MarketOrder> component2() {
        return this.items;
    }

    @Nullable
    public final List<GroupsGroupFull> component3() {
        return this.groups;
    }

    @NotNull
    public final MarketGetOrdersExtendedResponse copy(int i9, @NotNull List<MarketOrder> items, @Nullable List<GroupsGroupFull> list) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new MarketGetOrdersExtendedResponse(i9, items, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketGetOrdersExtendedResponse) {
            MarketGetOrdersExtendedResponse marketGetOrdersExtendedResponse = (MarketGetOrdersExtendedResponse) obj;
            return this.count == marketGetOrdersExtendedResponse.count && Intrinsics.areEqual(this.items, marketGetOrdersExtendedResponse.items) && Intrinsics.areEqual(this.groups, marketGetOrdersExtendedResponse.groups);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final List<GroupsGroupFull> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<MarketOrder> getItems() {
        return this.items;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        List<GroupsGroupFull> list = this.groups;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<MarketOrder> list = this.items;
        List<GroupsGroupFull> list2 = this.groups;
        return "MarketGetOrdersExtendedResponse(count=" + i9 + ", items=" + list + ", groups=" + list2 + ")";
    }

    public /* synthetic */ MarketGetOrdersExtendedResponse(int i9, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : list2);
    }
}

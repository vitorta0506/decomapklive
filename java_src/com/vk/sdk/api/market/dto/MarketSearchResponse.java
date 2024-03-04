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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007HÆ\u0003JQ\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketSearchResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "viewType", "Lcom/vk/sdk/api/market/dto/MarketServicesViewType;", "items", "", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "variants", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;", "(ILcom/vk/sdk/api/market/dto/MarketServicesViewType;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getVariants", "getViewType", "()Lcom/vk/sdk/api/market/dto/MarketServicesViewType;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketSearchResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @Nullable
    private final List<GroupsGroupFull> groups;
    @SerializedName("items")
    @NotNull
    private final List<MarketMarketItem> items;
    @SerializedName("variants")
    @Nullable
    private final List<MarketMarketItem> variants;
    @SerializedName("view_type")
    @NotNull
    private final MarketServicesViewType viewType;

    public MarketSearchResponse(int i9, @NotNull MarketServicesViewType viewType, @NotNull List<MarketMarketItem> items, @Nullable List<MarketMarketItem> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(viewType, "viewType");
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.viewType = viewType;
        this.items = items;
        this.variants = list;
        this.groups = list2;
    }

    public static /* synthetic */ MarketSearchResponse copy$default(MarketSearchResponse marketSearchResponse, int i9, MarketServicesViewType marketServicesViewType, List list, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = marketSearchResponse.count;
        }
        if ((i10 & 2) != 0) {
            marketServicesViewType = marketSearchResponse.viewType;
        }
        MarketServicesViewType marketServicesViewType2 = marketServicesViewType;
        List<MarketMarketItem> list4 = list;
        if ((i10 & 4) != 0) {
            list4 = marketSearchResponse.items;
        }
        List list5 = list4;
        List<MarketMarketItem> list6 = list2;
        if ((i10 & 8) != 0) {
            list6 = marketSearchResponse.variants;
        }
        List list7 = list6;
        List<GroupsGroupFull> list8 = list3;
        if ((i10 & 16) != 0) {
            list8 = marketSearchResponse.groups;
        }
        return marketSearchResponse.copy(i9, marketServicesViewType2, list5, list7, list8);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final MarketServicesViewType component2() {
        return this.viewType;
    }

    @NotNull
    public final List<MarketMarketItem> component3() {
        return this.items;
    }

    @Nullable
    public final List<MarketMarketItem> component4() {
        return this.variants;
    }

    @Nullable
    public final List<GroupsGroupFull> component5() {
        return this.groups;
    }

    @NotNull
    public final MarketSearchResponse copy(int i9, @NotNull MarketServicesViewType viewType, @NotNull List<MarketMarketItem> items, @Nullable List<MarketMarketItem> list, @Nullable List<GroupsGroupFull> list2) {
        Intrinsics.checkNotNullParameter(viewType, "viewType");
        Intrinsics.checkNotNullParameter(items, "items");
        return new MarketSearchResponse(i9, viewType, items, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketSearchResponse) {
            MarketSearchResponse marketSearchResponse = (MarketSearchResponse) obj;
            return this.count == marketSearchResponse.count && this.viewType == marketSearchResponse.viewType && Intrinsics.areEqual(this.items, marketSearchResponse.items) && Intrinsics.areEqual(this.variants, marketSearchResponse.variants) && Intrinsics.areEqual(this.groups, marketSearchResponse.groups);
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
    public final List<MarketMarketItem> getItems() {
        return this.items;
    }

    @Nullable
    public final List<MarketMarketItem> getVariants() {
        return this.variants;
    }

    @NotNull
    public final MarketServicesViewType getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int hashCode = ((((this.count * 31) + this.viewType.hashCode()) * 31) + this.items.hashCode()) * 31;
        List<MarketMarketItem> list = this.variants;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<GroupsGroupFull> list2 = this.groups;
        return hashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        MarketServicesViewType marketServicesViewType = this.viewType;
        List<MarketMarketItem> list = this.items;
        List<MarketMarketItem> list2 = this.variants;
        List<GroupsGroupFull> list3 = this.groups;
        return "MarketSearchResponse(count=" + i9 + ", viewType=" + marketServicesViewType + ", items=" + list + ", variants=" + list2 + ", groups=" + list3 + ")";
    }

    public /* synthetic */ MarketSearchResponse(int i9, MarketServicesViewType marketServicesViewType, List list, List list2, List list3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, marketServicesViewType, list, (i10 & 8) != 0 ? null : list2, (i10 & 16) != 0 ? null : list3);
    }
}

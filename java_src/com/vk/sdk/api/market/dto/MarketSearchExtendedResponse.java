package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u0011\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J?\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketSearchExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "viewType", "Lcom/vk/sdk/api/market/dto/MarketServicesViewType;", "items", "", "Lcom/vk/sdk/api/market/dto/MarketMarketItemFull;", "variants", "(ILcom/vk/sdk/api/market/dto/MarketServicesViewType;Ljava/util/List;Ljava/util/List;)V", "getCount", "()I", "getItems", "()Ljava/util/List;", "getVariants", "getViewType", "()Lcom/vk/sdk/api/market/dto/MarketServicesViewType;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketSearchExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("items")
    @NotNull
    private final List<MarketMarketItemFull> items;
    @SerializedName("variants")
    @Nullable
    private final List<MarketMarketItemFull> variants;
    @SerializedName("view_type")
    @NotNull
    private final MarketServicesViewType viewType;

    public MarketSearchExtendedResponse(int i9, @NotNull MarketServicesViewType viewType, @NotNull List<MarketMarketItemFull> items, @Nullable List<MarketMarketItemFull> list) {
        Intrinsics.checkNotNullParameter(viewType, "viewType");
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.viewType = viewType;
        this.items = items;
        this.variants = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MarketSearchExtendedResponse copy$default(MarketSearchExtendedResponse marketSearchExtendedResponse, int i9, MarketServicesViewType marketServicesViewType, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = marketSearchExtendedResponse.count;
        }
        if ((i10 & 2) != 0) {
            marketServicesViewType = marketSearchExtendedResponse.viewType;
        }
        if ((i10 & 4) != 0) {
            list = marketSearchExtendedResponse.items;
        }
        if ((i10 & 8) != 0) {
            list2 = marketSearchExtendedResponse.variants;
        }
        return marketSearchExtendedResponse.copy(i9, marketServicesViewType, list, list2);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final MarketServicesViewType component2() {
        return this.viewType;
    }

    @NotNull
    public final List<MarketMarketItemFull> component3() {
        return this.items;
    }

    @Nullable
    public final List<MarketMarketItemFull> component4() {
        return this.variants;
    }

    @NotNull
    public final MarketSearchExtendedResponse copy(int i9, @NotNull MarketServicesViewType viewType, @NotNull List<MarketMarketItemFull> items, @Nullable List<MarketMarketItemFull> list) {
        Intrinsics.checkNotNullParameter(viewType, "viewType");
        Intrinsics.checkNotNullParameter(items, "items");
        return new MarketSearchExtendedResponse(i9, viewType, items, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketSearchExtendedResponse) {
            MarketSearchExtendedResponse marketSearchExtendedResponse = (MarketSearchExtendedResponse) obj;
            return this.count == marketSearchExtendedResponse.count && this.viewType == marketSearchExtendedResponse.viewType && Intrinsics.areEqual(this.items, marketSearchExtendedResponse.items) && Intrinsics.areEqual(this.variants, marketSearchExtendedResponse.variants);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<MarketMarketItemFull> getItems() {
        return this.items;
    }

    @Nullable
    public final List<MarketMarketItemFull> getVariants() {
        return this.variants;
    }

    @NotNull
    public final MarketServicesViewType getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int hashCode = ((((this.count * 31) + this.viewType.hashCode()) * 31) + this.items.hashCode()) * 31;
        List<MarketMarketItemFull> list = this.variants;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        MarketServicesViewType marketServicesViewType = this.viewType;
        List<MarketMarketItemFull> list = this.items;
        List<MarketMarketItemFull> list2 = this.variants;
        return "MarketSearchExtendedResponse(count=" + i9 + ", viewType=" + marketServicesViewType + ", items=" + list + ", variants=" + list2 + ")";
    }

    public /* synthetic */ MarketSearchExtendedResponse(int i9, MarketServicesViewType marketServicesViewType, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, marketServicesViewType, list, (i10 & 8) != 0 ? null : list2);
    }
}

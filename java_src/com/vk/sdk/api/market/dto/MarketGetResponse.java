package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J>\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketGetResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "variants", "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getItems", "()Ljava/util/List;", "getVariants", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/market/dto/MarketGetResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketGetResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("items")
    @Nullable
    private final List<MarketMarketItem> items;
    @SerializedName("variants")
    @Nullable
    private final List<MarketMarketItem> variants;

    public MarketGetResponse() {
        this(null, null, null, 7, null);
    }

    public MarketGetResponse(@Nullable Integer num, @Nullable List<MarketMarketItem> list, @Nullable List<MarketMarketItem> list2) {
        this.count = num;
        this.items = list;
        this.variants = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MarketGetResponse copy$default(MarketGetResponse marketGetResponse, Integer num, List list, List list2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = marketGetResponse.count;
        }
        if ((i9 & 2) != 0) {
            list = marketGetResponse.items;
        }
        if ((i9 & 4) != 0) {
            list2 = marketGetResponse.variants;
        }
        return marketGetResponse.copy(num, list, list2);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @Nullable
    public final List<MarketMarketItem> component2() {
        return this.items;
    }

    @Nullable
    public final List<MarketMarketItem> component3() {
        return this.variants;
    }

    @NotNull
    public final MarketGetResponse copy(@Nullable Integer num, @Nullable List<MarketMarketItem> list, @Nullable List<MarketMarketItem> list2) {
        return new MarketGetResponse(num, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketGetResponse) {
            MarketGetResponse marketGetResponse = (MarketGetResponse) obj;
            return Intrinsics.areEqual(this.count, marketGetResponse.count) && Intrinsics.areEqual(this.items, marketGetResponse.items) && Intrinsics.areEqual(this.variants, marketGetResponse.variants);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<MarketMarketItem> getItems() {
        return this.items;
    }

    @Nullable
    public final List<MarketMarketItem> getVariants() {
        return this.variants;
    }

    public int hashCode() {
        Integer num = this.count;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        List<MarketMarketItem> list = this.items;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<MarketMarketItem> list2 = this.variants;
        return hashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        List<MarketMarketItem> list = this.items;
        List<MarketMarketItem> list2 = this.variants;
        return "MarketGetResponse(count=" + num + ", items=" + list + ", variants=" + list2 + ")";
    }

    public /* synthetic */ MarketGetResponse(Integer num, List list, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : list, (i9 & 4) != 0 ? null : list2);
    }
}

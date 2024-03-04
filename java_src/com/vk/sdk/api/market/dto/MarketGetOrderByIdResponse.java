package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketGetOrderByIdResponse;", "", "order", "Lcom/vk/sdk/api/market/dto/MarketOrder;", "(Lcom/vk/sdk/api/market/dto/MarketOrder;)V", "getOrder", "()Lcom/vk/sdk/api/market/dto/MarketOrder;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketGetOrderByIdResponse {
    @SerializedName("order")
    @Nullable
    private final MarketOrder order;

    public MarketGetOrderByIdResponse() {
        this(null, 1, null);
    }

    public MarketGetOrderByIdResponse(@Nullable MarketOrder marketOrder) {
        this.order = marketOrder;
    }

    public static /* synthetic */ MarketGetOrderByIdResponse copy$default(MarketGetOrderByIdResponse marketGetOrderByIdResponse, MarketOrder marketOrder, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            marketOrder = marketGetOrderByIdResponse.order;
        }
        return marketGetOrderByIdResponse.copy(marketOrder);
    }

    @Nullable
    public final MarketOrder component1() {
        return this.order;
    }

    @NotNull
    public final MarketGetOrderByIdResponse copy(@Nullable MarketOrder marketOrder) {
        return new MarketGetOrderByIdResponse(marketOrder);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MarketGetOrderByIdResponse) && Intrinsics.areEqual(this.order, ((MarketGetOrderByIdResponse) obj).order);
    }

    @Nullable
    public final MarketOrder getOrder() {
        return this.order;
    }

    public int hashCode() {
        MarketOrder marketOrder = this.order;
        if (marketOrder == null) {
            return 0;
        }
        return marketOrder.hashCode();
    }

    @NotNull
    public String toString() {
        MarketOrder marketOrder = this.order;
        return "MarketGetOrderByIdResponse(order=" + marketOrder + ")";
    }

    public /* synthetic */ MarketGetOrderByIdResponse(MarketOrder marketOrder, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : marketOrder);
    }
}

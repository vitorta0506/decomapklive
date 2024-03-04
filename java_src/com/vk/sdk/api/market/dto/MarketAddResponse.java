package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\u0003HÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketAddResponse;", "", "marketItemId", "", "(I)V", "getMarketItemId", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketAddResponse {
    @SerializedName("market_item_id")
    private final int marketItemId;

    public MarketAddResponse(int i9) {
        this.marketItemId = i9;
    }

    public static /* synthetic */ MarketAddResponse copy$default(MarketAddResponse marketAddResponse, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = marketAddResponse.marketItemId;
        }
        return marketAddResponse.copy(i9);
    }

    public final int component1() {
        return this.marketItemId;
    }

    @NotNull
    public final MarketAddResponse copy(int i9) {
        return new MarketAddResponse(i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MarketAddResponse) && this.marketItemId == ((MarketAddResponse) obj).marketItemId;
    }

    public final int getMarketItemId() {
        return this.marketItemId;
    }

    public int hashCode() {
        return this.marketItemId;
    }

    @NotNull
    public String toString() {
        int i9 = this.marketItemId;
        return "MarketAddResponse(marketItemId=" + i9 + ")";
    }
}

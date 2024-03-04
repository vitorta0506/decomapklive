package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.sdk.api.market.dto.MarketPrice;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\fJ0\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseLinkProduct;", "", InAppPurchaseMetaData.KEY_PRICE, "Lcom/vk/sdk/api/market/dto/MarketPrice;", "merchant", "", "ordersCount", "", "(Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/Integer;)V", "getMerchant", "()Ljava/lang/String;", "getOrdersCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "component1", "component2", "component3", "copy", "(Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/sdk/api/base/dto/BaseLinkProduct;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseLinkProduct {
    @SerializedName("merchant")
    @Nullable
    private final String merchant;
    @SerializedName("orders_count")
    @Nullable
    private final Integer ordersCount;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @NotNull
    private final MarketPrice price;

    public BaseLinkProduct(@NotNull MarketPrice price, @Nullable String str, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(price, "price");
        this.price = price;
        this.merchant = str;
        this.ordersCount = num;
    }

    public static /* synthetic */ BaseLinkProduct copy$default(BaseLinkProduct baseLinkProduct, MarketPrice marketPrice, String str, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            marketPrice = baseLinkProduct.price;
        }
        if ((i9 & 2) != 0) {
            str = baseLinkProduct.merchant;
        }
        if ((i9 & 4) != 0) {
            num = baseLinkProduct.ordersCount;
        }
        return baseLinkProduct.copy(marketPrice, str, num);
    }

    @NotNull
    public final MarketPrice component1() {
        return this.price;
    }

    @Nullable
    public final String component2() {
        return this.merchant;
    }

    @Nullable
    public final Integer component3() {
        return this.ordersCount;
    }

    @NotNull
    public final BaseLinkProduct copy(@NotNull MarketPrice price, @Nullable String str, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(price, "price");
        return new BaseLinkProduct(price, str, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BaseLinkProduct) {
            BaseLinkProduct baseLinkProduct = (BaseLinkProduct) obj;
            return Intrinsics.areEqual(this.price, baseLinkProduct.price) && Intrinsics.areEqual(this.merchant, baseLinkProduct.merchant) && Intrinsics.areEqual(this.ordersCount, baseLinkProduct.ordersCount);
        }
        return false;
    }

    @Nullable
    public final String getMerchant() {
        return this.merchant;
    }

    @Nullable
    public final Integer getOrdersCount() {
        return this.ordersCount;
    }

    @NotNull
    public final MarketPrice getPrice() {
        return this.price;
    }

    public int hashCode() {
        int hashCode = this.price.hashCode() * 31;
        String str = this.merchant;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.ordersCount;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        MarketPrice marketPrice = this.price;
        String str = this.merchant;
        Integer num = this.ordersCount;
        return "BaseLinkProduct(price=" + marketPrice + ", merchant=" + str + ", ordersCount=" + num + ")";
    }

    public /* synthetic */ BaseLinkProduct(MarketPrice marketPrice, String str, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(marketPrice, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : num);
    }
}

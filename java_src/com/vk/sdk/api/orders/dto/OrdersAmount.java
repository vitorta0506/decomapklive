package com.vk.sdk.api.orders.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0006HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/orders/dto/OrdersAmount;", "", "amounts", "", "Lcom/vk/sdk/api/orders/dto/OrdersAmountItem;", InAppPurchaseMetaData.KEY_CURRENCY, "", "(Ljava/util/List;Ljava/lang/String;)V", "getAmounts", "()Ljava/util/List;", "getCurrency", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class OrdersAmount {
    @SerializedName("amounts")
    @Nullable
    private final List<OrdersAmountItem> amounts;
    @SerializedName(InAppPurchaseMetaData.KEY_CURRENCY)
    @Nullable
    private final String currency;

    public OrdersAmount() {
        this(null, null, 3, null);
    }

    public OrdersAmount(@Nullable List<OrdersAmountItem> list, @Nullable String str) {
        this.amounts = list;
        this.currency = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OrdersAmount copy$default(OrdersAmount ordersAmount, List list, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = ordersAmount.amounts;
        }
        if ((i9 & 2) != 0) {
            str = ordersAmount.currency;
        }
        return ordersAmount.copy(list, str);
    }

    @Nullable
    public final List<OrdersAmountItem> component1() {
        return this.amounts;
    }

    @Nullable
    public final String component2() {
        return this.currency;
    }

    @NotNull
    public final OrdersAmount copy(@Nullable List<OrdersAmountItem> list, @Nullable String str) {
        return new OrdersAmount(list, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OrdersAmount) {
            OrdersAmount ordersAmount = (OrdersAmount) obj;
            return Intrinsics.areEqual(this.amounts, ordersAmount.amounts) && Intrinsics.areEqual(this.currency, ordersAmount.currency);
        }
        return false;
    }

    @Nullable
    public final List<OrdersAmountItem> getAmounts() {
        return this.amounts;
    }

    @Nullable
    public final String getCurrency() {
        return this.currency;
    }

    public int hashCode() {
        List<OrdersAmountItem> list = this.amounts;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.currency;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<OrdersAmountItem> list = this.amounts;
        String str = this.currency;
        return "OrdersAmount(amounts=" + list + ", currency=" + str + ")";
    }

    public /* synthetic */ OrdersAmount(List list, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : str);
    }
}

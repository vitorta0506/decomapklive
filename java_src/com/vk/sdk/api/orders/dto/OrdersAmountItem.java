package com.vk.sdk.api.orders.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/orders/dto/OrdersAmountItem;", "", "amount", "", "description", "", "votes", "(Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)V", "getAmount", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getDescription", "()Ljava/lang/String;", "getVotes", "component1", "component2", "component3", "copy", "(Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/orders/dto/OrdersAmountItem;", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class OrdersAmountItem {
    @SerializedName("amount")
    @Nullable
    private final Float amount;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("votes")
    @Nullable
    private final String votes;

    public OrdersAmountItem() {
        this(null, null, null, 7, null);
    }

    public OrdersAmountItem(@Nullable Float f10, @Nullable String str, @Nullable String str2) {
        this.amount = f10;
        this.description = str;
        this.votes = str2;
    }

    public static /* synthetic */ OrdersAmountItem copy$default(OrdersAmountItem ordersAmountItem, Float f10, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = ordersAmountItem.amount;
        }
        if ((i9 & 2) != 0) {
            str = ordersAmountItem.description;
        }
        if ((i9 & 4) != 0) {
            str2 = ordersAmountItem.votes;
        }
        return ordersAmountItem.copy(f10, str, str2);
    }

    @Nullable
    public final Float component1() {
        return this.amount;
    }

    @Nullable
    public final String component2() {
        return this.description;
    }

    @Nullable
    public final String component3() {
        return this.votes;
    }

    @NotNull
    public final OrdersAmountItem copy(@Nullable Float f10, @Nullable String str, @Nullable String str2) {
        return new OrdersAmountItem(f10, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OrdersAmountItem) {
            OrdersAmountItem ordersAmountItem = (OrdersAmountItem) obj;
            return Intrinsics.areEqual((Object) this.amount, (Object) ordersAmountItem.amount) && Intrinsics.areEqual(this.description, ordersAmountItem.description) && Intrinsics.areEqual(this.votes, ordersAmountItem.votes);
        }
        return false;
    }

    @Nullable
    public final Float getAmount() {
        return this.amount;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getVotes() {
        return this.votes;
    }

    public int hashCode() {
        Float f10 = this.amount;
        int hashCode = (f10 == null ? 0 : f10.hashCode()) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.votes;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Float f10 = this.amount;
        String str = this.description;
        String str2 = this.votes;
        return "OrdersAmountItem(amount=" + f10 + ", description=" + str + ", votes=" + str2 + ")";
    }

    public /* synthetic */ OrdersAmountItem(Float f10, String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : f10, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2);
    }
}

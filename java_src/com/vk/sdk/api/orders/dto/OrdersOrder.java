package com.vk.sdk.api.orders.dto;

import com.facebook.AccessToken;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.huawei.hms.adapter.internal.CommonCode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.debug.internal.DebugCoroutineInfoImplKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001,B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\nHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jq\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020*HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010¨\u0006-"}, d2 = {"Lcom/vk/sdk/api/orders/dto/OrdersOrder;", "", "amount", "", "appOrderId", "date", "id", BaseConfig.ITEM, "receiverId", "status", "Lcom/vk/sdk/api/orders/dto/OrdersOrder$Status;", Contants.USER_ID, "cancelTransactionId", "transactionId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/orders/dto/OrdersOrder$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAmount", "()Ljava/lang/String;", "getAppOrderId", "getCancelTransactionId", "getDate", "getId", "getItem", "getReceiverId", "getStatus", "()Lcom/vk/sdk/api/orders/dto/OrdersOrder$Status;", "getTransactionId", "getUserId", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "Status", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class OrdersOrder {
    @SerializedName("amount")
    @NotNull
    private final String amount;
    @SerializedName("app_order_id")
    @NotNull
    private final String appOrderId;
    @SerializedName("cancel_transaction_id")
    @Nullable
    private final String cancelTransactionId;
    @SerializedName("date")
    @NotNull
    private final String date;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35968id;
    @SerializedName(BaseConfig.ITEM)
    @NotNull
    private final String item;
    @SerializedName("receiver_id")
    @NotNull
    private final String receiverId;
    @SerializedName("status")
    @NotNull
    private final Status status;
    @SerializedName(CommonCode.MapKey.TRANSACTION_ID)
    @Nullable
    private final String transactionId;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final String userId;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/vk/sdk/api/orders/dto/OrdersOrder$Status;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", DebugCoroutineInfoImplKt.CREATED, "CHARGED", "REFUNDED", "CHARGEABLE", "CANCELLED", "DECLINED", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Status {
        CREATED("created"),
        CHARGED("charged"),
        REFUNDED("refunded"),
        CHARGEABLE("chargeable"),
        CANCELLED(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED),
        DECLINED("declined");
        
        @NotNull
        private final String value;

        Status(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public OrdersOrder(@NotNull String amount, @NotNull String appOrderId, @NotNull String date, @NotNull String id2, @NotNull String item, @NotNull String receiverId, @NotNull Status status, @NotNull String userId, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(appOrderId, "appOrderId");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(receiverId, "receiverId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.amount = amount;
        this.appOrderId = appOrderId;
        this.date = date;
        this.f35968id = id2;
        this.item = item;
        this.receiverId = receiverId;
        this.status = status;
        this.userId = userId;
        this.cancelTransactionId = str;
        this.transactionId = str2;
    }

    @NotNull
    public final String component1() {
        return this.amount;
    }

    @Nullable
    public final String component10() {
        return this.transactionId;
    }

    @NotNull
    public final String component2() {
        return this.appOrderId;
    }

    @NotNull
    public final String component3() {
        return this.date;
    }

    @NotNull
    public final String component4() {
        return this.f35968id;
    }

    @NotNull
    public final String component5() {
        return this.item;
    }

    @NotNull
    public final String component6() {
        return this.receiverId;
    }

    @NotNull
    public final Status component7() {
        return this.status;
    }

    @NotNull
    public final String component8() {
        return this.userId;
    }

    @Nullable
    public final String component9() {
        return this.cancelTransactionId;
    }

    @NotNull
    public final OrdersOrder copy(@NotNull String amount, @NotNull String appOrderId, @NotNull String date, @NotNull String id2, @NotNull String item, @NotNull String receiverId, @NotNull Status status, @NotNull String userId, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(appOrderId, "appOrderId");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(receiverId, "receiverId");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new OrdersOrder(amount, appOrderId, date, id2, item, receiverId, status, userId, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OrdersOrder) {
            OrdersOrder ordersOrder = (OrdersOrder) obj;
            return Intrinsics.areEqual(this.amount, ordersOrder.amount) && Intrinsics.areEqual(this.appOrderId, ordersOrder.appOrderId) && Intrinsics.areEqual(this.date, ordersOrder.date) && Intrinsics.areEqual(this.f35968id, ordersOrder.f35968id) && Intrinsics.areEqual(this.item, ordersOrder.item) && Intrinsics.areEqual(this.receiverId, ordersOrder.receiverId) && this.status == ordersOrder.status && Intrinsics.areEqual(this.userId, ordersOrder.userId) && Intrinsics.areEqual(this.cancelTransactionId, ordersOrder.cancelTransactionId) && Intrinsics.areEqual(this.transactionId, ordersOrder.transactionId);
        }
        return false;
    }

    @NotNull
    public final String getAmount() {
        return this.amount;
    }

    @NotNull
    public final String getAppOrderId() {
        return this.appOrderId;
    }

    @Nullable
    public final String getCancelTransactionId() {
        return this.cancelTransactionId;
    }

    @NotNull
    public final String getDate() {
        return this.date;
    }

    @NotNull
    public final String getId() {
        return this.f35968id;
    }

    @NotNull
    public final String getItem() {
        return this.item;
    }

    @NotNull
    public final String getReceiverId() {
        return this.receiverId;
    }

    @NotNull
    public final Status getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTransactionId() {
        return this.transactionId;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((this.amount.hashCode() * 31) + this.appOrderId.hashCode()) * 31) + this.date.hashCode()) * 31) + this.f35968id.hashCode()) * 31) + this.item.hashCode()) * 31) + this.receiverId.hashCode()) * 31) + this.status.hashCode()) * 31) + this.userId.hashCode()) * 31;
        String str = this.cancelTransactionId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.transactionId;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.amount;
        String str2 = this.appOrderId;
        String str3 = this.date;
        String str4 = this.f35968id;
        String str5 = this.item;
        String str6 = this.receiverId;
        Status status = this.status;
        String str7 = this.userId;
        String str8 = this.cancelTransactionId;
        String str9 = this.transactionId;
        return "OrdersOrder(amount=" + str + ", appOrderId=" + str2 + ", date=" + str3 + ", id=" + str4 + ", item=" + str5 + ", receiverId=" + str6 + ", status=" + status + ", userId=" + str7 + ", cancelTransactionId=" + str8 + ", transactionId=" + str9 + ")";
    }

    public /* synthetic */ OrdersOrder(String str, String str2, String str3, String str4, String str5, String str6, Status status, String str7, String str8, String str9, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, status, str7, (i9 & 256) != 0 ? null : str8, (i9 & 512) != 0 ? null : str9);
    }
}

package com.vk.sdk.api.orders.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b8\b\u0086\b\u0018\u00002\u00020\u0001B½\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0017J\t\u00100\u001a\u00020\u0003HÆ\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u00103\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010%J\u000b\u00104\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u00106\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010%J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0006HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0006HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0006HÆ\u0003JÖ\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010CJ\u0013\u0010D\u001a\u00020\u00102\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020\u0003HÖ\u0001J\t\u0010G\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b \u0010\u0019R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001fR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001cR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b#\u0010\u0019R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b$\u0010%R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001fR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001cR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001fR\u0016\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001cR\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010&\u001a\u0004\b,\u0010%R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001cR\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b.\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001f¨\u0006H"}, d2 = {"Lcom/vk/sdk/api/orders/dto/OrdersSubscription;", "", "createTime", "", "id", "itemId", "", "period", "periodStartTime", InAppPurchaseMetaData.KEY_PRICE, "status", "updateTime", "cancelReason", "nextBillTime", "expireTime", "pendingCancel", "", "title", "appId", "applicationName", "photoUrl", "testMode", "trialExpireTime", "(IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V", "getAppId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getApplicationName", "()Ljava/lang/String;", "getCancelReason", "getCreateTime", "()I", "getExpireTime", "getId", "getItemId", "getNextBillTime", "getPendingCancel", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getPeriod", "getPeriodStartTime", "getPhotoUrl", "getPrice", "getStatus", "getTestMode", "getTitle", "getTrialExpireTime", "getUpdateTime", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/vk/sdk/api/orders/dto/OrdersSubscription;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class OrdersSubscription {
    @SerializedName("app_id")
    @Nullable
    private final Integer appId;
    @SerializedName("application_name")
    @Nullable
    private final String applicationName;
    @SerializedName("cancel_reason")
    @Nullable
    private final String cancelReason;
    @SerializedName("create_time")
    private final int createTime;
    @SerializedName(PushConstants.REGISTER_STATUS_EXPIRE_TIME)
    @Nullable
    private final Integer expireTime;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35969id;
    @SerializedName(EventTrackingUtils.ITEM_ID)
    @NotNull
    private final String itemId;
    @SerializedName("next_bill_time")
    @Nullable
    private final Integer nextBillTime;
    @SerializedName("pending_cancel")
    @Nullable
    private final Boolean pendingCancel;
    @SerializedName("period")
    private final int period;
    @SerializedName("period_start_time")
    private final int periodStartTime;
    @SerializedName("photo_url")
    @Nullable
    private final String photoUrl;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    private final int price;
    @SerializedName("status")
    @NotNull
    private final String status;
    @SerializedName("test_mode")
    @Nullable
    private final Boolean testMode;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("trial_expire_time")
    @Nullable
    private final Integer trialExpireTime;
    @SerializedName("update_time")
    private final int updateTime;

    public OrdersSubscription(int i9, int i10, @NotNull String itemId, int i11, int i12, int i13, @NotNull String status, int i14, @Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable String str2, @Nullable Integer num3, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool2, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(itemId, "itemId");
        Intrinsics.checkNotNullParameter(status, "status");
        this.createTime = i9;
        this.f35969id = i10;
        this.itemId = itemId;
        this.period = i11;
        this.periodStartTime = i12;
        this.price = i13;
        this.status = status;
        this.updateTime = i14;
        this.cancelReason = str;
        this.nextBillTime = num;
        this.expireTime = num2;
        this.pendingCancel = bool;
        this.title = str2;
        this.appId = num3;
        this.applicationName = str3;
        this.photoUrl = str4;
        this.testMode = bool2;
        this.trialExpireTime = num4;
    }

    public final int component1() {
        return this.createTime;
    }

    @Nullable
    public final Integer component10() {
        return this.nextBillTime;
    }

    @Nullable
    public final Integer component11() {
        return this.expireTime;
    }

    @Nullable
    public final Boolean component12() {
        return this.pendingCancel;
    }

    @Nullable
    public final String component13() {
        return this.title;
    }

    @Nullable
    public final Integer component14() {
        return this.appId;
    }

    @Nullable
    public final String component15() {
        return this.applicationName;
    }

    @Nullable
    public final String component16() {
        return this.photoUrl;
    }

    @Nullable
    public final Boolean component17() {
        return this.testMode;
    }

    @Nullable
    public final Integer component18() {
        return this.trialExpireTime;
    }

    public final int component2() {
        return this.f35969id;
    }

    @NotNull
    public final String component3() {
        return this.itemId;
    }

    public final int component4() {
        return this.period;
    }

    public final int component5() {
        return this.periodStartTime;
    }

    public final int component6() {
        return this.price;
    }

    @NotNull
    public final String component7() {
        return this.status;
    }

    public final int component8() {
        return this.updateTime;
    }

    @Nullable
    public final String component9() {
        return this.cancelReason;
    }

    @NotNull
    public final OrdersSubscription copy(int i9, int i10, @NotNull String itemId, int i11, int i12, int i13, @NotNull String status, int i14, @Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable String str2, @Nullable Integer num3, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool2, @Nullable Integer num4) {
        Intrinsics.checkNotNullParameter(itemId, "itemId");
        Intrinsics.checkNotNullParameter(status, "status");
        return new OrdersSubscription(i9, i10, itemId, i11, i12, i13, status, i14, str, num, num2, bool, str2, num3, str3, str4, bool2, num4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OrdersSubscription) {
            OrdersSubscription ordersSubscription = (OrdersSubscription) obj;
            return this.createTime == ordersSubscription.createTime && this.f35969id == ordersSubscription.f35969id && Intrinsics.areEqual(this.itemId, ordersSubscription.itemId) && this.period == ordersSubscription.period && this.periodStartTime == ordersSubscription.periodStartTime && this.price == ordersSubscription.price && Intrinsics.areEqual(this.status, ordersSubscription.status) && this.updateTime == ordersSubscription.updateTime && Intrinsics.areEqual(this.cancelReason, ordersSubscription.cancelReason) && Intrinsics.areEqual(this.nextBillTime, ordersSubscription.nextBillTime) && Intrinsics.areEqual(this.expireTime, ordersSubscription.expireTime) && Intrinsics.areEqual(this.pendingCancel, ordersSubscription.pendingCancel) && Intrinsics.areEqual(this.title, ordersSubscription.title) && Intrinsics.areEqual(this.appId, ordersSubscription.appId) && Intrinsics.areEqual(this.applicationName, ordersSubscription.applicationName) && Intrinsics.areEqual(this.photoUrl, ordersSubscription.photoUrl) && Intrinsics.areEqual(this.testMode, ordersSubscription.testMode) && Intrinsics.areEqual(this.trialExpireTime, ordersSubscription.trialExpireTime);
        }
        return false;
    }

    @Nullable
    public final Integer getAppId() {
        return this.appId;
    }

    @Nullable
    public final String getApplicationName() {
        return this.applicationName;
    }

    @Nullable
    public final String getCancelReason() {
        return this.cancelReason;
    }

    public final int getCreateTime() {
        return this.createTime;
    }

    @Nullable
    public final Integer getExpireTime() {
        return this.expireTime;
    }

    public final int getId() {
        return this.f35969id;
    }

    @NotNull
    public final String getItemId() {
        return this.itemId;
    }

    @Nullable
    public final Integer getNextBillTime() {
        return this.nextBillTime;
    }

    @Nullable
    public final Boolean getPendingCancel() {
        return this.pendingCancel;
    }

    public final int getPeriod() {
        return this.period;
    }

    public final int getPeriodStartTime() {
        return this.periodStartTime;
    }

    @Nullable
    public final String getPhotoUrl() {
        return this.photoUrl;
    }

    public final int getPrice() {
        return this.price;
    }

    @NotNull
    public final String getStatus() {
        return this.status;
    }

    @Nullable
    public final Boolean getTestMode() {
        return this.testMode;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final Integer getTrialExpireTime() {
        return this.trialExpireTime;
    }

    public final int getUpdateTime() {
        return this.updateTime;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((this.createTime * 31) + this.f35969id) * 31) + this.itemId.hashCode()) * 31) + this.period) * 31) + this.periodStartTime) * 31) + this.price) * 31) + this.status.hashCode()) * 31) + this.updateTime) * 31;
        String str = this.cancelReason;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.nextBillTime;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.expireTime;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool = this.pendingCancel;
        int hashCode5 = (hashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.title;
        int hashCode6 = (hashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num3 = this.appId;
        int hashCode7 = (hashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str3 = this.applicationName;
        int hashCode8 = (hashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.photoUrl;
        int hashCode9 = (hashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Boolean bool2 = this.testMode;
        int hashCode10 = (hashCode9 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num4 = this.trialExpireTime;
        return hashCode10 + (num4 != null ? num4.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.createTime;
        int i10 = this.f35969id;
        String str = this.itemId;
        int i11 = this.period;
        int i12 = this.periodStartTime;
        int i13 = this.price;
        String str2 = this.status;
        int i14 = this.updateTime;
        String str3 = this.cancelReason;
        Integer num = this.nextBillTime;
        Integer num2 = this.expireTime;
        Boolean bool = this.pendingCancel;
        String str4 = this.title;
        Integer num3 = this.appId;
        String str5 = this.applicationName;
        String str6 = this.photoUrl;
        Boolean bool2 = this.testMode;
        Integer num4 = this.trialExpireTime;
        return "OrdersSubscription(createTime=" + i9 + ", id=" + i10 + ", itemId=" + str + ", period=" + i11 + ", periodStartTime=" + i12 + ", price=" + i13 + ", status=" + str2 + ", updateTime=" + i14 + ", cancelReason=" + str3 + ", nextBillTime=" + num + ", expireTime=" + num2 + ", pendingCancel=" + bool + ", title=" + str4 + ", appId=" + num3 + ", applicationName=" + str5 + ", photoUrl=" + str6 + ", testMode=" + bool2 + ", trialExpireTime=" + num4 + ")";
    }

    public /* synthetic */ OrdersSubscription(int i9, int i10, String str, int i11, int i12, int i13, String str2, int i14, String str3, Integer num, Integer num2, Boolean bool, String str4, Integer num3, String str5, String str6, Boolean bool2, Integer num4, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, str, i11, i12, i13, str2, i14, (i15 & 256) != 0 ? null : str3, (i15 & 512) != 0 ? null : num, (i15 & 1024) != 0 ? null : num2, (i15 & 2048) != 0 ? null : bool, (i15 & 4096) != 0 ? null : str4, (i15 & 8192) != 0 ? null : num3, (i15 & 16384) != 0 ? null : str5, (32768 & i15) != 0 ? null : str6, (65536 & i15) != 0 ? null : bool2, (i15 & 131072) != 0 ? null : num4);
    }
}

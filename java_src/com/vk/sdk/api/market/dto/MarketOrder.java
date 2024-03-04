package com.vk.sdk.api.market.dto;

import com.facebook.AccessToken;
import com.facebook.appevents.integrity.IntegrityManager;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseLink;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B¯\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\u0002\u0010\u0019J\t\u00102\u001a\u00020\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\t\u0010:\u001a\u00020\u0005HÆ\u0003J\t\u0010;\u001a\u00020\u0005HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u000bHÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\rHÆ\u0003JÆ\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÆ\u0001¢\u0006\u0002\u0010CJ\u0013\u0010D\u001a\u00020E2\b\u0010F\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010G\u001a\u00020\u0003HÖ\u0001J\t\u0010H\u001a\u00020\rHÖ\u0001R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001bR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010 R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010 R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010 R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001bR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010#R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\b/\u00100¨\u0006I"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketOrder;", "", "id", "", "groupId", "Lcom/vk/dto/common/id/UserId;", Contants.USER_ID, "date", "status", "itemsCount", "totalPrice", "Lcom/vk/sdk/api/market/dto/MarketPrice;", "displayOrderId", "", "trackNumber", "trackLink", "comment", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "merchantComment", Contants.Weight, "previewOrderItems", "", "Lcom/vk/sdk/api/market/dto/MarketOrderItem;", "cancelInfo", "Lcom/vk/sdk/api/base/dto/BaseLink;", "(ILcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;IIILcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseLink;)V", "getAddress", "()Ljava/lang/String;", "getCancelInfo", "()Lcom/vk/sdk/api/base/dto/BaseLink;", "getComment", "getDate", "()I", "getDisplayOrderId", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getId", "getItemsCount", "getMerchantComment", "getPreviewOrderItems", "()Ljava/util/List;", "getStatus", "getTotalPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "getTrackLink", "getTrackNumber", "getUserId", "getWeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;IIILcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseLink;)Lcom/vk/sdk/api/market/dto/MarketOrder;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketOrder {
    @SerializedName(IntegrityManager.INTEGRITY_TYPE_ADDRESS)
    @Nullable
    private final String address;
    @SerializedName("cancel_info")
    @Nullable
    private final BaseLink cancelInfo;
    @SerializedName("comment")
    @Nullable
    private final String comment;
    @SerializedName("date")
    private final int date;
    @SerializedName("display_order_id")
    @Nullable
    private final String displayOrderId;
    @SerializedName("group_id")
    @NotNull
    private final UserId groupId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35895id;
    @SerializedName("items_count")
    private final int itemsCount;
    @SerializedName("merchant_comment")
    @Nullable
    private final String merchantComment;
    @SerializedName("preview_order_items")
    @Nullable
    private final List<MarketOrderItem> previewOrderItems;
    @SerializedName("status")
    private final int status;
    @SerializedName("total_price")
    @NotNull
    private final MarketPrice totalPrice;
    @SerializedName("track_link")
    @Nullable
    private final String trackLink;
    @SerializedName("track_number")
    @Nullable
    private final String trackNumber;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;
    @SerializedName(Contants.Weight)
    @Nullable
    private final Integer weight;

    public MarketOrder(int i9, @NotNull UserId groupId, @NotNull UserId userId, int i10, int i11, int i12, @NotNull MarketPrice totalPrice, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Integer num, @Nullable List<MarketOrderItem> list, @Nullable BaseLink baseLink) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(totalPrice, "totalPrice");
        this.f35895id = i9;
        this.groupId = groupId;
        this.userId = userId;
        this.date = i10;
        this.status = i11;
        this.itemsCount = i12;
        this.totalPrice = totalPrice;
        this.displayOrderId = str;
        this.trackNumber = str2;
        this.trackLink = str3;
        this.comment = str4;
        this.address = str5;
        this.merchantComment = str6;
        this.weight = num;
        this.previewOrderItems = list;
        this.cancelInfo = baseLink;
    }

    public final int component1() {
        return this.f35895id;
    }

    @Nullable
    public final String component10() {
        return this.trackLink;
    }

    @Nullable
    public final String component11() {
        return this.comment;
    }

    @Nullable
    public final String component12() {
        return this.address;
    }

    @Nullable
    public final String component13() {
        return this.merchantComment;
    }

    @Nullable
    public final Integer component14() {
        return this.weight;
    }

    @Nullable
    public final List<MarketOrderItem> component15() {
        return this.previewOrderItems;
    }

    @Nullable
    public final BaseLink component16() {
        return this.cancelInfo;
    }

    @NotNull
    public final UserId component2() {
        return this.groupId;
    }

    @NotNull
    public final UserId component3() {
        return this.userId;
    }

    public final int component4() {
        return this.date;
    }

    public final int component5() {
        return this.status;
    }

    public final int component6() {
        return this.itemsCount;
    }

    @NotNull
    public final MarketPrice component7() {
        return this.totalPrice;
    }

    @Nullable
    public final String component8() {
        return this.displayOrderId;
    }

    @Nullable
    public final String component9() {
        return this.trackNumber;
    }

    @NotNull
    public final MarketOrder copy(int i9, @NotNull UserId groupId, @NotNull UserId userId, int i10, int i11, int i12, @NotNull MarketPrice totalPrice, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Integer num, @Nullable List<MarketOrderItem> list, @Nullable BaseLink baseLink) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(totalPrice, "totalPrice");
        return new MarketOrder(i9, groupId, userId, i10, i11, i12, totalPrice, str, str2, str3, str4, str5, str6, num, list, baseLink);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketOrder) {
            MarketOrder marketOrder = (MarketOrder) obj;
            return this.f35895id == marketOrder.f35895id && Intrinsics.areEqual(this.groupId, marketOrder.groupId) && Intrinsics.areEqual(this.userId, marketOrder.userId) && this.date == marketOrder.date && this.status == marketOrder.status && this.itemsCount == marketOrder.itemsCount && Intrinsics.areEqual(this.totalPrice, marketOrder.totalPrice) && Intrinsics.areEqual(this.displayOrderId, marketOrder.displayOrderId) && Intrinsics.areEqual(this.trackNumber, marketOrder.trackNumber) && Intrinsics.areEqual(this.trackLink, marketOrder.trackLink) && Intrinsics.areEqual(this.comment, marketOrder.comment) && Intrinsics.areEqual(this.address, marketOrder.address) && Intrinsics.areEqual(this.merchantComment, marketOrder.merchantComment) && Intrinsics.areEqual(this.weight, marketOrder.weight) && Intrinsics.areEqual(this.previewOrderItems, marketOrder.previewOrderItems) && Intrinsics.areEqual(this.cancelInfo, marketOrder.cancelInfo);
        }
        return false;
    }

    @Nullable
    public final String getAddress() {
        return this.address;
    }

    @Nullable
    public final BaseLink getCancelInfo() {
        return this.cancelInfo;
    }

    @Nullable
    public final String getComment() {
        return this.comment;
    }

    public final int getDate() {
        return this.date;
    }

    @Nullable
    public final String getDisplayOrderId() {
        return this.displayOrderId;
    }

    @NotNull
    public final UserId getGroupId() {
        return this.groupId;
    }

    public final int getId() {
        return this.f35895id;
    }

    public final int getItemsCount() {
        return this.itemsCount;
    }

    @Nullable
    public final String getMerchantComment() {
        return this.merchantComment;
    }

    @Nullable
    public final List<MarketOrderItem> getPreviewOrderItems() {
        return this.previewOrderItems;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final MarketPrice getTotalPrice() {
        return this.totalPrice;
    }

    @Nullable
    public final String getTrackLink() {
        return this.trackLink;
    }

    @Nullable
    public final String getTrackNumber() {
        return this.trackNumber;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    @Nullable
    public final Integer getWeight() {
        return this.weight;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.f35895id * 31) + this.groupId.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.date) * 31) + this.status) * 31) + this.itemsCount) * 31) + this.totalPrice.hashCode()) * 31;
        String str = this.displayOrderId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.trackNumber;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.trackLink;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.comment;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.address;
        int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.merchantComment;
        int hashCode7 = (hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num = this.weight;
        int hashCode8 = (hashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        List<MarketOrderItem> list = this.previewOrderItems;
        int hashCode9 = (hashCode8 + (list == null ? 0 : list.hashCode())) * 31;
        BaseLink baseLink = this.cancelInfo;
        return hashCode9 + (baseLink != null ? baseLink.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35895id;
        UserId userId = this.groupId;
        UserId userId2 = this.userId;
        int i10 = this.date;
        int i11 = this.status;
        int i12 = this.itemsCount;
        MarketPrice marketPrice = this.totalPrice;
        String str = this.displayOrderId;
        String str2 = this.trackNumber;
        String str3 = this.trackLink;
        String str4 = this.comment;
        String str5 = this.address;
        String str6 = this.merchantComment;
        Integer num = this.weight;
        List<MarketOrderItem> list = this.previewOrderItems;
        BaseLink baseLink = this.cancelInfo;
        return "MarketOrder(id=" + i9 + ", groupId=" + userId + ", userId=" + userId2 + ", date=" + i10 + ", status=" + i11 + ", itemsCount=" + i12 + ", totalPrice=" + marketPrice + ", displayOrderId=" + str + ", trackNumber=" + str2 + ", trackLink=" + str3 + ", comment=" + str4 + ", address=" + str5 + ", merchantComment=" + str6 + ", weight=" + num + ", previewOrderItems=" + list + ", cancelInfo=" + baseLink + ")";
    }

    public /* synthetic */ MarketOrder(int i9, UserId userId, UserId userId2, int i10, int i11, int i12, MarketPrice marketPrice, String str, String str2, String str3, String str4, String str5, String str6, Integer num, List list, BaseLink baseLink, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, userId2, i10, i11, i12, marketPrice, (i13 & 128) != 0 ? null : str, (i13 & 256) != 0 ? null : str2, (i13 & 512) != 0 ? null : str3, (i13 & 1024) != 0 ? null : str4, (i13 & 2048) != 0 ? null : str5, (i13 & 4096) != 0 ? null : str6, (i13 & 8192) != 0 ? null : num, (i13 & 16384) != 0 ? null : list, (i13 & 32768) != 0 ? null : baseLink);
    }
}

package com.vk.sdk.api.market.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\nHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010HÆ\u0003Je\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010HÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\u0005HÖ\u0001J\t\u0010.\u001a\u00020\fHÖ\u0001R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u0006/"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketOrderItem;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "itemId", "", InAppPurchaseMetaData.KEY_PRICE, "Lcom/vk/sdk/api/market/dto/MarketPrice;", "quantity", BaseConfig.ITEM, "Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "title", "", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "variants", "", "(Lcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/market/dto/MarketPrice;ILcom/vk/sdk/api/market/dto/MarketMarketItem;Ljava/lang/String;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/util/List;)V", "getItem", "()Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "getItemId", "()I", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "getQuantity", "getTitle", "()Ljava/lang/String;", "getVariants", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketOrderItem {
    @SerializedName(BaseConfig.ITEM)
    @NotNull
    private final MarketMarketItem item;
    @SerializedName(EventTrackingUtils.ITEM_ID)
    private final int itemId;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @NotNull
    private final MarketPrice price;
    @SerializedName("quantity")
    private final int quantity;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("variants")
    @Nullable
    private final List<String> variants;

    public MarketOrderItem(@NotNull UserId ownerId, int i9, @NotNull MarketPrice price, int i10, @NotNull MarketMarketItem item, @Nullable String str, @Nullable PhotosPhoto photosPhoto, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(item, "item");
        this.ownerId = ownerId;
        this.itemId = i9;
        this.price = price;
        this.quantity = i10;
        this.item = item;
        this.title = str;
        this.photo = photosPhoto;
        this.variants = list;
    }

    @NotNull
    public final UserId component1() {
        return this.ownerId;
    }

    public final int component2() {
        return this.itemId;
    }

    @NotNull
    public final MarketPrice component3() {
        return this.price;
    }

    public final int component4() {
        return this.quantity;
    }

    @NotNull
    public final MarketMarketItem component5() {
        return this.item;
    }

    @Nullable
    public final String component6() {
        return this.title;
    }

    @Nullable
    public final PhotosPhoto component7() {
        return this.photo;
    }

    @Nullable
    public final List<String> component8() {
        return this.variants;
    }

    @NotNull
    public final MarketOrderItem copy(@NotNull UserId ownerId, int i9, @NotNull MarketPrice price, int i10, @NotNull MarketMarketItem item, @Nullable String str, @Nullable PhotosPhoto photosPhoto, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(item, "item");
        return new MarketOrderItem(ownerId, i9, price, i10, item, str, photosPhoto, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketOrderItem) {
            MarketOrderItem marketOrderItem = (MarketOrderItem) obj;
            return Intrinsics.areEqual(this.ownerId, marketOrderItem.ownerId) && this.itemId == marketOrderItem.itemId && Intrinsics.areEqual(this.price, marketOrderItem.price) && this.quantity == marketOrderItem.quantity && Intrinsics.areEqual(this.item, marketOrderItem.item) && Intrinsics.areEqual(this.title, marketOrderItem.title) && Intrinsics.areEqual(this.photo, marketOrderItem.photo) && Intrinsics.areEqual(this.variants, marketOrderItem.variants);
        }
        return false;
    }

    @NotNull
    public final MarketMarketItem getItem() {
        return this.item;
    }

    public final int getItemId() {
        return this.itemId;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @NotNull
    public final MarketPrice getPrice() {
        return this.price;
    }

    public final int getQuantity() {
        return this.quantity;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final List<String> getVariants() {
        return this.variants;
    }

    public int hashCode() {
        int hashCode = ((((((((this.ownerId.hashCode() * 31) + this.itemId) * 31) + this.price.hashCode()) * 31) + this.quantity) * 31) + this.item.hashCode()) * 31;
        String str = this.title;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        int hashCode3 = (hashCode2 + (photosPhoto == null ? 0 : photosPhoto.hashCode())) * 31;
        List<String> list = this.variants;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.ownerId;
        int i9 = this.itemId;
        MarketPrice marketPrice = this.price;
        int i10 = this.quantity;
        MarketMarketItem marketMarketItem = this.item;
        String str = this.title;
        PhotosPhoto photosPhoto = this.photo;
        List<String> list = this.variants;
        return "MarketOrderItem(ownerId=" + userId + ", itemId=" + i9 + ", price=" + marketPrice + ", quantity=" + i10 + ", item=" + marketMarketItem + ", title=" + str + ", photo=" + photosPhoto + ", variants=" + list + ")";
    }

    public /* synthetic */ MarketOrderItem(UserId userId, int i9, MarketPrice marketPrice, int i10, MarketMarketItem marketMarketItem, String str, PhotosPhoto photosPhoto, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, i9, marketPrice, i10, marketMarketItem, (i11 & 32) != 0 ? null : str, (i11 & 64) != 0 ? null : photosPhoto, (i11 & 128) != 0 ? null : list);
    }
}

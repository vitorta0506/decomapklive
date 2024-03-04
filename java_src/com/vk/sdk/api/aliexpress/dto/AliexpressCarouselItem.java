package com.vk.sdk.api.aliexpress.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import com.vk.sdk.api.market.dto.MarketPrice;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b*\b\u0086\b\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010(J\u0010\u0010.\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010!J\u000b\u0010/\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0006HÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\tHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J \u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÆ\u0001¢\u0006\u0002\u0010:J\u0013\u0010;\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010=\u001a\u00020\u0012HÖ\u0001J\t\u0010>\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u001eR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001aR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001a¨\u0006?"}, d2 = {"Lcom/vk/sdk/api/aliexpress/dto/AliexpressCarouselItem;", "", "id", "", "title", "isFavorite", "", "url", "detailsButton", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", InAppPurchaseMetaData.KEY_PRICE, "Lcom/vk/sdk/api/market/dto/MarketPrice;", "discountText", "deliveryDateText", AnnotatedPrivateKey.LABEL, "rating", "", "ordersCount", "", "actionButton", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)V", "getActionButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getDeliveryDateText", "()Ljava/lang/String;", "getDetailsButton", "getDiscountText", "getId", "()Z", "getLabel", "getOrdersCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPhoto", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "getRating", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getTitle", "getUrl", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Lcom/vk/sdk/api/photos/dto/PhotosPhoto;)Lcom/vk/sdk/api/aliexpress/dto/AliexpressCarouselItem;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AliexpressCarouselItem {
    @SerializedName("action_button")
    @Nullable
    private final BaseLinkButton actionButton;
    @SerializedName("delivery_date_text")
    @Nullable
    private final String deliveryDateText;
    @SerializedName("details_button")
    @NotNull
    private final BaseLinkButton detailsButton;
    @SerializedName("discount_text")
    @Nullable
    private final String discountText;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35719id;
    @SerializedName("is_favorite")
    private final boolean isFavorite;
    @SerializedName(AnnotatedPrivateKey.LABEL)
    @Nullable
    private final String label;
    @SerializedName("orders_count")
    @Nullable
    private final Integer ordersCount;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PhotosPhoto photo;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @Nullable
    private final MarketPrice price;
    @SerializedName("rating")
    @Nullable
    private final Float rating;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("url")
    @NotNull
    private final String url;

    public AliexpressCarouselItem(@NotNull String id2, @NotNull String title, boolean z10, @NotNull String url, @NotNull BaseLinkButton detailsButton, @Nullable MarketPrice marketPrice, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Float f10, @Nullable Integer num, @Nullable BaseLinkButton baseLinkButton, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(detailsButton, "detailsButton");
        this.f35719id = id2;
        this.title = title;
        this.isFavorite = z10;
        this.url = url;
        this.detailsButton = detailsButton;
        this.price = marketPrice;
        this.discountText = str;
        this.deliveryDateText = str2;
        this.label = str3;
        this.rating = f10;
        this.ordersCount = num;
        this.actionButton = baseLinkButton;
        this.photo = photosPhoto;
    }

    @NotNull
    public final String component1() {
        return this.f35719id;
    }

    @Nullable
    public final Float component10() {
        return this.rating;
    }

    @Nullable
    public final Integer component11() {
        return this.ordersCount;
    }

    @Nullable
    public final BaseLinkButton component12() {
        return this.actionButton;
    }

    @Nullable
    public final PhotosPhoto component13() {
        return this.photo;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    public final boolean component3() {
        return this.isFavorite;
    }

    @NotNull
    public final String component4() {
        return this.url;
    }

    @NotNull
    public final BaseLinkButton component5() {
        return this.detailsButton;
    }

    @Nullable
    public final MarketPrice component6() {
        return this.price;
    }

    @Nullable
    public final String component7() {
        return this.discountText;
    }

    @Nullable
    public final String component8() {
        return this.deliveryDateText;
    }

    @Nullable
    public final String component9() {
        return this.label;
    }

    @NotNull
    public final AliexpressCarouselItem copy(@NotNull String id2, @NotNull String title, boolean z10, @NotNull String url, @NotNull BaseLinkButton detailsButton, @Nullable MarketPrice marketPrice, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Float f10, @Nullable Integer num, @Nullable BaseLinkButton baseLinkButton, @Nullable PhotosPhoto photosPhoto) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(detailsButton, "detailsButton");
        return new AliexpressCarouselItem(id2, title, z10, url, detailsButton, marketPrice, str, str2, str3, f10, num, baseLinkButton, photosPhoto);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AliexpressCarouselItem) {
            AliexpressCarouselItem aliexpressCarouselItem = (AliexpressCarouselItem) obj;
            return Intrinsics.areEqual(this.f35719id, aliexpressCarouselItem.f35719id) && Intrinsics.areEqual(this.title, aliexpressCarouselItem.title) && this.isFavorite == aliexpressCarouselItem.isFavorite && Intrinsics.areEqual(this.url, aliexpressCarouselItem.url) && Intrinsics.areEqual(this.detailsButton, aliexpressCarouselItem.detailsButton) && Intrinsics.areEqual(this.price, aliexpressCarouselItem.price) && Intrinsics.areEqual(this.discountText, aliexpressCarouselItem.discountText) && Intrinsics.areEqual(this.deliveryDateText, aliexpressCarouselItem.deliveryDateText) && Intrinsics.areEqual(this.label, aliexpressCarouselItem.label) && Intrinsics.areEqual((Object) this.rating, (Object) aliexpressCarouselItem.rating) && Intrinsics.areEqual(this.ordersCount, aliexpressCarouselItem.ordersCount) && Intrinsics.areEqual(this.actionButton, aliexpressCarouselItem.actionButton) && Intrinsics.areEqual(this.photo, aliexpressCarouselItem.photo);
        }
        return false;
    }

    @Nullable
    public final BaseLinkButton getActionButton() {
        return this.actionButton;
    }

    @Nullable
    public final String getDeliveryDateText() {
        return this.deliveryDateText;
    }

    @NotNull
    public final BaseLinkButton getDetailsButton() {
        return this.detailsButton;
    }

    @Nullable
    public final String getDiscountText() {
        return this.discountText;
    }

    @NotNull
    public final String getId() {
        return this.f35719id;
    }

    @Nullable
    public final String getLabel() {
        return this.label;
    }

    @Nullable
    public final Integer getOrdersCount() {
        return this.ordersCount;
    }

    @Nullable
    public final PhotosPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final MarketPrice getPrice() {
        return this.price;
    }

    @Nullable
    public final Float getRating() {
        return this.rating;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.f35719id.hashCode() * 31) + this.title.hashCode()) * 31;
        boolean z10 = this.isFavorite;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int hashCode2 = (((((hashCode + i9) * 31) + this.url.hashCode()) * 31) + this.detailsButton.hashCode()) * 31;
        MarketPrice marketPrice = this.price;
        int hashCode3 = (hashCode2 + (marketPrice == null ? 0 : marketPrice.hashCode())) * 31;
        String str = this.discountText;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.deliveryDateText;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.label;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Float f10 = this.rating;
        int hashCode7 = (hashCode6 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Integer num = this.ordersCount;
        int hashCode8 = (hashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        BaseLinkButton baseLinkButton = this.actionButton;
        int hashCode9 = (hashCode8 + (baseLinkButton == null ? 0 : baseLinkButton.hashCode())) * 31;
        PhotosPhoto photosPhoto = this.photo;
        return hashCode9 + (photosPhoto != null ? photosPhoto.hashCode() : 0);
    }

    public final boolean isFavorite() {
        return this.isFavorite;
    }

    @NotNull
    public String toString() {
        String str = this.f35719id;
        String str2 = this.title;
        boolean z10 = this.isFavorite;
        String str3 = this.url;
        BaseLinkButton baseLinkButton = this.detailsButton;
        MarketPrice marketPrice = this.price;
        String str4 = this.discountText;
        String str5 = this.deliveryDateText;
        String str6 = this.label;
        Float f10 = this.rating;
        Integer num = this.ordersCount;
        BaseLinkButton baseLinkButton2 = this.actionButton;
        PhotosPhoto photosPhoto = this.photo;
        return "AliexpressCarouselItem(id=" + str + ", title=" + str2 + ", isFavorite=" + z10 + ", url=" + str3 + ", detailsButton=" + baseLinkButton + ", price=" + marketPrice + ", discountText=" + str4 + ", deliveryDateText=" + str5 + ", label=" + str6 + ", rating=" + f10 + ", ordersCount=" + num + ", actionButton=" + baseLinkButton2 + ", photo=" + photosPhoto + ")";
    }

    public /* synthetic */ AliexpressCarouselItem(String str, String str2, boolean z10, String str3, BaseLinkButton baseLinkButton, MarketPrice marketPrice, String str4, String str5, String str6, Float f10, Integer num, BaseLinkButton baseLinkButton2, PhotosPhoto photosPhoto, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z10, str3, baseLinkButton, (i9 & 32) != 0 ? null : marketPrice, (i9 & 64) != 0 ? null : str4, (i9 & 128) != 0 ? null : str5, (i9 & 256) != 0 ? null : str6, (i9 & 512) != 0 ? null : f10, (i9 & 1024) != 0 ? null : num, (i9 & 2048) != 0 ? null : baseLinkButton2, (i9 & 4096) != 0 ? null : photosPhoto);
    }
}

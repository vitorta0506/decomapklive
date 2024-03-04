package com.vk.sdk.api.market.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b7\b\u0086\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u001aJ\t\u00104\u001a\u00020\u0003HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010#J\u000b\u00106\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u00108\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010:\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010;\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010<\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010=\u001a\u00020\u0005HÆ\u0003J\t\u0010>\u001a\u00020\u0007HÆ\u0003J\t\u0010?\u001a\u00020\tHÆ\u0003J\t\u0010@\u001a\u00020\u000bHÆ\u0003J\t\u0010A\u001a\u00020\rHÆ\u0003J\t\u0010B\u001a\u00020\u0007HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0007HÆ\u0003JÌ\u0001\u0010E\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00072\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010FJ\u0013\u0010G\u001a\u00020\u00142\b\u0010H\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010I\u001a\u00020\tHÖ\u0001J\t\u0010J\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001cR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001cR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001cR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b\u0013\u0010)R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010*\u001a\u0004\b\u0018\u0010)R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001cR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001cR\u0016\u0010\u000e\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001cR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001cR\u001a\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b3\u0010#¨\u0006K"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "", "availability", "Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;", "category", "Lcom/vk/sdk/api/market/dto/MarketMarketCategory;", "description", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", InAppPurchaseMetaData.KEY_PRICE, "Lcom/vk/sdk/api/market/dto/MarketPrice;", "title", "accessKey", "buttonTitle", "date", "externalId", "isFavorite", "", "thumbPhoto", "url", "variantsGroupingId", "isMainVariant", "sku", "(Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;Lcom/vk/sdk/api/market/dto/MarketMarketCategory;Ljava/lang/String;ILcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V", "getAccessKey", "()Ljava/lang/String;", "getAvailability", "()Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;", "getButtonTitle", "getCategory", "()Lcom/vk/sdk/api/market/dto/MarketMarketCategory;", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDescription", "getExternalId", "getId", "()I", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "getSku", "getThumbPhoto", "getTitle", "getUrl", "getVariantsGroupingId", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/market/dto/MarketMarketItemAvailability;Lcom/vk/sdk/api/market/dto/MarketMarketCategory;Ljava/lang/String;ILcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/market/dto/MarketPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vk/sdk/api/market/dto/MarketMarketItem;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketMarketItem {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("availability")
    @NotNull
    private final MarketMarketItemAvailability availability;
    @SerializedName("button_title")
    @Nullable
    private final String buttonTitle;
    @SerializedName("category")
    @NotNull
    private final MarketMarketCategory category;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("external_id")
    @Nullable
    private final String externalId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35893id;
    @SerializedName("is_favorite")
    @Nullable
    private final Boolean isFavorite;
    @SerializedName("is_main_variant")
    @Nullable
    private final Boolean isMainVariant;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @NotNull
    private final MarketPrice price;
    @SerializedName("sku")
    @Nullable
    private final String sku;
    @SerializedName("thumb_photo")
    @Nullable
    private final String thumbPhoto;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("url")
    @Nullable
    private final String url;
    @SerializedName("variants_grouping_id")
    @Nullable
    private final Integer variantsGroupingId;

    public MarketMarketItem(@NotNull MarketMarketItemAvailability availability, @NotNull MarketMarketCategory category, @NotNull String description, int i9, @NotNull UserId ownerId, @NotNull MarketPrice price, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Boolean bool, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable Boolean bool2, @Nullable String str6) {
        Intrinsics.checkNotNullParameter(availability, "availability");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(title, "title");
        this.availability = availability;
        this.category = category;
        this.description = description;
        this.f35893id = i9;
        this.ownerId = ownerId;
        this.price = price;
        this.title = title;
        this.accessKey = str;
        this.buttonTitle = str2;
        this.date = num;
        this.externalId = str3;
        this.isFavorite = bool;
        this.thumbPhoto = str4;
        this.url = str5;
        this.variantsGroupingId = num2;
        this.isMainVariant = bool2;
        this.sku = str6;
    }

    @NotNull
    public final MarketMarketItemAvailability component1() {
        return this.availability;
    }

    @Nullable
    public final Integer component10() {
        return this.date;
    }

    @Nullable
    public final String component11() {
        return this.externalId;
    }

    @Nullable
    public final Boolean component12() {
        return this.isFavorite;
    }

    @Nullable
    public final String component13() {
        return this.thumbPhoto;
    }

    @Nullable
    public final String component14() {
        return this.url;
    }

    @Nullable
    public final Integer component15() {
        return this.variantsGroupingId;
    }

    @Nullable
    public final Boolean component16() {
        return this.isMainVariant;
    }

    @Nullable
    public final String component17() {
        return this.sku;
    }

    @NotNull
    public final MarketMarketCategory component2() {
        return this.category;
    }

    @NotNull
    public final String component3() {
        return this.description;
    }

    public final int component4() {
        return this.f35893id;
    }

    @NotNull
    public final UserId component5() {
        return this.ownerId;
    }

    @NotNull
    public final MarketPrice component6() {
        return this.price;
    }

    @NotNull
    public final String component7() {
        return this.title;
    }

    @Nullable
    public final String component8() {
        return this.accessKey;
    }

    @Nullable
    public final String component9() {
        return this.buttonTitle;
    }

    @NotNull
    public final MarketMarketItem copy(@NotNull MarketMarketItemAvailability availability, @NotNull MarketMarketCategory category, @NotNull String description, int i9, @NotNull UserId ownerId, @NotNull MarketPrice price, @NotNull String title, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Boolean bool, @Nullable String str4, @Nullable String str5, @Nullable Integer num2, @Nullable Boolean bool2, @Nullable String str6) {
        Intrinsics.checkNotNullParameter(availability, "availability");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(title, "title");
        return new MarketMarketItem(availability, category, description, i9, ownerId, price, title, str, str2, num, str3, bool, str4, str5, num2, bool2, str6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketMarketItem) {
            MarketMarketItem marketMarketItem = (MarketMarketItem) obj;
            return this.availability == marketMarketItem.availability && Intrinsics.areEqual(this.category, marketMarketItem.category) && Intrinsics.areEqual(this.description, marketMarketItem.description) && this.f35893id == marketMarketItem.f35893id && Intrinsics.areEqual(this.ownerId, marketMarketItem.ownerId) && Intrinsics.areEqual(this.price, marketMarketItem.price) && Intrinsics.areEqual(this.title, marketMarketItem.title) && Intrinsics.areEqual(this.accessKey, marketMarketItem.accessKey) && Intrinsics.areEqual(this.buttonTitle, marketMarketItem.buttonTitle) && Intrinsics.areEqual(this.date, marketMarketItem.date) && Intrinsics.areEqual(this.externalId, marketMarketItem.externalId) && Intrinsics.areEqual(this.isFavorite, marketMarketItem.isFavorite) && Intrinsics.areEqual(this.thumbPhoto, marketMarketItem.thumbPhoto) && Intrinsics.areEqual(this.url, marketMarketItem.url) && Intrinsics.areEqual(this.variantsGroupingId, marketMarketItem.variantsGroupingId) && Intrinsics.areEqual(this.isMainVariant, marketMarketItem.isMainVariant) && Intrinsics.areEqual(this.sku, marketMarketItem.sku);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    @NotNull
    public final MarketMarketItemAvailability getAvailability() {
        return this.availability;
    }

    @Nullable
    public final String getButtonTitle() {
        return this.buttonTitle;
    }

    @NotNull
    public final MarketMarketCategory getCategory() {
        return this.category;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @Nullable
    public final String getExternalId() {
        return this.externalId;
    }

    public final int getId() {
        return this.f35893id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @NotNull
    public final MarketPrice getPrice() {
        return this.price;
    }

    @Nullable
    public final String getSku() {
        return this.sku;
    }

    @Nullable
    public final String getThumbPhoto() {
        return this.thumbPhoto;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final Integer getVariantsGroupingId() {
        return this.variantsGroupingId;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.availability.hashCode() * 31) + this.category.hashCode()) * 31) + this.description.hashCode()) * 31) + this.f35893id) * 31) + this.ownerId.hashCode()) * 31) + this.price.hashCode()) * 31) + this.title.hashCode()) * 31;
        String str = this.accessKey;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.buttonTitle;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.date;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.externalId;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.isFavorite;
        int hashCode6 = (hashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.thumbPhoto;
        int hashCode7 = (hashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.url;
        int hashCode8 = (hashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.variantsGroupingId;
        int hashCode9 = (hashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool2 = this.isMainVariant;
        int hashCode10 = (hashCode9 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str6 = this.sku;
        return hashCode10 + (str6 != null ? str6.hashCode() : 0);
    }

    @Nullable
    public final Boolean isFavorite() {
        return this.isFavorite;
    }

    @Nullable
    public final Boolean isMainVariant() {
        return this.isMainVariant;
    }

    @NotNull
    public String toString() {
        MarketMarketItemAvailability marketMarketItemAvailability = this.availability;
        MarketMarketCategory marketMarketCategory = this.category;
        String str = this.description;
        int i9 = this.f35893id;
        UserId userId = this.ownerId;
        MarketPrice marketPrice = this.price;
        String str2 = this.title;
        String str3 = this.accessKey;
        String str4 = this.buttonTitle;
        Integer num = this.date;
        String str5 = this.externalId;
        Boolean bool = this.isFavorite;
        String str6 = this.thumbPhoto;
        String str7 = this.url;
        Integer num2 = this.variantsGroupingId;
        Boolean bool2 = this.isMainVariant;
        String str8 = this.sku;
        return "MarketMarketItem(availability=" + marketMarketItemAvailability + ", category=" + marketMarketCategory + ", description=" + str + ", id=" + i9 + ", ownerId=" + userId + ", price=" + marketPrice + ", title=" + str2 + ", accessKey=" + str3 + ", buttonTitle=" + str4 + ", date=" + num + ", externalId=" + str5 + ", isFavorite=" + bool + ", thumbPhoto=" + str6 + ", url=" + str7 + ", variantsGroupingId=" + num2 + ", isMainVariant=" + bool2 + ", sku=" + str8 + ")";
    }

    public /* synthetic */ MarketMarketItem(MarketMarketItemAvailability marketMarketItemAvailability, MarketMarketCategory marketMarketCategory, String str, int i9, UserId userId, MarketPrice marketPrice, String str2, String str3, String str4, Integer num, String str5, Boolean bool, String str6, String str7, Integer num2, Boolean bool2, String str8, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(marketMarketItemAvailability, marketMarketCategory, str, i9, userId, marketPrice, str2, (i10 & 128) != 0 ? null : str3, (i10 & 256) != 0 ? null : str4, (i10 & 512) != 0 ? null : num, (i10 & 1024) != 0 ? null : str5, (i10 & 2048) != 0 ? null : bool, (i10 & 4096) != 0 ? null : str6, (i10 & 8192) != 0 ? null : str7, (i10 & 16384) != 0 ? null : num2, (32768 & i10) != 0 ? null : bool2, (i10 & 65536) != 0 ? null : str8);
    }
}

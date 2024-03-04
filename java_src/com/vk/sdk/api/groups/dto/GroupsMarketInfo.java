package com.vk.sdk.api.groups.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.market.dto.MarketCurrency;
import com.vk.sdk.api.market.dto.MarketPrice;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jz\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0005HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u001a\u0010\u0012R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0017R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017¨\u00060"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsMarketInfo;", "", "type", "", "contactId", "", InAppPurchaseMetaData.KEY_CURRENCY, "Lcom/vk/sdk/api/market/dto/MarketCurrency;", "currencyText", "enabled", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "mainAlbumId", "priceMax", "priceMin", "minOrderPrice", "Lcom/vk/sdk/api/market/dto/MarketPrice;", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketCurrency;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/market/dto/MarketPrice;)V", "getContactId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCurrency", "()Lcom/vk/sdk/api/market/dto/MarketCurrency;", "getCurrencyText", "()Ljava/lang/String;", "getEnabled", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getMainAlbumId", "getMinOrderPrice", "()Lcom/vk/sdk/api/market/dto/MarketPrice;", "getPriceMax", "getPriceMin", "getType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/market/dto/MarketCurrency;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/market/dto/MarketPrice;)Lcom/vk/sdk/api/groups/dto/GroupsMarketInfo;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsMarketInfo {
    @SerializedName("contact_id")
    @Nullable
    private final Integer contactId;
    @SerializedName(InAppPurchaseMetaData.KEY_CURRENCY)
    @Nullable
    private final MarketCurrency currency;
    @SerializedName("currency_text")
    @Nullable
    private final String currencyText;
    @SerializedName("enabled")
    @Nullable
    private final BaseBoolInt enabled;
    @SerializedName("main_album_id")
    @Nullable
    private final Integer mainAlbumId;
    @SerializedName("min_order_price")
    @Nullable
    private final MarketPrice minOrderPrice;
    @SerializedName("price_max")
    @Nullable
    private final String priceMax;
    @SerializedName("price_min")
    @Nullable
    private final String priceMin;
    @SerializedName("type")
    @Nullable
    private final String type;

    public GroupsMarketInfo() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public GroupsMarketInfo(@Nullable String str, @Nullable Integer num, @Nullable MarketCurrency marketCurrency, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num2, @Nullable String str3, @Nullable String str4, @Nullable MarketPrice marketPrice) {
        this.type = str;
        this.contactId = num;
        this.currency = marketCurrency;
        this.currencyText = str2;
        this.enabled = baseBoolInt;
        this.mainAlbumId = num2;
        this.priceMax = str3;
        this.priceMin = str4;
        this.minOrderPrice = marketPrice;
    }

    @Nullable
    public final String component1() {
        return this.type;
    }

    @Nullable
    public final Integer component2() {
        return this.contactId;
    }

    @Nullable
    public final MarketCurrency component3() {
        return this.currency;
    }

    @Nullable
    public final String component4() {
        return this.currencyText;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.enabled;
    }

    @Nullable
    public final Integer component6() {
        return this.mainAlbumId;
    }

    @Nullable
    public final String component7() {
        return this.priceMax;
    }

    @Nullable
    public final String component8() {
        return this.priceMin;
    }

    @Nullable
    public final MarketPrice component9() {
        return this.minOrderPrice;
    }

    @NotNull
    public final GroupsMarketInfo copy(@Nullable String str, @Nullable Integer num, @Nullable MarketCurrency marketCurrency, @Nullable String str2, @Nullable BaseBoolInt baseBoolInt, @Nullable Integer num2, @Nullable String str3, @Nullable String str4, @Nullable MarketPrice marketPrice) {
        return new GroupsMarketInfo(str, num, marketCurrency, str2, baseBoolInt, num2, str3, str4, marketPrice);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsMarketInfo) {
            GroupsMarketInfo groupsMarketInfo = (GroupsMarketInfo) obj;
            return Intrinsics.areEqual(this.type, groupsMarketInfo.type) && Intrinsics.areEqual(this.contactId, groupsMarketInfo.contactId) && Intrinsics.areEqual(this.currency, groupsMarketInfo.currency) && Intrinsics.areEqual(this.currencyText, groupsMarketInfo.currencyText) && this.enabled == groupsMarketInfo.enabled && Intrinsics.areEqual(this.mainAlbumId, groupsMarketInfo.mainAlbumId) && Intrinsics.areEqual(this.priceMax, groupsMarketInfo.priceMax) && Intrinsics.areEqual(this.priceMin, groupsMarketInfo.priceMin) && Intrinsics.areEqual(this.minOrderPrice, groupsMarketInfo.minOrderPrice);
        }
        return false;
    }

    @Nullable
    public final Integer getContactId() {
        return this.contactId;
    }

    @Nullable
    public final MarketCurrency getCurrency() {
        return this.currency;
    }

    @Nullable
    public final String getCurrencyText() {
        return this.currencyText;
    }

    @Nullable
    public final BaseBoolInt getEnabled() {
        return this.enabled;
    }

    @Nullable
    public final Integer getMainAlbumId() {
        return this.mainAlbumId;
    }

    @Nullable
    public final MarketPrice getMinOrderPrice() {
        return this.minOrderPrice;
    }

    @Nullable
    public final String getPriceMax() {
        return this.priceMax;
    }

    @Nullable
    public final String getPriceMin() {
        return this.priceMin;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.contactId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        MarketCurrency marketCurrency = this.currency;
        int hashCode3 = (hashCode2 + (marketCurrency == null ? 0 : marketCurrency.hashCode())) * 31;
        String str2 = this.currencyText;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.enabled;
        int hashCode5 = (hashCode4 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        Integer num2 = this.mainAlbumId;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.priceMax;
        int hashCode7 = (hashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.priceMin;
        int hashCode8 = (hashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        MarketPrice marketPrice = this.minOrderPrice;
        return hashCode8 + (marketPrice != null ? marketPrice.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.type;
        Integer num = this.contactId;
        MarketCurrency marketCurrency = this.currency;
        String str2 = this.currencyText;
        BaseBoolInt baseBoolInt = this.enabled;
        Integer num2 = this.mainAlbumId;
        String str3 = this.priceMax;
        String str4 = this.priceMin;
        MarketPrice marketPrice = this.minOrderPrice;
        return "GroupsMarketInfo(type=" + str + ", contactId=" + num + ", currency=" + marketCurrency + ", currencyText=" + str2 + ", enabled=" + baseBoolInt + ", mainAlbumId=" + num2 + ", priceMax=" + str3 + ", priceMin=" + str4 + ", minOrderPrice=" + marketPrice + ")";
    }

    public /* synthetic */ GroupsMarketInfo(String str, Integer num, MarketCurrency marketCurrency, String str2, BaseBoolInt baseBoolInt, Integer num2, String str3, String str4, MarketPrice marketPrice, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : marketCurrency, (i9 & 8) != 0 ? null : str2, (i9 & 16) != 0 ? null : baseBoolInt, (i9 & 32) != 0 ? null : num2, (i9 & 64) != 0 ? null : str3, (i9 & 128) != 0 ? null : str4, (i9 & 256) == 0 ? marketPrice : null);
    }
}

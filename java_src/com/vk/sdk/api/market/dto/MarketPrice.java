package com.vk.sdk.api.market.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003JP\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\bHÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\r¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/market/dto/MarketPrice;", "", "amount", "", InAppPurchaseMetaData.KEY_CURRENCY, "Lcom/vk/sdk/api/market/dto/MarketCurrency;", ViewHierarchyConstants.TEXT_KEY, "discountRate", "", "oldAmount", "oldAmountText", "(Ljava/lang/String;Lcom/vk/sdk/api/market/dto/MarketCurrency;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getAmount", "()Ljava/lang/String;", "getCurrency", "()Lcom/vk/sdk/api/market/dto/MarketCurrency;", "getDiscountRate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getOldAmount", "getOldAmountText", "getText", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Lcom/vk/sdk/api/market/dto/MarketCurrency;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/market/dto/MarketPrice;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MarketPrice {
    @SerializedName("amount")
    @NotNull
    private final String amount;
    @SerializedName(InAppPurchaseMetaData.KEY_CURRENCY)
    @NotNull
    private final MarketCurrency currency;
    @SerializedName("discount_rate")
    @Nullable
    private final Integer discountRate;
    @SerializedName("old_amount")
    @Nullable
    private final String oldAmount;
    @SerializedName("old_amount_text")
    @Nullable
    private final String oldAmountText;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    public MarketPrice(@NotNull String amount, @NotNull MarketCurrency currency, @NotNull String text, @Nullable Integer num, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(text, "text");
        this.amount = amount;
        this.currency = currency;
        this.text = text;
        this.discountRate = num;
        this.oldAmount = str;
        this.oldAmountText = str2;
    }

    public static /* synthetic */ MarketPrice copy$default(MarketPrice marketPrice, String str, MarketCurrency marketCurrency, String str2, Integer num, String str3, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = marketPrice.amount;
        }
        if ((i9 & 2) != 0) {
            marketCurrency = marketPrice.currency;
        }
        MarketCurrency marketCurrency2 = marketCurrency;
        if ((i9 & 4) != 0) {
            str2 = marketPrice.text;
        }
        String str5 = str2;
        if ((i9 & 8) != 0) {
            num = marketPrice.discountRate;
        }
        Integer num2 = num;
        if ((i9 & 16) != 0) {
            str3 = marketPrice.oldAmount;
        }
        String str6 = str3;
        if ((i9 & 32) != 0) {
            str4 = marketPrice.oldAmountText;
        }
        return marketPrice.copy(str, marketCurrency2, str5, num2, str6, str4);
    }

    @NotNull
    public final String component1() {
        return this.amount;
    }

    @NotNull
    public final MarketCurrency component2() {
        return this.currency;
    }

    @NotNull
    public final String component3() {
        return this.text;
    }

    @Nullable
    public final Integer component4() {
        return this.discountRate;
    }

    @Nullable
    public final String component5() {
        return this.oldAmount;
    }

    @Nullable
    public final String component6() {
        return this.oldAmountText;
    }

    @NotNull
    public final MarketPrice copy(@NotNull String amount, @NotNull MarketCurrency currency, @NotNull String text, @Nullable Integer num, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(text, "text");
        return new MarketPrice(amount, currency, text, num, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MarketPrice) {
            MarketPrice marketPrice = (MarketPrice) obj;
            return Intrinsics.areEqual(this.amount, marketPrice.amount) && Intrinsics.areEqual(this.currency, marketPrice.currency) && Intrinsics.areEqual(this.text, marketPrice.text) && Intrinsics.areEqual(this.discountRate, marketPrice.discountRate) && Intrinsics.areEqual(this.oldAmount, marketPrice.oldAmount) && Intrinsics.areEqual(this.oldAmountText, marketPrice.oldAmountText);
        }
        return false;
    }

    @NotNull
    public final String getAmount() {
        return this.amount;
    }

    @NotNull
    public final MarketCurrency getCurrency() {
        return this.currency;
    }

    @Nullable
    public final Integer getDiscountRate() {
        return this.discountRate;
    }

    @Nullable
    public final String getOldAmount() {
        return this.oldAmount;
    }

    @Nullable
    public final String getOldAmountText() {
        return this.oldAmountText;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode = ((((this.amount.hashCode() * 31) + this.currency.hashCode()) * 31) + this.text.hashCode()) * 31;
        Integer num = this.discountRate;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.oldAmount;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.oldAmountText;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.amount;
        MarketCurrency marketCurrency = this.currency;
        String str2 = this.text;
        Integer num = this.discountRate;
        String str3 = this.oldAmount;
        String str4 = this.oldAmountText;
        return "MarketPrice(amount=" + str + ", currency=" + marketCurrency + ", text=" + str2 + ", discountRate=" + num + ", oldAmount=" + str3 + ", oldAmountText=" + str4 + ")";
    }

    public /* synthetic */ MarketPrice(String str, MarketCurrency marketCurrency, String str2, Integer num, String str3, String str4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, marketCurrency, str2, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : str4);
    }
}

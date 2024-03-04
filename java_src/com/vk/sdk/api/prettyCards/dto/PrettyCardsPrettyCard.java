package com.vk.sdk.api.prettyCards.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.vk.sdk.api.base.dto.BaseImage;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003Js\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020*HÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0013¨\u0006,"}, d2 = {"Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsPrettyCard;", "", "cardId", "", "linkUrl", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "title", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "buttonText", "images", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", InAppPurchaseMetaData.KEY_PRICE, "priceOld", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getButtonText", "()Ljava/lang/String;", "getCardId", "getImages", "()Ljava/util/List;", "getLinkUrl", "getPhoto", "getPrice", "getPriceOld", "getTitle", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PrettyCardsPrettyCard {
    @SerializedName("button")
    @Nullable
    private final BaseLinkButton button;
    @SerializedName("button_text")
    @Nullable
    private final String buttonText;
    @SerializedName("card_id")
    @NotNull
    private final String cardId;
    @SerializedName("images")
    @Nullable
    private final List<BaseImage> images;
    @SerializedName("link_url")
    @NotNull
    private final String linkUrl;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @NotNull
    private final String photo;
    @SerializedName(InAppPurchaseMetaData.KEY_PRICE)
    @Nullable
    private final String price;
    @SerializedName("price_old")
    @Nullable
    private final String priceOld;
    @SerializedName("title")
    @NotNull
    private final String title;

    public PrettyCardsPrettyCard(@NotNull String cardId, @NotNull String linkUrl, @NotNull String photo, @NotNull String title, @Nullable BaseLinkButton baseLinkButton, @Nullable String str, @Nullable List<BaseImage> list, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        Intrinsics.checkNotNullParameter(linkUrl, "linkUrl");
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(title, "title");
        this.cardId = cardId;
        this.linkUrl = linkUrl;
        this.photo = photo;
        this.title = title;
        this.button = baseLinkButton;
        this.buttonText = str;
        this.images = list;
        this.price = str2;
        this.priceOld = str3;
    }

    @NotNull
    public final String component1() {
        return this.cardId;
    }

    @NotNull
    public final String component2() {
        return this.linkUrl;
    }

    @NotNull
    public final String component3() {
        return this.photo;
    }

    @NotNull
    public final String component4() {
        return this.title;
    }

    @Nullable
    public final BaseLinkButton component5() {
        return this.button;
    }

    @Nullable
    public final String component6() {
        return this.buttonText;
    }

    @Nullable
    public final List<BaseImage> component7() {
        return this.images;
    }

    @Nullable
    public final String component8() {
        return this.price;
    }

    @Nullable
    public final String component9() {
        return this.priceOld;
    }

    @NotNull
    public final PrettyCardsPrettyCard copy(@NotNull String cardId, @NotNull String linkUrl, @NotNull String photo, @NotNull String title, @Nullable BaseLinkButton baseLinkButton, @Nullable String str, @Nullable List<BaseImage> list, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        Intrinsics.checkNotNullParameter(linkUrl, "linkUrl");
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(title, "title");
        return new PrettyCardsPrettyCard(cardId, linkUrl, photo, title, baseLinkButton, str, list, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrettyCardsPrettyCard) {
            PrettyCardsPrettyCard prettyCardsPrettyCard = (PrettyCardsPrettyCard) obj;
            return Intrinsics.areEqual(this.cardId, prettyCardsPrettyCard.cardId) && Intrinsics.areEqual(this.linkUrl, prettyCardsPrettyCard.linkUrl) && Intrinsics.areEqual(this.photo, prettyCardsPrettyCard.photo) && Intrinsics.areEqual(this.title, prettyCardsPrettyCard.title) && Intrinsics.areEqual(this.button, prettyCardsPrettyCard.button) && Intrinsics.areEqual(this.buttonText, prettyCardsPrettyCard.buttonText) && Intrinsics.areEqual(this.images, prettyCardsPrettyCard.images) && Intrinsics.areEqual(this.price, prettyCardsPrettyCard.price) && Intrinsics.areEqual(this.priceOld, prettyCardsPrettyCard.priceOld);
        }
        return false;
    }

    @Nullable
    public final BaseLinkButton getButton() {
        return this.button;
    }

    @Nullable
    public final String getButtonText() {
        return this.buttonText;
    }

    @NotNull
    public final String getCardId() {
        return this.cardId;
    }

    @Nullable
    public final List<BaseImage> getImages() {
        return this.images;
    }

    @NotNull
    public final String getLinkUrl() {
        return this.linkUrl;
    }

    @NotNull
    public final String getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getPrice() {
        return this.price;
    }

    @Nullable
    public final String getPriceOld() {
        return this.priceOld;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((((((this.cardId.hashCode() * 31) + this.linkUrl.hashCode()) * 31) + this.photo.hashCode()) * 31) + this.title.hashCode()) * 31;
        BaseLinkButton baseLinkButton = this.button;
        int hashCode2 = (hashCode + (baseLinkButton == null ? 0 : baseLinkButton.hashCode())) * 31;
        String str = this.buttonText;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        List<BaseImage> list = this.images;
        int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.price;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.priceOld;
        return hashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.cardId;
        String str2 = this.linkUrl;
        String str3 = this.photo;
        String str4 = this.title;
        BaseLinkButton baseLinkButton = this.button;
        String str5 = this.buttonText;
        List<BaseImage> list = this.images;
        String str6 = this.price;
        String str7 = this.priceOld;
        return "PrettyCardsPrettyCard(cardId=" + str + ", linkUrl=" + str2 + ", photo=" + str3 + ", title=" + str4 + ", button=" + baseLinkButton + ", buttonText=" + str5 + ", images=" + list + ", price=" + str6 + ", priceOld=" + str7 + ")";
    }

    public /* synthetic */ PrettyCardsPrettyCard(String str, String str2, String str3, String str4, BaseLinkButton baseLinkButton, String str5, List list, String str6, String str7, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i9 & 16) != 0 ? null : baseLinkButton, (i9 & 32) != 0 ? null : str5, (i9 & 64) != 0 ? null : list, (i9 & 128) != 0 ? null : str6, (i9 & 256) != 0 ? null : str7);
    }
}

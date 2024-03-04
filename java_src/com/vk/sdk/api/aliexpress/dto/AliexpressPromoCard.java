package com.vk.sdk.api.aliexpress.dto;

import com.google.gson.annotations.SerializedName;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import com.vk.sdk.api.photos.dto.PhotosPhoto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\nHÆ\u0003JJ\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\bHÖ\u0001J\t\u0010!\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014¨\u0006\""}, d2 = {"Lcom/vk/sdk/api/aliexpress/dto/AliexpressPromoCard;", "", RemoteMessageConst.Notification.ICON, "Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "title", "", "subtitle", "cardPosition", "", "actionButton", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)V", "getActionButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getCardPosition", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getIcon", "()Lcom/vk/sdk/api/photos/dto/PhotosPhoto;", "getSubtitle", "()Ljava/lang/String;", "getTitle", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/vk/sdk/api/photos/dto/PhotosPhoto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)Lcom/vk/sdk/api/aliexpress/dto/AliexpressPromoCard;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AliexpressPromoCard {
    @SerializedName("action_button")
    @Nullable
    private final BaseLinkButton actionButton;
    @SerializedName("card_position")
    @Nullable
    private final Integer cardPosition;
    @SerializedName(RemoteMessageConst.Notification.ICON)
    @Nullable
    private final PhotosPhoto icon;
    @SerializedName("subtitle")
    @Nullable
    private final String subtitle;
    @SerializedName("title")
    @Nullable
    private final String title;

    public AliexpressPromoCard() {
        this(null, null, null, null, null, 31, null);
    }

    public AliexpressPromoCard(@Nullable PhotosPhoto photosPhoto, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable BaseLinkButton baseLinkButton) {
        this.icon = photosPhoto;
        this.title = str;
        this.subtitle = str2;
        this.cardPosition = num;
        this.actionButton = baseLinkButton;
    }

    public static /* synthetic */ AliexpressPromoCard copy$default(AliexpressPromoCard aliexpressPromoCard, PhotosPhoto photosPhoto, String str, String str2, Integer num, BaseLinkButton baseLinkButton, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            photosPhoto = aliexpressPromoCard.icon;
        }
        if ((i9 & 2) != 0) {
            str = aliexpressPromoCard.title;
        }
        String str3 = str;
        if ((i9 & 4) != 0) {
            str2 = aliexpressPromoCard.subtitle;
        }
        String str4 = str2;
        if ((i9 & 8) != 0) {
            num = aliexpressPromoCard.cardPosition;
        }
        Integer num2 = num;
        if ((i9 & 16) != 0) {
            baseLinkButton = aliexpressPromoCard.actionButton;
        }
        return aliexpressPromoCard.copy(photosPhoto, str3, str4, num2, baseLinkButton);
    }

    @Nullable
    public final PhotosPhoto component1() {
        return this.icon;
    }

    @Nullable
    public final String component2() {
        return this.title;
    }

    @Nullable
    public final String component3() {
        return this.subtitle;
    }

    @Nullable
    public final Integer component4() {
        return this.cardPosition;
    }

    @Nullable
    public final BaseLinkButton component5() {
        return this.actionButton;
    }

    @NotNull
    public final AliexpressPromoCard copy(@Nullable PhotosPhoto photosPhoto, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable BaseLinkButton baseLinkButton) {
        return new AliexpressPromoCard(photosPhoto, str, str2, num, baseLinkButton);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AliexpressPromoCard) {
            AliexpressPromoCard aliexpressPromoCard = (AliexpressPromoCard) obj;
            return Intrinsics.areEqual(this.icon, aliexpressPromoCard.icon) && Intrinsics.areEqual(this.title, aliexpressPromoCard.title) && Intrinsics.areEqual(this.subtitle, aliexpressPromoCard.subtitle) && Intrinsics.areEqual(this.cardPosition, aliexpressPromoCard.cardPosition) && Intrinsics.areEqual(this.actionButton, aliexpressPromoCard.actionButton);
        }
        return false;
    }

    @Nullable
    public final BaseLinkButton getActionButton() {
        return this.actionButton;
    }

    @Nullable
    public final Integer getCardPosition() {
        return this.cardPosition;
    }

    @Nullable
    public final PhotosPhoto getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getSubtitle() {
        return this.subtitle;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        PhotosPhoto photosPhoto = this.icon;
        int hashCode = (photosPhoto == null ? 0 : photosPhoto.hashCode()) * 31;
        String str = this.title;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.subtitle;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.cardPosition;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        BaseLinkButton baseLinkButton = this.actionButton;
        return hashCode4 + (baseLinkButton != null ? baseLinkButton.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        PhotosPhoto photosPhoto = this.icon;
        String str = this.title;
        String str2 = this.subtitle;
        Integer num = this.cardPosition;
        BaseLinkButton baseLinkButton = this.actionButton;
        return "AliexpressPromoCard(icon=" + photosPhoto + ", title=" + str + ", subtitle=" + str2 + ", cardPosition=" + num + ", actionButton=" + baseLinkButton + ")";
    }

    public /* synthetic */ AliexpressPromoCard(PhotosPhoto photosPhoto, String str, String str2, Integer num, BaseLinkButton baseLinkButton, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : photosPhoto, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : baseLinkButton);
    }
}

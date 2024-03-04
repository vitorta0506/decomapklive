package com.vk.sdk.api.photos.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemEndCard;", "", "subtitle", "", "button", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)V", "getButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getSubtitle", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosTagsSuggestionItemEndCard {
    @SerializedName("button")
    @Nullable
    private final BaseLinkButton button;
    @SerializedName("subtitle")
    @Nullable
    private final String subtitle;

    public PhotosTagsSuggestionItemEndCard() {
        this(null, null, 3, null);
    }

    public PhotosTagsSuggestionItemEndCard(@Nullable String str, @Nullable BaseLinkButton baseLinkButton) {
        this.subtitle = str;
        this.button = baseLinkButton;
    }

    public static /* synthetic */ PhotosTagsSuggestionItemEndCard copy$default(PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard, String str, BaseLinkButton baseLinkButton, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = photosTagsSuggestionItemEndCard.subtitle;
        }
        if ((i9 & 2) != 0) {
            baseLinkButton = photosTagsSuggestionItemEndCard.button;
        }
        return photosTagsSuggestionItemEndCard.copy(str, baseLinkButton);
    }

    @Nullable
    public final String component1() {
        return this.subtitle;
    }

    @Nullable
    public final BaseLinkButton component2() {
        return this.button;
    }

    @NotNull
    public final PhotosTagsSuggestionItemEndCard copy(@Nullable String str, @Nullable BaseLinkButton baseLinkButton) {
        return new PhotosTagsSuggestionItemEndCard(str, baseLinkButton);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosTagsSuggestionItemEndCard) {
            PhotosTagsSuggestionItemEndCard photosTagsSuggestionItemEndCard = (PhotosTagsSuggestionItemEndCard) obj;
            return Intrinsics.areEqual(this.subtitle, photosTagsSuggestionItemEndCard.subtitle) && Intrinsics.areEqual(this.button, photosTagsSuggestionItemEndCard.button);
        }
        return false;
    }

    @Nullable
    public final BaseLinkButton getButton() {
        return this.button;
    }

    @Nullable
    public final String getSubtitle() {
        return this.subtitle;
    }

    public int hashCode() {
        String str = this.subtitle;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        BaseLinkButton baseLinkButton = this.button;
        return hashCode + (baseLinkButton != null ? baseLinkButton.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.subtitle;
        BaseLinkButton baseLinkButton = this.button;
        return "PhotosTagsSuggestionItemEndCard(subtitle=" + str + ", button=" + baseLinkButton + ")";
    }

    public /* synthetic */ PhotosTagsSuggestionItemEndCard(String str, BaseLinkButton baseLinkButton, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : baseLinkButton);
    }
}

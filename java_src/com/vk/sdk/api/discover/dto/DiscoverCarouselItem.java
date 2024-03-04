package com.vk.sdk.api.discover.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseImage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J9\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;", "", "button", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;", "description", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItemDescription;", "title", "", "images", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItemDescription;Ljava/lang/String;Ljava/util/List;)V", "getButton", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;", "getDescription", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItemDescription;", "getImages", "()Ljava/util/List;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DiscoverCarouselItem {
    @SerializedName("button")
    @NotNull
    private final DiscoverCarouselButton button;
    @SerializedName("description")
    @NotNull
    private final DiscoverCarouselItemDescription description;
    @SerializedName("images")
    @Nullable
    private final List<BaseImage> images;
    @SerializedName("title")
    @NotNull
    private final String title;

    public DiscoverCarouselItem(@NotNull DiscoverCarouselButton button, @NotNull DiscoverCarouselItemDescription description, @NotNull String title, @Nullable List<BaseImage> list) {
        Intrinsics.checkNotNullParameter(button, "button");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(title, "title");
        this.button = button;
        this.description = description;
        this.title = title;
        this.images = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DiscoverCarouselItem copy$default(DiscoverCarouselItem discoverCarouselItem, DiscoverCarouselButton discoverCarouselButton, DiscoverCarouselItemDescription discoverCarouselItemDescription, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            discoverCarouselButton = discoverCarouselItem.button;
        }
        if ((i9 & 2) != 0) {
            discoverCarouselItemDescription = discoverCarouselItem.description;
        }
        if ((i9 & 4) != 0) {
            str = discoverCarouselItem.title;
        }
        if ((i9 & 8) != 0) {
            list = discoverCarouselItem.images;
        }
        return discoverCarouselItem.copy(discoverCarouselButton, discoverCarouselItemDescription, str, list);
    }

    @NotNull
    public final DiscoverCarouselButton component1() {
        return this.button;
    }

    @NotNull
    public final DiscoverCarouselItemDescription component2() {
        return this.description;
    }

    @NotNull
    public final String component3() {
        return this.title;
    }

    @Nullable
    public final List<BaseImage> component4() {
        return this.images;
    }

    @NotNull
    public final DiscoverCarouselItem copy(@NotNull DiscoverCarouselButton button, @NotNull DiscoverCarouselItemDescription description, @NotNull String title, @Nullable List<BaseImage> list) {
        Intrinsics.checkNotNullParameter(button, "button");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(title, "title");
        return new DiscoverCarouselItem(button, description, title, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DiscoverCarouselItem) {
            DiscoverCarouselItem discoverCarouselItem = (DiscoverCarouselItem) obj;
            return Intrinsics.areEqual(this.button, discoverCarouselItem.button) && Intrinsics.areEqual(this.description, discoverCarouselItem.description) && Intrinsics.areEqual(this.title, discoverCarouselItem.title) && Intrinsics.areEqual(this.images, discoverCarouselItem.images);
        }
        return false;
    }

    @NotNull
    public final DiscoverCarouselButton getButton() {
        return this.button;
    }

    @NotNull
    public final DiscoverCarouselItemDescription getDescription() {
        return this.description;
    }

    @Nullable
    public final List<BaseImage> getImages() {
        return this.images;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((((this.button.hashCode() * 31) + this.description.hashCode()) * 31) + this.title.hashCode()) * 31;
        List<BaseImage> list = this.images;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        DiscoverCarouselButton discoverCarouselButton = this.button;
        DiscoverCarouselItemDescription discoverCarouselItemDescription = this.description;
        String str = this.title;
        List<BaseImage> list = this.images;
        return "DiscoverCarouselItem(button=" + discoverCarouselButton + ", description=" + discoverCarouselItemDescription + ", title=" + str + ", images=" + list + ")";
    }

    public /* synthetic */ DiscoverCarouselItem(DiscoverCarouselButton discoverCarouselButton, DiscoverCarouselItemDescription discoverCarouselItemDescription, String str, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(discoverCarouselButton, discoverCarouselItemDescription, str, (i9 & 8) != 0 ? null : list);
    }
}

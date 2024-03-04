package com.vk.sdk.api.discover.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItemDescription;", "", ViewHierarchyConstants.TEXT_KEY, "", "type", "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItemDescriptionType;", "(Ljava/lang/String;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItemDescriptionType;)V", "getText", "()Ljava/lang/String;", "getType", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItemDescriptionType;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DiscoverCarouselItemDescription {
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("type")
    @Nullable
    private final DiscoverCarouselItemDescriptionType type;

    public DiscoverCarouselItemDescription() {
        this(null, null, 3, null);
    }

    public DiscoverCarouselItemDescription(@Nullable String str, @Nullable DiscoverCarouselItemDescriptionType discoverCarouselItemDescriptionType) {
        this.text = str;
        this.type = discoverCarouselItemDescriptionType;
    }

    public static /* synthetic */ DiscoverCarouselItemDescription copy$default(DiscoverCarouselItemDescription discoverCarouselItemDescription, String str, DiscoverCarouselItemDescriptionType discoverCarouselItemDescriptionType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = discoverCarouselItemDescription.text;
        }
        if ((i9 & 2) != 0) {
            discoverCarouselItemDescriptionType = discoverCarouselItemDescription.type;
        }
        return discoverCarouselItemDescription.copy(str, discoverCarouselItemDescriptionType);
    }

    @Nullable
    public final String component1() {
        return this.text;
    }

    @Nullable
    public final DiscoverCarouselItemDescriptionType component2() {
        return this.type;
    }

    @NotNull
    public final DiscoverCarouselItemDescription copy(@Nullable String str, @Nullable DiscoverCarouselItemDescriptionType discoverCarouselItemDescriptionType) {
        return new DiscoverCarouselItemDescription(str, discoverCarouselItemDescriptionType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DiscoverCarouselItemDescription) {
            DiscoverCarouselItemDescription discoverCarouselItemDescription = (DiscoverCarouselItemDescription) obj;
            return Intrinsics.areEqual(this.text, discoverCarouselItemDescription.text) && this.type == discoverCarouselItemDescription.type;
        }
        return false;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final DiscoverCarouselItemDescriptionType getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.text;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        DiscoverCarouselItemDescriptionType discoverCarouselItemDescriptionType = this.type;
        return hashCode + (discoverCarouselItemDescriptionType != null ? discoverCarouselItemDescriptionType.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.text;
        DiscoverCarouselItemDescriptionType discoverCarouselItemDescriptionType = this.type;
        return "DiscoverCarouselItemDescription(text=" + str + ", type=" + discoverCarouselItemDescriptionType + ")";
    }

    public /* synthetic */ DiscoverCarouselItemDescription(String str, DiscoverCarouselItemDescriptionType discoverCarouselItemDescriptionType, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : discoverCarouselItemDescriptionType);
    }
}

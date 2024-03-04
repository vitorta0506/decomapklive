package com.vk.sdk.api.discover.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;", "", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonAction;", "title", "", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonType;", "(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonAction;Ljava/lang/String;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonType;)V", "getAction", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonAction;", "getStyle", "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButtonType;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DiscoverCarouselButton {
    @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
    @NotNull
    private final DiscoverCarouselButtonAction action;
    @SerializedName(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)
    @Nullable
    private final DiscoverCarouselButtonType style;
    @SerializedName("title")
    @NotNull
    private final String title;

    public DiscoverCarouselButton(@NotNull DiscoverCarouselButtonAction action, @NotNull String title, @Nullable DiscoverCarouselButtonType discoverCarouselButtonType) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(title, "title");
        this.action = action;
        this.title = title;
        this.style = discoverCarouselButtonType;
    }

    public static /* synthetic */ DiscoverCarouselButton copy$default(DiscoverCarouselButton discoverCarouselButton, DiscoverCarouselButtonAction discoverCarouselButtonAction, String str, DiscoverCarouselButtonType discoverCarouselButtonType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            discoverCarouselButtonAction = discoverCarouselButton.action;
        }
        if ((i9 & 2) != 0) {
            str = discoverCarouselButton.title;
        }
        if ((i9 & 4) != 0) {
            discoverCarouselButtonType = discoverCarouselButton.style;
        }
        return discoverCarouselButton.copy(discoverCarouselButtonAction, str, discoverCarouselButtonType);
    }

    @NotNull
    public final DiscoverCarouselButtonAction component1() {
        return this.action;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @Nullable
    public final DiscoverCarouselButtonType component3() {
        return this.style;
    }

    @NotNull
    public final DiscoverCarouselButton copy(@NotNull DiscoverCarouselButtonAction action, @NotNull String title, @Nullable DiscoverCarouselButtonType discoverCarouselButtonType) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(title, "title");
        return new DiscoverCarouselButton(action, title, discoverCarouselButtonType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DiscoverCarouselButton) {
            DiscoverCarouselButton discoverCarouselButton = (DiscoverCarouselButton) obj;
            return Intrinsics.areEqual(this.action, discoverCarouselButton.action) && Intrinsics.areEqual(this.title, discoverCarouselButton.title) && this.style == discoverCarouselButton.style;
        }
        return false;
    }

    @NotNull
    public final DiscoverCarouselButtonAction getAction() {
        return this.action;
    }

    @Nullable
    public final DiscoverCarouselButtonType getStyle() {
        return this.style;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((this.action.hashCode() * 31) + this.title.hashCode()) * 31;
        DiscoverCarouselButtonType discoverCarouselButtonType = this.style;
        return hashCode + (discoverCarouselButtonType == null ? 0 : discoverCarouselButtonType.hashCode());
    }

    @NotNull
    public String toString() {
        DiscoverCarouselButtonAction discoverCarouselButtonAction = this.action;
        String str = this.title;
        DiscoverCarouselButtonType discoverCarouselButtonType = this.style;
        return "DiscoverCarouselButton(action=" + discoverCarouselButtonAction + ", title=" + str + ", style=" + discoverCarouselButtonType + ")";
    }

    public /* synthetic */ DiscoverCarouselButton(DiscoverCarouselButtonAction discoverCarouselButtonAction, String str, DiscoverCarouselButtonType discoverCarouselButtonType, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(discoverCarouselButtonAction, str, (i9 & 4) != 0 ? null : discoverCarouselButtonType);
    }
}

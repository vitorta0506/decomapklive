package com.vk.sdk.api.newsfeed.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001cB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J5\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader;", "", "title", "", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader$Style;", "subtitle", "button", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton;", "(Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader$Style;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton;)V", "getButton", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton;", "getStyle", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader$Style;", "getSubtitle", "()Ljava/lang/String;", "getTitle", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Style", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemDigestHeader {
    @SerializedName("button")
    @Nullable
    private final NewsfeedItemDigestButton button;
    @SerializedName(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)
    @NotNull
    private final Style style;
    @SerializedName("subtitle")
    @Nullable
    private final String subtitle;
    @SerializedName("title")
    @NotNull
    private final String title;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestHeader$Style;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "SINGLELINE", "MULTILINE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Style {
        SINGLELINE("singleline"),
        MULTILINE("multiline");
        
        @NotNull
        private final String value;

        Style(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public NewsfeedItemDigestHeader(@NotNull String title, @NotNull Style style, @Nullable String str, @Nullable NewsfeedItemDigestButton newsfeedItemDigestButton) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(style, "style");
        this.title = title;
        this.style = style;
        this.subtitle = str;
        this.button = newsfeedItemDigestButton;
    }

    public static /* synthetic */ NewsfeedItemDigestHeader copy$default(NewsfeedItemDigestHeader newsfeedItemDigestHeader, String str, Style style, String str2, NewsfeedItemDigestButton newsfeedItemDigestButton, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemDigestHeader.title;
        }
        if ((i9 & 2) != 0) {
            style = newsfeedItemDigestHeader.style;
        }
        if ((i9 & 4) != 0) {
            str2 = newsfeedItemDigestHeader.subtitle;
        }
        if ((i9 & 8) != 0) {
            newsfeedItemDigestButton = newsfeedItemDigestHeader.button;
        }
        return newsfeedItemDigestHeader.copy(str, style, str2, newsfeedItemDigestButton);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final Style component2() {
        return this.style;
    }

    @Nullable
    public final String component3() {
        return this.subtitle;
    }

    @Nullable
    public final NewsfeedItemDigestButton component4() {
        return this.button;
    }

    @NotNull
    public final NewsfeedItemDigestHeader copy(@NotNull String title, @NotNull Style style, @Nullable String str, @Nullable NewsfeedItemDigestButton newsfeedItemDigestButton) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(style, "style");
        return new NewsfeedItemDigestHeader(title, style, str, newsfeedItemDigestButton);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemDigestHeader) {
            NewsfeedItemDigestHeader newsfeedItemDigestHeader = (NewsfeedItemDigestHeader) obj;
            return Intrinsics.areEqual(this.title, newsfeedItemDigestHeader.title) && this.style == newsfeedItemDigestHeader.style && Intrinsics.areEqual(this.subtitle, newsfeedItemDigestHeader.subtitle) && Intrinsics.areEqual(this.button, newsfeedItemDigestHeader.button);
        }
        return false;
    }

    @Nullable
    public final NewsfeedItemDigestButton getButton() {
        return this.button;
    }

    @NotNull
    public final Style getStyle() {
        return this.style;
    }

    @Nullable
    public final String getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((this.title.hashCode() * 31) + this.style.hashCode()) * 31;
        String str = this.subtitle;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        NewsfeedItemDigestButton newsfeedItemDigestButton = this.button;
        return hashCode2 + (newsfeedItemDigestButton != null ? newsfeedItemDigestButton.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.title;
        Style style = this.style;
        String str2 = this.subtitle;
        NewsfeedItemDigestButton newsfeedItemDigestButton = this.button;
        return "NewsfeedItemDigestHeader(title=" + str + ", style=" + style + ", subtitle=" + str2 + ", button=" + newsfeedItemDigestButton + ")";
    }

    public /* synthetic */ NewsfeedItemDigestHeader(String str, Style style, String str2, NewsfeedItemDigestButton newsfeedItemDigestButton, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, style, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : newsfeedItemDigestButton);
    }
}

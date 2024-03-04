package com.vk.sdk.api.newsfeed.dto;

import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton;", "", "title", "", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton$Style;", "(Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton$Style;)V", "getStyle", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton$Style;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Style", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemDigestButton {
    @SerializedName(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)
    @Nullable
    private final Style style;
    @SerializedName("title")
    @NotNull
    private final String title;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton$Style;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PRIMARY", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Style {
        PRIMARY("primary");
        
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

    public NewsfeedItemDigestButton(@NotNull String title, @Nullable Style style) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.style = style;
    }

    public static /* synthetic */ NewsfeedItemDigestButton copy$default(NewsfeedItemDigestButton newsfeedItemDigestButton, String str, Style style, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemDigestButton.title;
        }
        if ((i9 & 2) != 0) {
            style = newsfeedItemDigestButton.style;
        }
        return newsfeedItemDigestButton.copy(str, style);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @Nullable
    public final Style component2() {
        return this.style;
    }

    @NotNull
    public final NewsfeedItemDigestButton copy(@NotNull String title, @Nullable Style style) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new NewsfeedItemDigestButton(title, style);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemDigestButton) {
            NewsfeedItemDigestButton newsfeedItemDigestButton = (NewsfeedItemDigestButton) obj;
            return Intrinsics.areEqual(this.title, newsfeedItemDigestButton.title) && this.style == newsfeedItemDigestButton.style;
        }
        return false;
    }

    @Nullable
    public final Style getStyle() {
        return this.style;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = this.title.hashCode() * 31;
        Style style = this.style;
        return hashCode + (style == null ? 0 : style.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.title;
        Style style = this.style;
        return "NewsfeedItemDigestButton(title=" + str + ", style=" + style + ")";
    }

    public /* synthetic */ NewsfeedItemDigestButton(String str, Style style, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i9 & 2) != 0 ? null : style);
    }
}

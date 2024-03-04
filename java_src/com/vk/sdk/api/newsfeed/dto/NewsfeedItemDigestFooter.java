package com.vk.sdk.api.newsfeed.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter;", "", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter$Style;", ViewHierarchyConstants.TEXT_KEY, "", "button", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter$Style;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton;)V", "getButton", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestButton;", "getStyle", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter$Style;", "getText", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Style", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemDigestFooter {
    @SerializedName("button")
    @Nullable
    private final NewsfeedItemDigestButton button;
    @SerializedName(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)
    @NotNull
    private final Style style;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemDigestFooter$Style;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "TEXT", "BUTTON", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Style {
        TEXT(ViewHierarchyConstants.TEXT_KEY),
        BUTTON("button");
        
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

    public NewsfeedItemDigestFooter(@NotNull Style style, @NotNull String text, @Nullable NewsfeedItemDigestButton newsfeedItemDigestButton) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(text, "text");
        this.style = style;
        this.text = text;
        this.button = newsfeedItemDigestButton;
    }

    public static /* synthetic */ NewsfeedItemDigestFooter copy$default(NewsfeedItemDigestFooter newsfeedItemDigestFooter, Style style, String str, NewsfeedItemDigestButton newsfeedItemDigestButton, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            style = newsfeedItemDigestFooter.style;
        }
        if ((i9 & 2) != 0) {
            str = newsfeedItemDigestFooter.text;
        }
        if ((i9 & 4) != 0) {
            newsfeedItemDigestButton = newsfeedItemDigestFooter.button;
        }
        return newsfeedItemDigestFooter.copy(style, str, newsfeedItemDigestButton);
    }

    @NotNull
    public final Style component1() {
        return this.style;
    }

    @NotNull
    public final String component2() {
        return this.text;
    }

    @Nullable
    public final NewsfeedItemDigestButton component3() {
        return this.button;
    }

    @NotNull
    public final NewsfeedItemDigestFooter copy(@NotNull Style style, @NotNull String text, @Nullable NewsfeedItemDigestButton newsfeedItemDigestButton) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(text, "text");
        return new NewsfeedItemDigestFooter(style, text, newsfeedItemDigestButton);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemDigestFooter) {
            NewsfeedItemDigestFooter newsfeedItemDigestFooter = (NewsfeedItemDigestFooter) obj;
            return this.style == newsfeedItemDigestFooter.style && Intrinsics.areEqual(this.text, newsfeedItemDigestFooter.text) && Intrinsics.areEqual(this.button, newsfeedItemDigestFooter.button);
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

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode = ((this.style.hashCode() * 31) + this.text.hashCode()) * 31;
        NewsfeedItemDigestButton newsfeedItemDigestButton = this.button;
        return hashCode + (newsfeedItemDigestButton == null ? 0 : newsfeedItemDigestButton.hashCode());
    }

    @NotNull
    public String toString() {
        Style style = this.style;
        String str = this.text;
        NewsfeedItemDigestButton newsfeedItemDigestButton = this.button;
        return "NewsfeedItemDigestFooter(style=" + style + ", text=" + str + ", button=" + newsfeedItemDigestButton + ")";
    }

    public /* synthetic */ NewsfeedItemDigestFooter(Style style, String str, NewsfeedItemDigestButton newsfeedItemDigestButton, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(style, str, (i9 & 4) != 0 ? null : newsfeedItemDigestButton);
    }
}

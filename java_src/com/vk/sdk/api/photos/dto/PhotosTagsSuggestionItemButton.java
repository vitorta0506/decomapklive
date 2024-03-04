package com.vk.sdk.api.photos.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton;", "", "title", "", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Action;", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Style;", "(Ljava/lang/String;Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Action;Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Style;)V", "getAction", "()Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Action;", "getStyle", "()Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Style;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Action", "Style", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosTagsSuggestionItemButton {
    @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
    @Nullable
    private final Action action;
    @SerializedName(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)
    @Nullable
    private final Style style;
    @SerializedName("title")
    @Nullable
    private final String title;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Action;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "CONFIRM", "DECLINE", "SHOW_TAGS", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Action {
        CONFIRM(VKApiCodes.EXTRA_CONFIRM),
        DECLINE("decline"),
        SHOW_TAGS("show_tags");
        
        @NotNull
        private final String value;

        Action(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosTagsSuggestionItemButton$Style;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "PRIMARY", "SECONDARY", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum Style {
        PRIMARY("primary"),
        SECONDARY("secondary");
        
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

    public PhotosTagsSuggestionItemButton() {
        this(null, null, null, 7, null);
    }

    public PhotosTagsSuggestionItemButton(@Nullable String str, @Nullable Action action, @Nullable Style style) {
        this.title = str;
        this.action = action;
        this.style = style;
    }

    public static /* synthetic */ PhotosTagsSuggestionItemButton copy$default(PhotosTagsSuggestionItemButton photosTagsSuggestionItemButton, String str, Action action, Style style, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = photosTagsSuggestionItemButton.title;
        }
        if ((i9 & 2) != 0) {
            action = photosTagsSuggestionItemButton.action;
        }
        if ((i9 & 4) != 0) {
            style = photosTagsSuggestionItemButton.style;
        }
        return photosTagsSuggestionItemButton.copy(str, action, style);
    }

    @Nullable
    public final String component1() {
        return this.title;
    }

    @Nullable
    public final Action component2() {
        return this.action;
    }

    @Nullable
    public final Style component3() {
        return this.style;
    }

    @NotNull
    public final PhotosTagsSuggestionItemButton copy(@Nullable String str, @Nullable Action action, @Nullable Style style) {
        return new PhotosTagsSuggestionItemButton(str, action, style);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosTagsSuggestionItemButton) {
            PhotosTagsSuggestionItemButton photosTagsSuggestionItemButton = (PhotosTagsSuggestionItemButton) obj;
            return Intrinsics.areEqual(this.title, photosTagsSuggestionItemButton.title) && this.action == photosTagsSuggestionItemButton.action && this.style == photosTagsSuggestionItemButton.style;
        }
        return false;
    }

    @Nullable
    public final Action getAction() {
        return this.action;
    }

    @Nullable
    public final Style getStyle() {
        return this.style;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Action action = this.action;
        int hashCode2 = (hashCode + (action == null ? 0 : action.hashCode())) * 31;
        Style style = this.style;
        return hashCode2 + (style != null ? style.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.title;
        Action action = this.action;
        Style style = this.style;
        return "PhotosTagsSuggestionItemButton(title=" + str + ", action=" + action + ", style=" + style + ")";
    }

    public /* synthetic */ PhotosTagsSuggestionItemButton(String str, Action action, Style style, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : action, (i9 & 4) != 0 ? null : style);
    }
}

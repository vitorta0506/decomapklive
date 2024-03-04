package com.vk.sdk.api.newsfeed.dto;

import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseLinkButtonAction;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0003J9\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidget;", "", "rating", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidgetRating;", "title", "", "subtitle", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidgetRating;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;)V", "getAction", "()Lcom/vk/sdk/api/base/dto/BaseLinkButtonAction;", "getRating", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidgetRating;", "getSubtitle", "()Ljava/lang/String;", "getTitle", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedExpertCardWidget {
    @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
    @Nullable
    private final BaseLinkButtonAction action;
    @SerializedName("rating")
    @Nullable
    private final NewsfeedExpertCardWidgetRating rating;
    @SerializedName("subtitle")
    @Nullable
    private final String subtitle;
    @SerializedName("title")
    @Nullable
    private final String title;

    public NewsfeedExpertCardWidget() {
        this(null, null, null, null, 15, null);
    }

    public NewsfeedExpertCardWidget(@Nullable NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating, @Nullable String str, @Nullable String str2, @Nullable BaseLinkButtonAction baseLinkButtonAction) {
        this.rating = newsfeedExpertCardWidgetRating;
        this.title = str;
        this.subtitle = str2;
        this.action = baseLinkButtonAction;
    }

    public static /* synthetic */ NewsfeedExpertCardWidget copy$default(NewsfeedExpertCardWidget newsfeedExpertCardWidget, NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating, String str, String str2, BaseLinkButtonAction baseLinkButtonAction, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            newsfeedExpertCardWidgetRating = newsfeedExpertCardWidget.rating;
        }
        if ((i9 & 2) != 0) {
            str = newsfeedExpertCardWidget.title;
        }
        if ((i9 & 4) != 0) {
            str2 = newsfeedExpertCardWidget.subtitle;
        }
        if ((i9 & 8) != 0) {
            baseLinkButtonAction = newsfeedExpertCardWidget.action;
        }
        return newsfeedExpertCardWidget.copy(newsfeedExpertCardWidgetRating, str, str2, baseLinkButtonAction);
    }

    @Nullable
    public final NewsfeedExpertCardWidgetRating component1() {
        return this.rating;
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
    public final BaseLinkButtonAction component4() {
        return this.action;
    }

    @NotNull
    public final NewsfeedExpertCardWidget copy(@Nullable NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating, @Nullable String str, @Nullable String str2, @Nullable BaseLinkButtonAction baseLinkButtonAction) {
        return new NewsfeedExpertCardWidget(newsfeedExpertCardWidgetRating, str, str2, baseLinkButtonAction);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedExpertCardWidget) {
            NewsfeedExpertCardWidget newsfeedExpertCardWidget = (NewsfeedExpertCardWidget) obj;
            return Intrinsics.areEqual(this.rating, newsfeedExpertCardWidget.rating) && Intrinsics.areEqual(this.title, newsfeedExpertCardWidget.title) && Intrinsics.areEqual(this.subtitle, newsfeedExpertCardWidget.subtitle) && Intrinsics.areEqual(this.action, newsfeedExpertCardWidget.action);
        }
        return false;
    }

    @Nullable
    public final BaseLinkButtonAction getAction() {
        return this.action;
    }

    @Nullable
    public final NewsfeedExpertCardWidgetRating getRating() {
        return this.rating;
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
        NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating = this.rating;
        int hashCode = (newsfeedExpertCardWidgetRating == null ? 0 : newsfeedExpertCardWidgetRating.hashCode()) * 31;
        String str = this.title;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.subtitle;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        BaseLinkButtonAction baseLinkButtonAction = this.action;
        return hashCode3 + (baseLinkButtonAction != null ? baseLinkButtonAction.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating = this.rating;
        String str = this.title;
        String str2 = this.subtitle;
        BaseLinkButtonAction baseLinkButtonAction = this.action;
        return "NewsfeedExpertCardWidget(rating=" + newsfeedExpertCardWidgetRating + ", title=" + str + ", subtitle=" + str2 + ", action=" + baseLinkButtonAction + ")";
    }

    public /* synthetic */ NewsfeedExpertCardWidget(NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating, String str, String str2, BaseLinkButtonAction baseLinkButtonAction, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : newsfeedExpertCardWidgetRating, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : baseLinkButtonAction);
    }
}

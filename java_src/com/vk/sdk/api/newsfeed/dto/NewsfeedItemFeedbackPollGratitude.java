package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollGratitude;", "", "title", "", "subtitle", "buttonText", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getButtonText", "()Ljava/lang/String;", "getSubtitle", "getTitle", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemFeedbackPollGratitude {
    @SerializedName("button_text")
    @NotNull
    private final String buttonText;
    @SerializedName("subtitle")
    @NotNull
    private final String subtitle;
    @SerializedName("title")
    @NotNull
    private final String title;

    public NewsfeedItemFeedbackPollGratitude(@NotNull String title, @NotNull String subtitle, @NotNull String buttonText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        this.title = title;
        this.subtitle = subtitle;
        this.buttonText = buttonText;
    }

    public static /* synthetic */ NewsfeedItemFeedbackPollGratitude copy$default(NewsfeedItemFeedbackPollGratitude newsfeedItemFeedbackPollGratitude, String str, String str2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemFeedbackPollGratitude.title;
        }
        if ((i9 & 2) != 0) {
            str2 = newsfeedItemFeedbackPollGratitude.subtitle;
        }
        if ((i9 & 4) != 0) {
            str3 = newsfeedItemFeedbackPollGratitude.buttonText;
        }
        return newsfeedItemFeedbackPollGratitude.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.subtitle;
    }

    @NotNull
    public final String component3() {
        return this.buttonText;
    }

    @NotNull
    public final NewsfeedItemFeedbackPollGratitude copy(@NotNull String title, @NotNull String subtitle, @NotNull String buttonText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        return new NewsfeedItemFeedbackPollGratitude(title, subtitle, buttonText);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemFeedbackPollGratitude) {
            NewsfeedItemFeedbackPollGratitude newsfeedItemFeedbackPollGratitude = (NewsfeedItemFeedbackPollGratitude) obj;
            return Intrinsics.areEqual(this.title, newsfeedItemFeedbackPollGratitude.title) && Intrinsics.areEqual(this.subtitle, newsfeedItemFeedbackPollGratitude.subtitle) && Intrinsics.areEqual(this.buttonText, newsfeedItemFeedbackPollGratitude.buttonText);
        }
        return false;
    }

    @NotNull
    public final String getButtonText() {
        return this.buttonText;
    }

    @NotNull
    public final String getSubtitle() {
        return this.subtitle;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((this.title.hashCode() * 31) + this.subtitle.hashCode()) * 31) + this.buttonText.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.title;
        String str2 = this.subtitle;
        String str3 = this.buttonText;
        return "NewsfeedItemFeedbackPollGratitude(title=" + str + ", subtitle=" + str2 + ", buttonText=" + str3 + ")";
    }
}

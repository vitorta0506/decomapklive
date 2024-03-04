package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollQuestionEntry;", "", BaseConfig.ITEM, "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "title", "", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;Ljava/lang/String;)V", "getItem", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemFeedbackPollQuestionEntry {
    @SerializedName(BaseConfig.ITEM)
    @NotNull
    private final NewsfeedNewsfeedItem item;
    @SerializedName("title")
    @Nullable
    private final String title;

    public NewsfeedItemFeedbackPollQuestionEntry(@NotNull NewsfeedNewsfeedItem item, @Nullable String str) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
        this.title = str;
    }

    public static /* synthetic */ NewsfeedItemFeedbackPollQuestionEntry copy$default(NewsfeedItemFeedbackPollQuestionEntry newsfeedItemFeedbackPollQuestionEntry, NewsfeedNewsfeedItem newsfeedNewsfeedItem, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            newsfeedNewsfeedItem = newsfeedItemFeedbackPollQuestionEntry.item;
        }
        if ((i9 & 2) != 0) {
            str = newsfeedItemFeedbackPollQuestionEntry.title;
        }
        return newsfeedItemFeedbackPollQuestionEntry.copy(newsfeedNewsfeedItem, str);
    }

    @NotNull
    public final NewsfeedNewsfeedItem component1() {
        return this.item;
    }

    @Nullable
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final NewsfeedItemFeedbackPollQuestionEntry copy(@NotNull NewsfeedNewsfeedItem item, @Nullable String str) {
        Intrinsics.checkNotNullParameter(item, "item");
        return new NewsfeedItemFeedbackPollQuestionEntry(item, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemFeedbackPollQuestionEntry) {
            NewsfeedItemFeedbackPollQuestionEntry newsfeedItemFeedbackPollQuestionEntry = (NewsfeedItemFeedbackPollQuestionEntry) obj;
            return Intrinsics.areEqual(this.item, newsfeedItemFeedbackPollQuestionEntry.item) && Intrinsics.areEqual(this.title, newsfeedItemFeedbackPollQuestionEntry.title);
        }
        return false;
    }

    @NotNull
    public final NewsfeedNewsfeedItem getItem() {
        return this.item;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = this.item.hashCode() * 31;
        String str = this.title;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        NewsfeedNewsfeedItem newsfeedNewsfeedItem = this.item;
        String str = this.title;
        return "NewsfeedItemFeedbackPollQuestionEntry(item=" + newsfeedNewsfeedItem + ", title=" + str + ")";
    }

    public /* synthetic */ NewsfeedItemFeedbackPollQuestionEntry(NewsfeedNewsfeedItem newsfeedNewsfeedItem, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(newsfeedNewsfeedItem, (i9 & 2) != 0 ? null : str);
    }
}

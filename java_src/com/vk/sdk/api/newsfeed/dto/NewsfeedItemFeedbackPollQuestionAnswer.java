package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollQuestionAnswer;", "", "title", "", "id", "(Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getTitle", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemFeedbackPollQuestionAnswer {
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35951id;
    @SerializedName("title")
    @NotNull
    private final String title;

    public NewsfeedItemFeedbackPollQuestionAnswer(@NotNull String title, @NotNull String id2) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(id2, "id");
        this.title = title;
        this.f35951id = id2;
    }

    public static /* synthetic */ NewsfeedItemFeedbackPollQuestionAnswer copy$default(NewsfeedItemFeedbackPollQuestionAnswer newsfeedItemFeedbackPollQuestionAnswer, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemFeedbackPollQuestionAnswer.title;
        }
        if ((i9 & 2) != 0) {
            str2 = newsfeedItemFeedbackPollQuestionAnswer.f35951id;
        }
        return newsfeedItemFeedbackPollQuestionAnswer.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.f35951id;
    }

    @NotNull
    public final NewsfeedItemFeedbackPollQuestionAnswer copy(@NotNull String title, @NotNull String id2) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(id2, "id");
        return new NewsfeedItemFeedbackPollQuestionAnswer(title, id2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemFeedbackPollQuestionAnswer) {
            NewsfeedItemFeedbackPollQuestionAnswer newsfeedItemFeedbackPollQuestionAnswer = (NewsfeedItemFeedbackPollQuestionAnswer) obj;
            return Intrinsics.areEqual(this.title, newsfeedItemFeedbackPollQuestionAnswer.title) && Intrinsics.areEqual(this.f35951id, newsfeedItemFeedbackPollQuestionAnswer.f35951id);
        }
        return false;
    }

    @NotNull
    public final String getId() {
        return this.f35951id;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + this.f35951id.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.title;
        String str2 = this.f35951id;
        return "NewsfeedItemFeedbackPollQuestionAnswer(title=" + str + ", id=" + str2 + ")";
    }
}

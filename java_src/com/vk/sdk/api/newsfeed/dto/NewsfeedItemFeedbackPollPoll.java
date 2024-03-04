package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollPoll;", "", "title", "", "gratitude", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollGratitude;", "questions", "", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollQuestion;", "(Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollGratitude;Ljava/util/List;)V", "getGratitude", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollGratitude;", "getQuestions", "()Ljava/util/List;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemFeedbackPollPoll {
    @SerializedName("gratitude")
    @NotNull
    private final NewsfeedItemFeedbackPollGratitude gratitude;
    @SerializedName("questions")
    @NotNull
    private final List<NewsfeedItemFeedbackPollQuestion> questions;
    @SerializedName("title")
    @NotNull
    private final String title;

    public NewsfeedItemFeedbackPollPoll(@NotNull String title, @NotNull NewsfeedItemFeedbackPollGratitude gratitude, @NotNull List<NewsfeedItemFeedbackPollQuestion> questions) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(gratitude, "gratitude");
        Intrinsics.checkNotNullParameter(questions, "questions");
        this.title = title;
        this.gratitude = gratitude;
        this.questions = questions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewsfeedItemFeedbackPollPoll copy$default(NewsfeedItemFeedbackPollPoll newsfeedItemFeedbackPollPoll, String str, NewsfeedItemFeedbackPollGratitude newsfeedItemFeedbackPollGratitude, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemFeedbackPollPoll.title;
        }
        if ((i9 & 2) != 0) {
            newsfeedItemFeedbackPollGratitude = newsfeedItemFeedbackPollPoll.gratitude;
        }
        if ((i9 & 4) != 0) {
            list = newsfeedItemFeedbackPollPoll.questions;
        }
        return newsfeedItemFeedbackPollPoll.copy(str, newsfeedItemFeedbackPollGratitude, list);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final NewsfeedItemFeedbackPollGratitude component2() {
        return this.gratitude;
    }

    @NotNull
    public final List<NewsfeedItemFeedbackPollQuestion> component3() {
        return this.questions;
    }

    @NotNull
    public final NewsfeedItemFeedbackPollPoll copy(@NotNull String title, @NotNull NewsfeedItemFeedbackPollGratitude gratitude, @NotNull List<NewsfeedItemFeedbackPollQuestion> questions) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(gratitude, "gratitude");
        Intrinsics.checkNotNullParameter(questions, "questions");
        return new NewsfeedItemFeedbackPollPoll(title, gratitude, questions);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemFeedbackPollPoll) {
            NewsfeedItemFeedbackPollPoll newsfeedItemFeedbackPollPoll = (NewsfeedItemFeedbackPollPoll) obj;
            return Intrinsics.areEqual(this.title, newsfeedItemFeedbackPollPoll.title) && Intrinsics.areEqual(this.gratitude, newsfeedItemFeedbackPollPoll.gratitude) && Intrinsics.areEqual(this.questions, newsfeedItemFeedbackPollPoll.questions);
        }
        return false;
    }

    @NotNull
    public final NewsfeedItemFeedbackPollGratitude getGratitude() {
        return this.gratitude;
    }

    @NotNull
    public final List<NewsfeedItemFeedbackPollQuestion> getQuestions() {
        return this.questions;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((this.title.hashCode() * 31) + this.gratitude.hashCode()) * 31) + this.questions.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.title;
        NewsfeedItemFeedbackPollGratitude newsfeedItemFeedbackPollGratitude = this.gratitude;
        List<NewsfeedItemFeedbackPollQuestion> list = this.questions;
        return "NewsfeedItemFeedbackPollPoll(title=" + str + ", gratitude=" + newsfeedItemFeedbackPollGratitude + ", questions=" + list + ")";
    }
}

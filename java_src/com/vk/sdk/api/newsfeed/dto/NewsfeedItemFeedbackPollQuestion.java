package com.vk.sdk.api.newsfeed.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u0006HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003JI\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollQuestion;", "", ViewHierarchyConstants.TEXT_KEY, "", "nextButtonText", "answers", "", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollQuestionAnswer;", "entries", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemFeedbackPollQuestionEntry;", "buttonText", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getAnswers", "()Ljava/util/List;", "getButtonText", "()Ljava/lang/String;", "getEntries", "getNextButtonText", "getText", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemFeedbackPollQuestion {
    @SerializedName("answers")
    @NotNull
    private final List<NewsfeedItemFeedbackPollQuestionAnswer> answers;
    @SerializedName("button_text")
    @Nullable
    private final String buttonText;
    @SerializedName("entries")
    @NotNull
    private final List<NewsfeedItemFeedbackPollQuestionEntry> entries;
    @SerializedName("next_button_text")
    @NotNull
    private final String nextButtonText;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    public NewsfeedItemFeedbackPollQuestion(@NotNull String text, @NotNull String nextButtonText, @NotNull List<NewsfeedItemFeedbackPollQuestionAnswer> answers, @NotNull List<NewsfeedItemFeedbackPollQuestionEntry> entries, @Nullable String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(nextButtonText, "nextButtonText");
        Intrinsics.checkNotNullParameter(answers, "answers");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.text = text;
        this.nextButtonText = nextButtonText;
        this.answers = answers;
        this.entries = entries;
        this.buttonText = str;
    }

    public static /* synthetic */ NewsfeedItemFeedbackPollQuestion copy$default(NewsfeedItemFeedbackPollQuestion newsfeedItemFeedbackPollQuestion, String str, String str2, List list, List list2, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = newsfeedItemFeedbackPollQuestion.text;
        }
        if ((i9 & 2) != 0) {
            str2 = newsfeedItemFeedbackPollQuestion.nextButtonText;
        }
        String str4 = str2;
        List<NewsfeedItemFeedbackPollQuestionAnswer> list3 = list;
        if ((i9 & 4) != 0) {
            list3 = newsfeedItemFeedbackPollQuestion.answers;
        }
        List list4 = list3;
        List<NewsfeedItemFeedbackPollQuestionEntry> list5 = list2;
        if ((i9 & 8) != 0) {
            list5 = newsfeedItemFeedbackPollQuestion.entries;
        }
        List list6 = list5;
        if ((i9 & 16) != 0) {
            str3 = newsfeedItemFeedbackPollQuestion.buttonText;
        }
        return newsfeedItemFeedbackPollQuestion.copy(str, str4, list4, list6, str3);
    }

    @NotNull
    public final String component1() {
        return this.text;
    }

    @NotNull
    public final String component2() {
        return this.nextButtonText;
    }

    @NotNull
    public final List<NewsfeedItemFeedbackPollQuestionAnswer> component3() {
        return this.answers;
    }

    @NotNull
    public final List<NewsfeedItemFeedbackPollQuestionEntry> component4() {
        return this.entries;
    }

    @Nullable
    public final String component5() {
        return this.buttonText;
    }

    @NotNull
    public final NewsfeedItemFeedbackPollQuestion copy(@NotNull String text, @NotNull String nextButtonText, @NotNull List<NewsfeedItemFeedbackPollQuestionAnswer> answers, @NotNull List<NewsfeedItemFeedbackPollQuestionEntry> entries, @Nullable String str) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(nextButtonText, "nextButtonText");
        Intrinsics.checkNotNullParameter(answers, "answers");
        Intrinsics.checkNotNullParameter(entries, "entries");
        return new NewsfeedItemFeedbackPollQuestion(text, nextButtonText, answers, entries, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemFeedbackPollQuestion) {
            NewsfeedItemFeedbackPollQuestion newsfeedItemFeedbackPollQuestion = (NewsfeedItemFeedbackPollQuestion) obj;
            return Intrinsics.areEqual(this.text, newsfeedItemFeedbackPollQuestion.text) && Intrinsics.areEqual(this.nextButtonText, newsfeedItemFeedbackPollQuestion.nextButtonText) && Intrinsics.areEqual(this.answers, newsfeedItemFeedbackPollQuestion.answers) && Intrinsics.areEqual(this.entries, newsfeedItemFeedbackPollQuestion.entries) && Intrinsics.areEqual(this.buttonText, newsfeedItemFeedbackPollQuestion.buttonText);
        }
        return false;
    }

    @NotNull
    public final List<NewsfeedItemFeedbackPollQuestionAnswer> getAnswers() {
        return this.answers;
    }

    @Nullable
    public final String getButtonText() {
        return this.buttonText;
    }

    @NotNull
    public final List<NewsfeedItemFeedbackPollQuestionEntry> getEntries() {
        return this.entries;
    }

    @NotNull
    public final String getNextButtonText() {
        return this.nextButtonText;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode = ((((((this.text.hashCode() * 31) + this.nextButtonText.hashCode()) * 31) + this.answers.hashCode()) * 31) + this.entries.hashCode()) * 31;
        String str = this.buttonText;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        String str = this.text;
        String str2 = this.nextButtonText;
        List<NewsfeedItemFeedbackPollQuestionAnswer> list = this.answers;
        List<NewsfeedItemFeedbackPollQuestionEntry> list2 = this.entries;
        String str3 = this.buttonText;
        return "NewsfeedItemFeedbackPollQuestion(text=" + str + ", nextButtonText=" + str2 + ", answers=" + list + ", entries=" + list2 + ", buttonText=" + str3 + ")";
    }

    public /* synthetic */ NewsfeedItemFeedbackPollQuestion(String str, String str2, List list, List list2, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, list, list2, (i9 & 16) != 0 ? null : str3);
    }
}

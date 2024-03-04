package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003JL\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\nHÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedback;", "", "type", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedbackType;", "question", "", "answers", "", "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedbackAnswer;", "starsCount", "", "gratitude", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedbackType;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V", "getAnswers", "()Ljava/util/List;", "getGratitude", "()Ljava/lang/String;", "getQuestion", "getStarsCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getType", "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedbackType;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedbackType;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedItemWallpostFeedback;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedItemWallpostFeedback {
    @SerializedName("answers")
    @Nullable
    private final List<NewsfeedItemWallpostFeedbackAnswer> answers;
    @SerializedName("gratitude")
    @Nullable
    private final String gratitude;
    @SerializedName("question")
    @NotNull
    private final String question;
    @SerializedName("stars_count")
    @Nullable
    private final Integer starsCount;
    @SerializedName("type")
    @NotNull
    private final NewsfeedItemWallpostFeedbackType type;

    public NewsfeedItemWallpostFeedback(@NotNull NewsfeedItemWallpostFeedbackType type, @NotNull String question, @Nullable List<NewsfeedItemWallpostFeedbackAnswer> list, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(question, "question");
        this.type = type;
        this.question = question;
        this.answers = list;
        this.starsCount = num;
        this.gratitude = str;
    }

    public static /* synthetic */ NewsfeedItemWallpostFeedback copy$default(NewsfeedItemWallpostFeedback newsfeedItemWallpostFeedback, NewsfeedItemWallpostFeedbackType newsfeedItemWallpostFeedbackType, String str, List list, Integer num, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            newsfeedItemWallpostFeedbackType = newsfeedItemWallpostFeedback.type;
        }
        if ((i9 & 2) != 0) {
            str = newsfeedItemWallpostFeedback.question;
        }
        String str3 = str;
        List<NewsfeedItemWallpostFeedbackAnswer> list2 = list;
        if ((i9 & 4) != 0) {
            list2 = newsfeedItemWallpostFeedback.answers;
        }
        List list3 = list2;
        if ((i9 & 8) != 0) {
            num = newsfeedItemWallpostFeedback.starsCount;
        }
        Integer num2 = num;
        if ((i9 & 16) != 0) {
            str2 = newsfeedItemWallpostFeedback.gratitude;
        }
        return newsfeedItemWallpostFeedback.copy(newsfeedItemWallpostFeedbackType, str3, list3, num2, str2);
    }

    @NotNull
    public final NewsfeedItemWallpostFeedbackType component1() {
        return this.type;
    }

    @NotNull
    public final String component2() {
        return this.question;
    }

    @Nullable
    public final List<NewsfeedItemWallpostFeedbackAnswer> component3() {
        return this.answers;
    }

    @Nullable
    public final Integer component4() {
        return this.starsCount;
    }

    @Nullable
    public final String component5() {
        return this.gratitude;
    }

    @NotNull
    public final NewsfeedItemWallpostFeedback copy(@NotNull NewsfeedItemWallpostFeedbackType type, @NotNull String question, @Nullable List<NewsfeedItemWallpostFeedbackAnswer> list, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(question, "question");
        return new NewsfeedItemWallpostFeedback(type, question, list, num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedItemWallpostFeedback) {
            NewsfeedItemWallpostFeedback newsfeedItemWallpostFeedback = (NewsfeedItemWallpostFeedback) obj;
            return this.type == newsfeedItemWallpostFeedback.type && Intrinsics.areEqual(this.question, newsfeedItemWallpostFeedback.question) && Intrinsics.areEqual(this.answers, newsfeedItemWallpostFeedback.answers) && Intrinsics.areEqual(this.starsCount, newsfeedItemWallpostFeedback.starsCount) && Intrinsics.areEqual(this.gratitude, newsfeedItemWallpostFeedback.gratitude);
        }
        return false;
    }

    @Nullable
    public final List<NewsfeedItemWallpostFeedbackAnswer> getAnswers() {
        return this.answers;
    }

    @Nullable
    public final String getGratitude() {
        return this.gratitude;
    }

    @NotNull
    public final String getQuestion() {
        return this.question;
    }

    @Nullable
    public final Integer getStarsCount() {
        return this.starsCount;
    }

    @NotNull
    public final NewsfeedItemWallpostFeedbackType getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.type.hashCode() * 31) + this.question.hashCode()) * 31;
        List<NewsfeedItemWallpostFeedbackAnswer> list = this.answers;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.starsCount;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.gratitude;
        return hashCode3 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        NewsfeedItemWallpostFeedbackType newsfeedItemWallpostFeedbackType = this.type;
        String str = this.question;
        List<NewsfeedItemWallpostFeedbackAnswer> list = this.answers;
        Integer num = this.starsCount;
        String str2 = this.gratitude;
        return "NewsfeedItemWallpostFeedback(type=" + newsfeedItemWallpostFeedbackType + ", question=" + str + ", answers=" + list + ", starsCount=" + num + ", gratitude=" + str2 + ")";
    }

    public /* synthetic */ NewsfeedItemWallpostFeedback(NewsfeedItemWallpostFeedbackType newsfeedItemWallpostFeedbackType, String str, List list, Integer num, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(newsfeedItemWallpostFeedbackType, str, (i9 & 4) != 0 ? null : list, (i9 & 8) != 0 ? null : num, (i9 & 16) != 0 ? null : str2);
    }
}

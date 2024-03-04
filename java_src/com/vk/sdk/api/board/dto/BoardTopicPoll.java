package com.vk.sdk.api.board.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.polls.dto.PollsAnswer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\bHÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\u000f\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u000fHÆ\u0003Ja\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0005HÖ\u0001J\t\u0010*\u001a\u00020\bHÖ\u0001R\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012¨\u0006+"}, d2 = {"Lcom/vk/sdk/api/board/dto/BoardTopicPoll;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "pollId", "", "created", "question", "", "votes", "answerId", "answers", "", "Lcom/vk/sdk/api/polls/dto/PollsAnswer;", "isClosed", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "(Lcom/vk/dto/common/id/UserId;IILjava/lang/String;IILjava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getAnswerId", "()I", "getAnswers", "()Ljava/util/List;", "getCreated", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPollId", "getQuestion", "()Ljava/lang/String;", "getVotes", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoardTopicPoll {
    @SerializedName("answer_id")
    private final int answerId;
    @SerializedName("answers")
    @NotNull
    private final List<PollsAnswer> answers;
    @SerializedName("created")
    private final int created;
    @SerializedName("is_closed")
    @Nullable
    private final BaseBoolInt isClosed;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("poll_id")
    private final int pollId;
    @SerializedName("question")
    @NotNull
    private final String question;
    @SerializedName("votes")
    private final int votes;

    public BoardTopicPoll(@NotNull UserId ownerId, int i9, int i10, @NotNull String question, int i11, int i12, @NotNull List<PollsAnswer> answers, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(question, "question");
        Intrinsics.checkNotNullParameter(answers, "answers");
        this.ownerId = ownerId;
        this.pollId = i9;
        this.created = i10;
        this.question = question;
        this.votes = i11;
        this.answerId = i12;
        this.answers = answers;
        this.isClosed = baseBoolInt;
    }

    @NotNull
    public final UserId component1() {
        return this.ownerId;
    }

    public final int component2() {
        return this.pollId;
    }

    public final int component3() {
        return this.created;
    }

    @NotNull
    public final String component4() {
        return this.question;
    }

    public final int component5() {
        return this.votes;
    }

    public final int component6() {
        return this.answerId;
    }

    @NotNull
    public final List<PollsAnswer> component7() {
        return this.answers;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.isClosed;
    }

    @NotNull
    public final BoardTopicPoll copy(@NotNull UserId ownerId, int i9, int i10, @NotNull String question, int i11, int i12, @NotNull List<PollsAnswer> answers, @Nullable BaseBoolInt baseBoolInt) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(question, "question");
        Intrinsics.checkNotNullParameter(answers, "answers");
        return new BoardTopicPoll(ownerId, i9, i10, question, i11, i12, answers, baseBoolInt);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BoardTopicPoll) {
            BoardTopicPoll boardTopicPoll = (BoardTopicPoll) obj;
            return Intrinsics.areEqual(this.ownerId, boardTopicPoll.ownerId) && this.pollId == boardTopicPoll.pollId && this.created == boardTopicPoll.created && Intrinsics.areEqual(this.question, boardTopicPoll.question) && this.votes == boardTopicPoll.votes && this.answerId == boardTopicPoll.answerId && Intrinsics.areEqual(this.answers, boardTopicPoll.answers) && this.isClosed == boardTopicPoll.isClosed;
        }
        return false;
    }

    public final int getAnswerId() {
        return this.answerId;
    }

    @NotNull
    public final List<PollsAnswer> getAnswers() {
        return this.answers;
    }

    public final int getCreated() {
        return this.created;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    public final int getPollId() {
        return this.pollId;
    }

    @NotNull
    public final String getQuestion() {
        return this.question;
    }

    public final int getVotes() {
        return this.votes;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.ownerId.hashCode() * 31) + this.pollId) * 31) + this.created) * 31) + this.question.hashCode()) * 31) + this.votes) * 31) + this.answerId) * 31) + this.answers.hashCode()) * 31;
        BaseBoolInt baseBoolInt = this.isClosed;
        return hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode());
    }

    @Nullable
    public final BaseBoolInt isClosed() {
        return this.isClosed;
    }

    @NotNull
    public String toString() {
        UserId userId = this.ownerId;
        int i9 = this.pollId;
        int i10 = this.created;
        String str = this.question;
        int i11 = this.votes;
        int i12 = this.answerId;
        List<PollsAnswer> list = this.answers;
        BaseBoolInt baseBoolInt = this.isClosed;
        return "BoardTopicPoll(ownerId=" + userId + ", pollId=" + i9 + ", created=" + i10 + ", question=" + str + ", votes=" + i11 + ", answerId=" + i12 + ", answers=" + list + ", isClosed=" + baseBoolInt + ")";
    }

    public /* synthetic */ BoardTopicPoll(UserId userId, int i9, int i10, String str, int i11, int i12, List list, BaseBoolInt baseBoolInt, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, i9, i10, str, i11, i12, list, (i13 & 128) != 0 ? null : baseBoolInt);
    }
}

package com.vk.sdk.api.polls.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\bA\b\u0086\b\u0018\u00002\u00020\u0001Bï\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\r\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010!J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\u0005HÆ\u0003J\t\u0010D\u001a\u00020\u0005HÆ\u0003J\t\u0010E\u001a\u00020\u0012HÆ\u0003J\t\u0010F\u001a\u00020\u0014HÆ\u0003J\t\u0010G\u001a\u00020\u0005HÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\u0010\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010#J\u0011\u0010J\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\rHÆ\u0003J\u0010\u0010K\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010&J\u0011\u0010L\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\rHÆ\u0003J\t\u0010M\u001a\u00020\u0005HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010&J\u000b\u0010Q\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\t\u0010R\u001a\u00020\u0003HÆ\u0003J\t\u0010S\u001a\u00020\u0003HÆ\u0003J\t\u0010T\u001a\u00020\u0003HÆ\u0003J\t\u0010U\u001a\u00020\u0003HÆ\u0003J\t\u0010V\u001a\u00020\u0003HÆ\u0003J\t\u0010W\u001a\u00020\u0003HÆ\u0003J\u000f\u0010X\u001a\b\u0012\u0004\u0012\u00020\u000e0\rHÆ\u0003J\u0096\u0002\u0010Y\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\r2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001eHÆ\u0001¢\u0006\u0002\u0010ZJ\u0013\u0010[\u001a\u00020\u00032\b\u0010\\\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010]\u001a\u00020\u0005HÖ\u0001J\t\u0010^\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010'\u001a\u0004\b%\u0010&R\u001e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010)R\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010'\u001a\u0004\b+\u0010&R\u0018\u0010 \u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010/R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010/R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010/R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010/R\u0016\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0016\u0010\u0016\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010/R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u00105R\u001e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010)R\u0016\u0010\u0010\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u00105R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010/R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010/R\u0016\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010-R\u0016\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u00108R\u0016\u0010\u0015\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u00105¨\u0006_"}, d2 = {"Lcom/vk/sdk/api/polls/dto/PollsPoll;", "", "multiple", "", "endDate", "", "closed", "isBoard", "canEdit", "canVote", "canReport", "canShare", "answers", "", "Lcom/vk/sdk/api/polls/dto/PollsAnswer;", "created", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "question", "", "votes", "disableUnvote", "anonymous", NativeProtocol.AUDIENCE_FRIENDS, "Lcom/vk/sdk/api/polls/dto/PollsFriend;", "answerId", "answerIds", "embedHash", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/polls/dto/PollsBackground;", "authorId", "background", "(ZIZZZZZZLjava/util/List;IILcom/vk/dto/common/id/UserId;Ljava/lang/String;IZLjava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/polls/dto/PollsBackground;Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsBackground;)V", "getAnonymous", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getAnswerId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getAnswerIds", "()Ljava/util/List;", "getAnswers", "getAuthorId", "getBackground", "()Lcom/vk/sdk/api/polls/dto/PollsBackground;", "getCanEdit", "()Z", "getCanReport", "getCanShare", "getCanVote", "getClosed", "getCreated", "()I", "getDisableUnvote", "getEmbedHash", "()Ljava/lang/String;", "getEndDate", "getFriends", "getId", "getMultiple", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPhoto", "getQuestion", "getVotes", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ZIZZZZZZLjava/util/List;IILcom/vk/dto/common/id/UserId;Ljava/lang/String;IZLjava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/polls/dto/PollsBackground;Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsBackground;)Lcom/vk/sdk/api/polls/dto/PollsPoll;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PollsPoll {
    @SerializedName("anonymous")
    @Nullable
    private final Boolean anonymous;
    @SerializedName("answer_id")
    @Nullable
    private final Integer answerId;
    @SerializedName("answer_ids")
    @Nullable
    private final List<Integer> answerIds;
    @SerializedName("answers")
    @NotNull
    private final List<PollsAnswer> answers;
    @SerializedName("author_id")
    @Nullable
    private final Integer authorId;
    @SerializedName("background")
    @Nullable
    private final PollsBackground background;
    @SerializedName("can_edit")
    private final boolean canEdit;
    @SerializedName("can_report")
    private final boolean canReport;
    @SerializedName("can_share")
    private final boolean canShare;
    @SerializedName("can_vote")
    private final boolean canVote;
    @SerializedName("closed")
    private final boolean closed;
    @SerializedName("created")
    private final int created;
    @SerializedName("disable_unvote")
    private final boolean disableUnvote;
    @SerializedName("embed_hash")
    @Nullable
    private final String embedHash;
    @SerializedName("end_date")
    private final int endDate;
    @SerializedName(NativeProtocol.AUDIENCE_FRIENDS)
    @Nullable
    private final List<PollsFriend> friends;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36055id;
    @SerializedName("is_board")
    private final boolean isBoard;
    @SerializedName("multiple")
    private final boolean multiple;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final PollsBackground photo;
    @SerializedName("question")
    @NotNull
    private final String question;
    @SerializedName("votes")
    private final int votes;

    public PollsPoll(boolean z10, int i9, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, @NotNull List<PollsAnswer> answers, int i10, int i11, @NotNull UserId ownerId, @NotNull String question, int i12, boolean z17, @Nullable Boolean bool, @Nullable List<PollsFriend> list, @Nullable Integer num, @Nullable List<Integer> list2, @Nullable String str, @Nullable PollsBackground pollsBackground, @Nullable Integer num2, @Nullable PollsBackground pollsBackground2) {
        Intrinsics.checkNotNullParameter(answers, "answers");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(question, "question");
        this.multiple = z10;
        this.endDate = i9;
        this.closed = z11;
        this.isBoard = z12;
        this.canEdit = z13;
        this.canVote = z14;
        this.canReport = z15;
        this.canShare = z16;
        this.answers = answers;
        this.created = i10;
        this.f36055id = i11;
        this.ownerId = ownerId;
        this.question = question;
        this.votes = i12;
        this.disableUnvote = z17;
        this.anonymous = bool;
        this.friends = list;
        this.answerId = num;
        this.answerIds = list2;
        this.embedHash = str;
        this.photo = pollsBackground;
        this.authorId = num2;
        this.background = pollsBackground2;
    }

    public final boolean component1() {
        return this.multiple;
    }

    public final int component10() {
        return this.created;
    }

    public final int component11() {
        return this.f36055id;
    }

    @NotNull
    public final UserId component12() {
        return this.ownerId;
    }

    @NotNull
    public final String component13() {
        return this.question;
    }

    public final int component14() {
        return this.votes;
    }

    public final boolean component15() {
        return this.disableUnvote;
    }

    @Nullable
    public final Boolean component16() {
        return this.anonymous;
    }

    @Nullable
    public final List<PollsFriend> component17() {
        return this.friends;
    }

    @Nullable
    public final Integer component18() {
        return this.answerId;
    }

    @Nullable
    public final List<Integer> component19() {
        return this.answerIds;
    }

    public final int component2() {
        return this.endDate;
    }

    @Nullable
    public final String component20() {
        return this.embedHash;
    }

    @Nullable
    public final PollsBackground component21() {
        return this.photo;
    }

    @Nullable
    public final Integer component22() {
        return this.authorId;
    }

    @Nullable
    public final PollsBackground component23() {
        return this.background;
    }

    public final boolean component3() {
        return this.closed;
    }

    public final boolean component4() {
        return this.isBoard;
    }

    public final boolean component5() {
        return this.canEdit;
    }

    public final boolean component6() {
        return this.canVote;
    }

    public final boolean component7() {
        return this.canReport;
    }

    public final boolean component8() {
        return this.canShare;
    }

    @NotNull
    public final List<PollsAnswer> component9() {
        return this.answers;
    }

    @NotNull
    public final PollsPoll copy(boolean z10, int i9, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, @NotNull List<PollsAnswer> answers, int i10, int i11, @NotNull UserId ownerId, @NotNull String question, int i12, boolean z17, @Nullable Boolean bool, @Nullable List<PollsFriend> list, @Nullable Integer num, @Nullable List<Integer> list2, @Nullable String str, @Nullable PollsBackground pollsBackground, @Nullable Integer num2, @Nullable PollsBackground pollsBackground2) {
        Intrinsics.checkNotNullParameter(answers, "answers");
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(question, "question");
        return new PollsPoll(z10, i9, z11, z12, z13, z14, z15, z16, answers, i10, i11, ownerId, question, i12, z17, bool, list, num, list2, str, pollsBackground, num2, pollsBackground2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PollsPoll) {
            PollsPoll pollsPoll = (PollsPoll) obj;
            return this.multiple == pollsPoll.multiple && this.endDate == pollsPoll.endDate && this.closed == pollsPoll.closed && this.isBoard == pollsPoll.isBoard && this.canEdit == pollsPoll.canEdit && this.canVote == pollsPoll.canVote && this.canReport == pollsPoll.canReport && this.canShare == pollsPoll.canShare && Intrinsics.areEqual(this.answers, pollsPoll.answers) && this.created == pollsPoll.created && this.f36055id == pollsPoll.f36055id && Intrinsics.areEqual(this.ownerId, pollsPoll.ownerId) && Intrinsics.areEqual(this.question, pollsPoll.question) && this.votes == pollsPoll.votes && this.disableUnvote == pollsPoll.disableUnvote && Intrinsics.areEqual(this.anonymous, pollsPoll.anonymous) && Intrinsics.areEqual(this.friends, pollsPoll.friends) && Intrinsics.areEqual(this.answerId, pollsPoll.answerId) && Intrinsics.areEqual(this.answerIds, pollsPoll.answerIds) && Intrinsics.areEqual(this.embedHash, pollsPoll.embedHash) && Intrinsics.areEqual(this.photo, pollsPoll.photo) && Intrinsics.areEqual(this.authorId, pollsPoll.authorId) && Intrinsics.areEqual(this.background, pollsPoll.background);
        }
        return false;
    }

    @Nullable
    public final Boolean getAnonymous() {
        return this.anonymous;
    }

    @Nullable
    public final Integer getAnswerId() {
        return this.answerId;
    }

    @Nullable
    public final List<Integer> getAnswerIds() {
        return this.answerIds;
    }

    @NotNull
    public final List<PollsAnswer> getAnswers() {
        return this.answers;
    }

    @Nullable
    public final Integer getAuthorId() {
        return this.authorId;
    }

    @Nullable
    public final PollsBackground getBackground() {
        return this.background;
    }

    public final boolean getCanEdit() {
        return this.canEdit;
    }

    public final boolean getCanReport() {
        return this.canReport;
    }

    public final boolean getCanShare() {
        return this.canShare;
    }

    public final boolean getCanVote() {
        return this.canVote;
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final int getCreated() {
        return this.created;
    }

    public final boolean getDisableUnvote() {
        return this.disableUnvote;
    }

    @Nullable
    public final String getEmbedHash() {
        return this.embedHash;
    }

    public final int getEndDate() {
        return this.endDate;
    }

    @Nullable
    public final List<PollsFriend> getFriends() {
        return this.friends;
    }

    public final int getId() {
        return this.f36055id;
    }

    public final boolean getMultiple() {
        return this.multiple;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final PollsBackground getPhoto() {
        return this.photo;
    }

    @NotNull
    public final String getQuestion() {
        return this.question;
    }

    public final int getVotes() {
        return this.votes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v9, types: [boolean] */
    public int hashCode() {
        boolean z10 = this.multiple;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = ((r02 * 31) + this.endDate) * 31;
        ?? r22 = this.closed;
        int i10 = r22;
        if (r22 != 0) {
            i10 = 1;
        }
        int i11 = (i9 + i10) * 31;
        ?? r23 = this.isBoard;
        int i12 = r23;
        if (r23 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        ?? r24 = this.canEdit;
        int i14 = r24;
        if (r24 != 0) {
            i14 = 1;
        }
        int i15 = (i13 + i14) * 31;
        ?? r25 = this.canVote;
        int i16 = r25;
        if (r25 != 0) {
            i16 = 1;
        }
        int i17 = (i15 + i16) * 31;
        ?? r26 = this.canReport;
        int i18 = r26;
        if (r26 != 0) {
            i18 = 1;
        }
        int i19 = (i17 + i18) * 31;
        ?? r27 = this.canShare;
        int i20 = r27;
        if (r27 != 0) {
            i20 = 1;
        }
        int hashCode = (((((((((((((i19 + i20) * 31) + this.answers.hashCode()) * 31) + this.created) * 31) + this.f36055id) * 31) + this.ownerId.hashCode()) * 31) + this.question.hashCode()) * 31) + this.votes) * 31;
        boolean z11 = this.disableUnvote;
        int i21 = (hashCode + (z11 ? 1 : z11 ? 1 : 0)) * 31;
        Boolean bool = this.anonymous;
        int hashCode2 = (i21 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<PollsFriend> list = this.friends;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.answerId;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        List<Integer> list2 = this.answerIds;
        int hashCode5 = (hashCode4 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.embedHash;
        int hashCode6 = (hashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        PollsBackground pollsBackground = this.photo;
        int hashCode7 = (hashCode6 + (pollsBackground == null ? 0 : pollsBackground.hashCode())) * 31;
        Integer num2 = this.authorId;
        int hashCode8 = (hashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        PollsBackground pollsBackground2 = this.background;
        return hashCode8 + (pollsBackground2 != null ? pollsBackground2.hashCode() : 0);
    }

    public final boolean isBoard() {
        return this.isBoard;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.multiple;
        int i9 = this.endDate;
        boolean z11 = this.closed;
        boolean z12 = this.isBoard;
        boolean z13 = this.canEdit;
        boolean z14 = this.canVote;
        boolean z15 = this.canReport;
        boolean z16 = this.canShare;
        List<PollsAnswer> list = this.answers;
        int i10 = this.created;
        int i11 = this.f36055id;
        UserId userId = this.ownerId;
        String str = this.question;
        int i12 = this.votes;
        boolean z17 = this.disableUnvote;
        Boolean bool = this.anonymous;
        List<PollsFriend> list2 = this.friends;
        Integer num = this.answerId;
        List<Integer> list3 = this.answerIds;
        String str2 = this.embedHash;
        PollsBackground pollsBackground = this.photo;
        Integer num2 = this.authorId;
        PollsBackground pollsBackground2 = this.background;
        return "PollsPoll(multiple=" + z10 + ", endDate=" + i9 + ", closed=" + z11 + ", isBoard=" + z12 + ", canEdit=" + z13 + ", canVote=" + z14 + ", canReport=" + z15 + ", canShare=" + z16 + ", answers=" + list + ", created=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", question=" + str + ", votes=" + i12 + ", disableUnvote=" + z17 + ", anonymous=" + bool + ", friends=" + list2 + ", answerId=" + num + ", answerIds=" + list3 + ", embedHash=" + str2 + ", photo=" + pollsBackground + ", authorId=" + num2 + ", background=" + pollsBackground2 + ")";
    }

    public /* synthetic */ PollsPoll(boolean z10, int i9, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, List list, int i10, int i11, UserId userId, String str, int i12, boolean z17, Boolean bool, List list2, Integer num, List list3, String str2, PollsBackground pollsBackground, Integer num2, PollsBackground pollsBackground2, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, i9, z11, z12, z13, z14, z15, z16, list, i10, i11, userId, str, i12, z17, (i13 & 32768) != 0 ? null : bool, (i13 & 65536) != 0 ? null : list2, (i13 & 131072) != 0 ? null : num, (i13 & 262144) != 0 ? null : list3, (i13 & 524288) != 0 ? null : str2, (i13 & 1048576) != 0 ? null : pollsBackground, (i13 & 2097152) != 0 ? null : num2, (i13 & 4194304) != 0 ? null : pollsBackground2);
    }
}

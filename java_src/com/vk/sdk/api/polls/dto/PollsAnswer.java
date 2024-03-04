package com.vk.sdk.api.polls.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/polls/dto/PollsAnswer;", "", "id", "", "rate", "", ViewHierarchyConstants.TEXT_KEY, "", "votes", "(IFLjava/lang/String;I)V", "getId", "()I", "getRate", "()F", "getText", "()Ljava/lang/String;", "getVotes", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PollsAnswer {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36052id;
    @SerializedName("rate")
    private final float rate;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;
    @SerializedName("votes")
    private final int votes;

    public PollsAnswer(int i9, float f10, @NotNull String text, int i10) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.f36052id = i9;
        this.rate = f10;
        this.text = text;
        this.votes = i10;
    }

    public static /* synthetic */ PollsAnswer copy$default(PollsAnswer pollsAnswer, int i9, float f10, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = pollsAnswer.f36052id;
        }
        if ((i11 & 2) != 0) {
            f10 = pollsAnswer.rate;
        }
        if ((i11 & 4) != 0) {
            str = pollsAnswer.text;
        }
        if ((i11 & 8) != 0) {
            i10 = pollsAnswer.votes;
        }
        return pollsAnswer.copy(i9, f10, str, i10);
    }

    public final int component1() {
        return this.f36052id;
    }

    public final float component2() {
        return this.rate;
    }

    @NotNull
    public final String component3() {
        return this.text;
    }

    public final int component4() {
        return this.votes;
    }

    @NotNull
    public final PollsAnswer copy(int i9, float f10, @NotNull String text, int i10) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new PollsAnswer(i9, f10, text, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PollsAnswer) {
            PollsAnswer pollsAnswer = (PollsAnswer) obj;
            return this.f36052id == pollsAnswer.f36052id && Intrinsics.areEqual((Object) Float.valueOf(this.rate), (Object) Float.valueOf(pollsAnswer.rate)) && Intrinsics.areEqual(this.text, pollsAnswer.text) && this.votes == pollsAnswer.votes;
        }
        return false;
    }

    public final int getId() {
        return this.f36052id;
    }

    public final float getRate() {
        return this.rate;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final int getVotes() {
        return this.votes;
    }

    public int hashCode() {
        return (((((this.f36052id * 31) + Float.floatToIntBits(this.rate)) * 31) + this.text.hashCode()) * 31) + this.votes;
    }

    @NotNull
    public String toString() {
        int i9 = this.f36052id;
        float f10 = this.rate;
        String str = this.text;
        int i10 = this.votes;
        return "PollsAnswer(id=" + i9 + ", rate=" + f10 + ", text=" + str + ", votes=" + i10 + ")";
    }
}

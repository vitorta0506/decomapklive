package com.vk.sdk.api.polls.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/polls/dto/PollsVoters;", "", "answerId", "", "users", "Lcom/vk/sdk/api/polls/dto/PollsVotersUsers;", "(Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsVotersUsers;)V", "getAnswerId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUsers", "()Lcom/vk/sdk/api/polls/dto/PollsVotersUsers;", "component1", "component2", "copy", "(Ljava/lang/Integer;Lcom/vk/sdk/api/polls/dto/PollsVotersUsers;)Lcom/vk/sdk/api/polls/dto/PollsVoters;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PollsVoters {
    @SerializedName("answer_id")
    @Nullable
    private final Integer answerId;
    @SerializedName("users")
    @Nullable
    private final PollsVotersUsers users;

    public PollsVoters() {
        this(null, null, 3, null);
    }

    public PollsVoters(@Nullable Integer num, @Nullable PollsVotersUsers pollsVotersUsers) {
        this.answerId = num;
        this.users = pollsVotersUsers;
    }

    public static /* synthetic */ PollsVoters copy$default(PollsVoters pollsVoters, Integer num, PollsVotersUsers pollsVotersUsers, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = pollsVoters.answerId;
        }
        if ((i9 & 2) != 0) {
            pollsVotersUsers = pollsVoters.users;
        }
        return pollsVoters.copy(num, pollsVotersUsers);
    }

    @Nullable
    public final Integer component1() {
        return this.answerId;
    }

    @Nullable
    public final PollsVotersUsers component2() {
        return this.users;
    }

    @NotNull
    public final PollsVoters copy(@Nullable Integer num, @Nullable PollsVotersUsers pollsVotersUsers) {
        return new PollsVoters(num, pollsVotersUsers);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PollsVoters) {
            PollsVoters pollsVoters = (PollsVoters) obj;
            return Intrinsics.areEqual(this.answerId, pollsVoters.answerId) && Intrinsics.areEqual(this.users, pollsVoters.users);
        }
        return false;
    }

    @Nullable
    public final Integer getAnswerId() {
        return this.answerId;
    }

    @Nullable
    public final PollsVotersUsers getUsers() {
        return this.users;
    }

    public int hashCode() {
        Integer num = this.answerId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        PollsVotersUsers pollsVotersUsers = this.users;
        return hashCode + (pollsVotersUsers != null ? pollsVotersUsers.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.answerId;
        PollsVotersUsers pollsVotersUsers = this.users;
        return "PollsVoters(answerId=" + num + ", users=" + pollsVotersUsers + ")";
    }

    public /* synthetic */ PollsVoters(Integer num, PollsVotersUsers pollsVotersUsers, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : pollsVotersUsers);
    }
}

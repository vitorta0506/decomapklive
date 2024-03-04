package com.vk.sdk.api.polls.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/vk/sdk/api/polls/dto/PollsFriend;", "", "id", "Lcom/vk/dto/common/id/UserId;", "(Lcom/vk/dto/common/id/UserId;)V", "getId", "()Lcom/vk/dto/common/id/UserId;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PollsFriend {
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final UserId f36054id;

    public PollsFriend(@NotNull UserId id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f36054id = id2;
    }

    public static /* synthetic */ PollsFriend copy$default(PollsFriend pollsFriend, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = pollsFriend.f36054id;
        }
        return pollsFriend.copy(userId);
    }

    @NotNull
    public final UserId component1() {
        return this.f36054id;
    }

    @NotNull
    public final PollsFriend copy(@NotNull UserId id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        return new PollsFriend(id2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PollsFriend) && Intrinsics.areEqual(this.f36054id, ((PollsFriend) obj).f36054id);
    }

    @NotNull
    public final UserId getId() {
        return this.f36054id;
    }

    public int hashCode() {
        return this.f36054id.hashCode();
    }

    @NotNull
    public String toString() {
        UserId userId = this.f36054id;
        return "PollsFriend(id=" + userId + ")";
    }
}

package com.vk.sdk.api.prettyCards.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsDeleteResponse;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "cardId", "", "error", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;)V", "getCardId", "()Ljava/lang/String;", "getError", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PrettyCardsDeleteResponse {
    @SerializedName("card_id")
    @NotNull
    private final String cardId;
    @SerializedName("error")
    @Nullable
    private final String error;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;

    public PrettyCardsDeleteResponse(@NotNull UserId ownerId, @NotNull String cardId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        this.ownerId = ownerId;
        this.cardId = cardId;
        this.error = str;
    }

    public static /* synthetic */ PrettyCardsDeleteResponse copy$default(PrettyCardsDeleteResponse prettyCardsDeleteResponse, UserId userId, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = prettyCardsDeleteResponse.ownerId;
        }
        if ((i9 & 2) != 0) {
            str = prettyCardsDeleteResponse.cardId;
        }
        if ((i9 & 4) != 0) {
            str2 = prettyCardsDeleteResponse.error;
        }
        return prettyCardsDeleteResponse.copy(userId, str, str2);
    }

    @NotNull
    public final UserId component1() {
        return this.ownerId;
    }

    @NotNull
    public final String component2() {
        return this.cardId;
    }

    @Nullable
    public final String component3() {
        return this.error;
    }

    @NotNull
    public final PrettyCardsDeleteResponse copy(@NotNull UserId ownerId, @NotNull String cardId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return new PrettyCardsDeleteResponse(ownerId, cardId, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrettyCardsDeleteResponse) {
            PrettyCardsDeleteResponse prettyCardsDeleteResponse = (PrettyCardsDeleteResponse) obj;
            return Intrinsics.areEqual(this.ownerId, prettyCardsDeleteResponse.ownerId) && Intrinsics.areEqual(this.cardId, prettyCardsDeleteResponse.cardId) && Intrinsics.areEqual(this.error, prettyCardsDeleteResponse.error);
        }
        return false;
    }

    @NotNull
    public final String getCardId() {
        return this.cardId;
    }

    @Nullable
    public final String getError() {
        return this.error;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    public int hashCode() {
        int hashCode = ((this.ownerId.hashCode() * 31) + this.cardId.hashCode()) * 31;
        String str = this.error;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        UserId userId = this.ownerId;
        String str = this.cardId;
        String str2 = this.error;
        return "PrettyCardsDeleteResponse(ownerId=" + userId + ", cardId=" + str + ", error=" + str2 + ")";
    }

    public /* synthetic */ PrettyCardsDeleteResponse(UserId userId, String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, str, (i9 & 4) != 0 ? null : str2);
    }
}

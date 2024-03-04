package com.vk.sdk.api.prettyCards.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/prettyCards/dto/PrettyCardsCreateResponse;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "cardId", "", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)V", "getCardId", "()Ljava/lang/String;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PrettyCardsCreateResponse {
    @SerializedName("card_id")
    @NotNull
    private final String cardId;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;

    public PrettyCardsCreateResponse(@NotNull UserId ownerId, @NotNull String cardId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        this.ownerId = ownerId;
        this.cardId = cardId;
    }

    public static /* synthetic */ PrettyCardsCreateResponse copy$default(PrettyCardsCreateResponse prettyCardsCreateResponse, UserId userId, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = prettyCardsCreateResponse.ownerId;
        }
        if ((i9 & 2) != 0) {
            str = prettyCardsCreateResponse.cardId;
        }
        return prettyCardsCreateResponse.copy(userId, str);
    }

    @NotNull
    public final UserId component1() {
        return this.ownerId;
    }

    @NotNull
    public final String component2() {
        return this.cardId;
    }

    @NotNull
    public final PrettyCardsCreateResponse copy(@NotNull UserId ownerId, @NotNull String cardId) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(cardId, "cardId");
        return new PrettyCardsCreateResponse(ownerId, cardId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrettyCardsCreateResponse) {
            PrettyCardsCreateResponse prettyCardsCreateResponse = (PrettyCardsCreateResponse) obj;
            return Intrinsics.areEqual(this.ownerId, prettyCardsCreateResponse.ownerId) && Intrinsics.areEqual(this.cardId, prettyCardsCreateResponse.cardId);
        }
        return false;
    }

    @NotNull
    public final String getCardId() {
        return this.cardId;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    public int hashCode() {
        return (this.ownerId.hashCode() * 31) + this.cardId.hashCode();
    }

    @NotNull
    public String toString() {
        UserId userId = this.ownerId;
        String str = this.cardId;
        return "PrettyCardsCreateResponse(ownerId=" + userId + ", cardId=" + str + ")";
    }
}

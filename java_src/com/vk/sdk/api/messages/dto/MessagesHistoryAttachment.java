package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0016JD\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0005HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesHistoryAttachment;", "", "attachment", "Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachment;", "messageId", "", "fromId", "Lcom/vk/dto/common/id/UserId;", "forwardLevel", "wasListened", "", "(Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachment;ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getAttachment", "()Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachment;", "getForwardLevel", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getFromId", "()Lcom/vk/dto/common/id/UserId;", "getMessageId", "()I", "getWasListened", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/vk/sdk/api/messages/dto/MessagesHistoryMessageAttachment;ILcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesHistoryAttachment;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesHistoryAttachment {
    @SerializedName("attachment")
    @NotNull
    private final MessagesHistoryMessageAttachment attachment;
    @SerializedName("forward_level")
    @Nullable
    private final Integer forwardLevel;
    @SerializedName("from_id")
    @NotNull
    private final UserId fromId;
    @SerializedName("message_id")
    private final int messageId;
    @SerializedName("was_listened")
    @Nullable
    private final Boolean wasListened;

    public MessagesHistoryAttachment(@NotNull MessagesHistoryMessageAttachment attachment, int i9, @NotNull UserId fromId, @Nullable Integer num, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        this.attachment = attachment;
        this.messageId = i9;
        this.fromId = fromId;
        this.forwardLevel = num;
        this.wasListened = bool;
    }

    public static /* synthetic */ MessagesHistoryAttachment copy$default(MessagesHistoryAttachment messagesHistoryAttachment, MessagesHistoryMessageAttachment messagesHistoryMessageAttachment, int i9, UserId userId, Integer num, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            messagesHistoryMessageAttachment = messagesHistoryAttachment.attachment;
        }
        if ((i10 & 2) != 0) {
            i9 = messagesHistoryAttachment.messageId;
        }
        int i11 = i9;
        if ((i10 & 4) != 0) {
            userId = messagesHistoryAttachment.fromId;
        }
        UserId userId2 = userId;
        if ((i10 & 8) != 0) {
            num = messagesHistoryAttachment.forwardLevel;
        }
        Integer num2 = num;
        if ((i10 & 16) != 0) {
            bool = messagesHistoryAttachment.wasListened;
        }
        return messagesHistoryAttachment.copy(messagesHistoryMessageAttachment, i11, userId2, num2, bool);
    }

    @NotNull
    public final MessagesHistoryMessageAttachment component1() {
        return this.attachment;
    }

    public final int component2() {
        return this.messageId;
    }

    @NotNull
    public final UserId component3() {
        return this.fromId;
    }

    @Nullable
    public final Integer component4() {
        return this.forwardLevel;
    }

    @Nullable
    public final Boolean component5() {
        return this.wasListened;
    }

    @NotNull
    public final MessagesHistoryAttachment copy(@NotNull MessagesHistoryMessageAttachment attachment, int i9, @NotNull UserId fromId, @Nullable Integer num, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        return new MessagesHistoryAttachment(attachment, i9, fromId, num, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesHistoryAttachment) {
            MessagesHistoryAttachment messagesHistoryAttachment = (MessagesHistoryAttachment) obj;
            return Intrinsics.areEqual(this.attachment, messagesHistoryAttachment.attachment) && this.messageId == messagesHistoryAttachment.messageId && Intrinsics.areEqual(this.fromId, messagesHistoryAttachment.fromId) && Intrinsics.areEqual(this.forwardLevel, messagesHistoryAttachment.forwardLevel) && Intrinsics.areEqual(this.wasListened, messagesHistoryAttachment.wasListened);
        }
        return false;
    }

    @NotNull
    public final MessagesHistoryMessageAttachment getAttachment() {
        return this.attachment;
    }

    @Nullable
    public final Integer getForwardLevel() {
        return this.forwardLevel;
    }

    @NotNull
    public final UserId getFromId() {
        return this.fromId;
    }

    public final int getMessageId() {
        return this.messageId;
    }

    @Nullable
    public final Boolean getWasListened() {
        return this.wasListened;
    }

    public int hashCode() {
        int hashCode = ((((this.attachment.hashCode() * 31) + this.messageId) * 31) + this.fromId.hashCode()) * 31;
        Integer num = this.forwardLevel;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.wasListened;
        return hashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        MessagesHistoryMessageAttachment messagesHistoryMessageAttachment = this.attachment;
        int i9 = this.messageId;
        UserId userId = this.fromId;
        Integer num = this.forwardLevel;
        Boolean bool = this.wasListened;
        return "MessagesHistoryAttachment(attachment=" + messagesHistoryMessageAttachment + ", messageId=" + i9 + ", fromId=" + userId + ", forwardLevel=" + num + ", wasListened=" + bool + ")";
    }

    public /* synthetic */ MessagesHistoryAttachment(MessagesHistoryMessageAttachment messagesHistoryMessageAttachment, int i9, UserId userId, Integer num, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesHistoryMessageAttachment, i9, userId, (i10 & 8) != 0 ? null : num, (i10 & 16) != 0 ? null : bool);
    }
}

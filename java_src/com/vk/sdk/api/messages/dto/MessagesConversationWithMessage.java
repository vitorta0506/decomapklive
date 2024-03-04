package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesConversationWithMessage;", "", "conversation", "Lcom/vk/sdk/api/messages/dto/MessagesConversation;", "lastMessage", "Lcom/vk/sdk/api/messages/dto/MessagesMessage;", "(Lcom/vk/sdk/api/messages/dto/MessagesConversation;Lcom/vk/sdk/api/messages/dto/MessagesMessage;)V", "getConversation", "()Lcom/vk/sdk/api/messages/dto/MessagesConversation;", "getLastMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesMessage;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesConversationWithMessage {
    @SerializedName("conversation")
    @NotNull
    private final MessagesConversation conversation;
    @SerializedName("last_message")
    @Nullable
    private final MessagesMessage lastMessage;

    public MessagesConversationWithMessage(@NotNull MessagesConversation conversation, @Nullable MessagesMessage messagesMessage) {
        Intrinsics.checkNotNullParameter(conversation, "conversation");
        this.conversation = conversation;
        this.lastMessage = messagesMessage;
    }

    public static /* synthetic */ MessagesConversationWithMessage copy$default(MessagesConversationWithMessage messagesConversationWithMessage, MessagesConversation messagesConversation, MessagesMessage messagesMessage, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            messagesConversation = messagesConversationWithMessage.conversation;
        }
        if ((i9 & 2) != 0) {
            messagesMessage = messagesConversationWithMessage.lastMessage;
        }
        return messagesConversationWithMessage.copy(messagesConversation, messagesMessage);
    }

    @NotNull
    public final MessagesConversation component1() {
        return this.conversation;
    }

    @Nullable
    public final MessagesMessage component2() {
        return this.lastMessage;
    }

    @NotNull
    public final MessagesConversationWithMessage copy(@NotNull MessagesConversation conversation, @Nullable MessagesMessage messagesMessage) {
        Intrinsics.checkNotNullParameter(conversation, "conversation");
        return new MessagesConversationWithMessage(conversation, messagesMessage);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesConversationWithMessage) {
            MessagesConversationWithMessage messagesConversationWithMessage = (MessagesConversationWithMessage) obj;
            return Intrinsics.areEqual(this.conversation, messagesConversationWithMessage.conversation) && Intrinsics.areEqual(this.lastMessage, messagesConversationWithMessage.lastMessage);
        }
        return false;
    }

    @NotNull
    public final MessagesConversation getConversation() {
        return this.conversation;
    }

    @Nullable
    public final MessagesMessage getLastMessage() {
        return this.lastMessage;
    }

    public int hashCode() {
        int hashCode = this.conversation.hashCode() * 31;
        MessagesMessage messagesMessage = this.lastMessage;
        return hashCode + (messagesMessage == null ? 0 : messagesMessage.hashCode());
    }

    @NotNull
    public String toString() {
        MessagesConversation messagesConversation = this.conversation;
        MessagesMessage messagesMessage = this.lastMessage;
        return "MessagesConversationWithMessage(conversation=" + messagesConversation + ", lastMessage=" + messagesMessage + ")";
    }

    public /* synthetic */ MessagesConversationWithMessage(MessagesConversation messagesConversation, MessagesMessage messagesMessage, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesConversation, (i9 & 2) != 0 ? null : messagesMessage);
    }
}

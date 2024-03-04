package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesSetChatPhotoResponse;", "", "messageId", "", "chat", "Lcom/vk/sdk/api/messages/dto/MessagesChat;", "(Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesChat;)V", "getChat", "()Lcom/vk/sdk/api/messages/dto/MessagesChat;", "getMessageId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesChat;)Lcom/vk/sdk/api/messages/dto/MessagesSetChatPhotoResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesSetChatPhotoResponse {
    @SerializedName("chat")
    @Nullable
    private final MessagesChat chat;
    @SerializedName("message_id")
    @Nullable
    private final Integer messageId;

    public MessagesSetChatPhotoResponse() {
        this(null, null, 3, null);
    }

    public MessagesSetChatPhotoResponse(@Nullable Integer num, @Nullable MessagesChat messagesChat) {
        this.messageId = num;
        this.chat = messagesChat;
    }

    public static /* synthetic */ MessagesSetChatPhotoResponse copy$default(MessagesSetChatPhotoResponse messagesSetChatPhotoResponse, Integer num, MessagesChat messagesChat, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = messagesSetChatPhotoResponse.messageId;
        }
        if ((i9 & 2) != 0) {
            messagesChat = messagesSetChatPhotoResponse.chat;
        }
        return messagesSetChatPhotoResponse.copy(num, messagesChat);
    }

    @Nullable
    public final Integer component1() {
        return this.messageId;
    }

    @Nullable
    public final MessagesChat component2() {
        return this.chat;
    }

    @NotNull
    public final MessagesSetChatPhotoResponse copy(@Nullable Integer num, @Nullable MessagesChat messagesChat) {
        return new MessagesSetChatPhotoResponse(num, messagesChat);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesSetChatPhotoResponse) {
            MessagesSetChatPhotoResponse messagesSetChatPhotoResponse = (MessagesSetChatPhotoResponse) obj;
            return Intrinsics.areEqual(this.messageId, messagesSetChatPhotoResponse.messageId) && Intrinsics.areEqual(this.chat, messagesSetChatPhotoResponse.chat);
        }
        return false;
    }

    @Nullable
    public final MessagesChat getChat() {
        return this.chat;
    }

    @Nullable
    public final Integer getMessageId() {
        return this.messageId;
    }

    public int hashCode() {
        Integer num = this.messageId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        MessagesChat messagesChat = this.chat;
        return hashCode + (messagesChat != null ? messagesChat.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.messageId;
        MessagesChat messagesChat = this.chat;
        return "MessagesSetChatPhotoResponse(messageId=" + num + ", chat=" + messagesChat + ")";
    }

    public /* synthetic */ MessagesSetChatPhotoResponse(Integer num, MessagesChat messagesChat, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : messagesChat);
    }
}

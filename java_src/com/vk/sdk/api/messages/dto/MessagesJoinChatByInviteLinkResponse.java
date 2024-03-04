package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesJoinChatByInviteLinkResponse;", "", "chatId", "", "(Ljava/lang/Integer;)V", "getChatId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/vk/sdk/api/messages/dto/MessagesJoinChatByInviteLinkResponse;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesJoinChatByInviteLinkResponse {
    @SerializedName("chat_id")
    @Nullable
    private final Integer chatId;

    public MessagesJoinChatByInviteLinkResponse() {
        this(null, 1, null);
    }

    public MessagesJoinChatByInviteLinkResponse(@Nullable Integer num) {
        this.chatId = num;
    }

    public static /* synthetic */ MessagesJoinChatByInviteLinkResponse copy$default(MessagesJoinChatByInviteLinkResponse messagesJoinChatByInviteLinkResponse, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = messagesJoinChatByInviteLinkResponse.chatId;
        }
        return messagesJoinChatByInviteLinkResponse.copy(num);
    }

    @Nullable
    public final Integer component1() {
        return this.chatId;
    }

    @NotNull
    public final MessagesJoinChatByInviteLinkResponse copy(@Nullable Integer num) {
        return new MessagesJoinChatByInviteLinkResponse(num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessagesJoinChatByInviteLinkResponse) && Intrinsics.areEqual(this.chatId, ((MessagesJoinChatByInviteLinkResponse) obj).chatId);
    }

    @Nullable
    public final Integer getChatId() {
        return this.chatId;
    }

    public int hashCode() {
        Integer num = this.chatId;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    @NotNull
    public String toString() {
        Integer num = this.chatId;
        return "MessagesJoinChatByInviteLinkResponse(chatId=" + num + ")";
    }

    public /* synthetic */ MessagesJoinChatByInviteLinkResponse(Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num);
    }
}

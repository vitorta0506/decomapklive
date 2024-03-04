package com.vk.sdk.api.messages.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseGeo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\u0002\u0010\u0015J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0006HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\tHÆ\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0019J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000bHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u0094\u0001\u00105\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÆ\u0001¢\u0006\u0002\u00106J\u0013\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\u0003HÖ\u0001J\t\u0010;\u001a\u00020\tHÖ\u0001R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001cR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001cR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)¨\u0006<"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesPinnedMessage;", "", "id", "", "date", "fromId", "Lcom/vk/dto/common/id/UserId;", "peerId", ViewHierarchyConstants.TEXT_KEY, "", "attachments", "", "Lcom/vk/sdk/api/messages/dto/MessagesMessageAttachment;", "conversationMessageId", "fwdMessages", "Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;", "geo", "Lcom/vk/sdk/api/base/dto/BaseGeo;", "replyMessage", "keyboard", "Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "(IILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseGeo;Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;)V", "getAttachments", "()Ljava/util/List;", "getConversationMessageId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "()I", "getFromId", "()Lcom/vk/dto/common/id/UserId;", "getFwdMessages", "getGeo", "()Lcom/vk/sdk/api/base/dto/BaseGeo;", "getId", "getKeyboard", "()Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "getPeerId", "getReplyMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;", "getText", "()Ljava/lang/String;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseGeo;Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;)Lcom/vk/sdk/api/messages/dto/MessagesPinnedMessage;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesPinnedMessage {
    @SerializedName("attachments")
    @Nullable
    private final List<MessagesMessageAttachment> attachments;
    @SerializedName("conversation_message_id")
    @Nullable
    private final Integer conversationMessageId;
    @SerializedName("date")
    private final int date;
    @SerializedName("from_id")
    @NotNull
    private final UserId fromId;
    @SerializedName("fwd_messages")
    @Nullable
    private final List<MessagesForeignMessage> fwdMessages;
    @SerializedName("geo")
    @Nullable
    private final BaseGeo geo;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35911id;
    @SerializedName("keyboard")
    @Nullable
    private final MessagesKeyboard keyboard;
    @SerializedName("peer_id")
    private final int peerId;
    @SerializedName("reply_message")
    @Nullable
    private final MessagesForeignMessage replyMessage;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    public MessagesPinnedMessage(int i9, int i10, @NotNull UserId fromId, int i11, @NotNull String text, @Nullable List<MessagesMessageAttachment> list, @Nullable Integer num, @Nullable List<MessagesForeignMessage> list2, @Nullable BaseGeo baseGeo, @Nullable MessagesForeignMessage messagesForeignMessage, @Nullable MessagesKeyboard messagesKeyboard) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(text, "text");
        this.f35911id = i9;
        this.date = i10;
        this.fromId = fromId;
        this.peerId = i11;
        this.text = text;
        this.attachments = list;
        this.conversationMessageId = num;
        this.fwdMessages = list2;
        this.geo = baseGeo;
        this.replyMessage = messagesForeignMessage;
        this.keyboard = messagesKeyboard;
    }

    public final int component1() {
        return this.f35911id;
    }

    @Nullable
    public final MessagesForeignMessage component10() {
        return this.replyMessage;
    }

    @Nullable
    public final MessagesKeyboard component11() {
        return this.keyboard;
    }

    public final int component2() {
        return this.date;
    }

    @NotNull
    public final UserId component3() {
        return this.fromId;
    }

    public final int component4() {
        return this.peerId;
    }

    @NotNull
    public final String component5() {
        return this.text;
    }

    @Nullable
    public final List<MessagesMessageAttachment> component6() {
        return this.attachments;
    }

    @Nullable
    public final Integer component7() {
        return this.conversationMessageId;
    }

    @Nullable
    public final List<MessagesForeignMessage> component8() {
        return this.fwdMessages;
    }

    @Nullable
    public final BaseGeo component9() {
        return this.geo;
    }

    @NotNull
    public final MessagesPinnedMessage copy(int i9, int i10, @NotNull UserId fromId, int i11, @NotNull String text, @Nullable List<MessagesMessageAttachment> list, @Nullable Integer num, @Nullable List<MessagesForeignMessage> list2, @Nullable BaseGeo baseGeo, @Nullable MessagesForeignMessage messagesForeignMessage, @Nullable MessagesKeyboard messagesKeyboard) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(text, "text");
        return new MessagesPinnedMessage(i9, i10, fromId, i11, text, list, num, list2, baseGeo, messagesForeignMessage, messagesKeyboard);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesPinnedMessage) {
            MessagesPinnedMessage messagesPinnedMessage = (MessagesPinnedMessage) obj;
            return this.f35911id == messagesPinnedMessage.f35911id && this.date == messagesPinnedMessage.date && Intrinsics.areEqual(this.fromId, messagesPinnedMessage.fromId) && this.peerId == messagesPinnedMessage.peerId && Intrinsics.areEqual(this.text, messagesPinnedMessage.text) && Intrinsics.areEqual(this.attachments, messagesPinnedMessage.attachments) && Intrinsics.areEqual(this.conversationMessageId, messagesPinnedMessage.conversationMessageId) && Intrinsics.areEqual(this.fwdMessages, messagesPinnedMessage.fwdMessages) && Intrinsics.areEqual(this.geo, messagesPinnedMessage.geo) && Intrinsics.areEqual(this.replyMessage, messagesPinnedMessage.replyMessage) && Intrinsics.areEqual(this.keyboard, messagesPinnedMessage.keyboard);
        }
        return false;
    }

    @Nullable
    public final List<MessagesMessageAttachment> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final Integer getConversationMessageId() {
        return this.conversationMessageId;
    }

    public final int getDate() {
        return this.date;
    }

    @NotNull
    public final UserId getFromId() {
        return this.fromId;
    }

    @Nullable
    public final List<MessagesForeignMessage> getFwdMessages() {
        return this.fwdMessages;
    }

    @Nullable
    public final BaseGeo getGeo() {
        return this.geo;
    }

    public final int getId() {
        return this.f35911id;
    }

    @Nullable
    public final MessagesKeyboard getKeyboard() {
        return this.keyboard;
    }

    public final int getPeerId() {
        return this.peerId;
    }

    @Nullable
    public final MessagesForeignMessage getReplyMessage() {
        return this.replyMessage;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode = ((((((((this.f35911id * 31) + this.date) * 31) + this.fromId.hashCode()) * 31) + this.peerId) * 31) + this.text.hashCode()) * 31;
        List<MessagesMessageAttachment> list = this.attachments;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.conversationMessageId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        List<MessagesForeignMessage> list2 = this.fwdMessages;
        int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        BaseGeo baseGeo = this.geo;
        int hashCode5 = (hashCode4 + (baseGeo == null ? 0 : baseGeo.hashCode())) * 31;
        MessagesForeignMessage messagesForeignMessage = this.replyMessage;
        int hashCode6 = (hashCode5 + (messagesForeignMessage == null ? 0 : messagesForeignMessage.hashCode())) * 31;
        MessagesKeyboard messagesKeyboard = this.keyboard;
        return hashCode6 + (messagesKeyboard != null ? messagesKeyboard.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35911id;
        int i10 = this.date;
        UserId userId = this.fromId;
        int i11 = this.peerId;
        String str = this.text;
        List<MessagesMessageAttachment> list = this.attachments;
        Integer num = this.conversationMessageId;
        List<MessagesForeignMessage> list2 = this.fwdMessages;
        BaseGeo baseGeo = this.geo;
        MessagesForeignMessage messagesForeignMessage = this.replyMessage;
        MessagesKeyboard messagesKeyboard = this.keyboard;
        return "MessagesPinnedMessage(id=" + i9 + ", date=" + i10 + ", fromId=" + userId + ", peerId=" + i11 + ", text=" + str + ", attachments=" + list + ", conversationMessageId=" + num + ", fwdMessages=" + list2 + ", geo=" + baseGeo + ", replyMessage=" + messagesForeignMessage + ", keyboard=" + messagesKeyboard + ")";
    }

    public /* synthetic */ MessagesPinnedMessage(int i9, int i10, UserId userId, int i11, String str, List list, Integer num, List list2, BaseGeo baseGeo, MessagesForeignMessage messagesForeignMessage, MessagesKeyboard messagesKeyboard, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, userId, i11, str, (i12 & 32) != 0 ? null : list, (i12 & 64) != 0 ? null : num, (i12 & 128) != 0 ? null : list2, (i12 & 256) != 0 ? null : baseGeo, (i12 & 512) != 0 ? null : messagesForeignMessage, (i12 & 1024) != 0 ? null : messagesKeyboard);
    }
}

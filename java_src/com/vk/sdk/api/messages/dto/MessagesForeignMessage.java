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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b-\b\u0086\b\u0018\u00002\u00020\u0001B¡\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0000\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0016J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0000HÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u00101\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u0010,J\u000b\u00102\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0007HÆ\u0003J\u0011\u00105\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0011\u00107\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\tHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001aJ°\u0001\u0010;\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010<J\u0013\u0010=\u001a\u00020\u00142\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010?\u001a\u00020\u0003HÖ\u0001J\t\u0010@\u001a\u00020\u0007HÖ\u0001R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b#\u0010\u001aR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b&\u0010\u001aR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00008\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010%R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b*\u0010\u001aR\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b+\u0010,¨\u0006A"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;", "", "date", "", "fromId", "Lcom/vk/dto/common/id/UserId;", ViewHierarchyConstants.TEXT_KEY, "", "attachments", "", "Lcom/vk/sdk/api/messages/dto/MessagesMessageAttachment;", "conversationMessageId", "fwdMessages", "geo", "Lcom/vk/sdk/api/base/dto/BaseGeo;", "id", "peerId", "replyMessage", "updateTime", "wasListened", "", "payload", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseGeo;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V", "getAttachments", "()Ljava/util/List;", "getConversationMessageId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "()I", "getFromId", "()Lcom/vk/dto/common/id/UserId;", "getFwdMessages", "getGeo", "()Lcom/vk/sdk/api/base/dto/BaseGeo;", "getId", "getPayload", "()Ljava/lang/String;", "getPeerId", "getReplyMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;", "getText", "getUpdateTime", "getWasListened", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component10", "component11", "component12", "component13", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseGeo;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesForeignMessage {
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
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35908id;
    @SerializedName("payload")
    @Nullable
    private final String payload;
    @SerializedName("peer_id")
    @Nullable
    private final Integer peerId;
    @SerializedName("reply_message")
    @Nullable
    private final MessagesForeignMessage replyMessage;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;
    @SerializedName("update_time")
    @Nullable
    private final Integer updateTime;
    @SerializedName("was_listened")
    @Nullable
    private final Boolean wasListened;

    public MessagesForeignMessage(int i9, @NotNull UserId fromId, @NotNull String text, @Nullable List<MessagesMessageAttachment> list, @Nullable Integer num, @Nullable List<MessagesForeignMessage> list2, @Nullable BaseGeo baseGeo, @Nullable Integer num2, @Nullable Integer num3, @Nullable MessagesForeignMessage messagesForeignMessage, @Nullable Integer num4, @Nullable Boolean bool, @Nullable String str) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(text, "text");
        this.date = i9;
        this.fromId = fromId;
        this.text = text;
        this.attachments = list;
        this.conversationMessageId = num;
        this.fwdMessages = list2;
        this.geo = baseGeo;
        this.f35908id = num2;
        this.peerId = num3;
        this.replyMessage = messagesForeignMessage;
        this.updateTime = num4;
        this.wasListened = bool;
        this.payload = str;
    }

    public final int component1() {
        return this.date;
    }

    @Nullable
    public final MessagesForeignMessage component10() {
        return this.replyMessage;
    }

    @Nullable
    public final Integer component11() {
        return this.updateTime;
    }

    @Nullable
    public final Boolean component12() {
        return this.wasListened;
    }

    @Nullable
    public final String component13() {
        return this.payload;
    }

    @NotNull
    public final UserId component2() {
        return this.fromId;
    }

    @NotNull
    public final String component3() {
        return this.text;
    }

    @Nullable
    public final List<MessagesMessageAttachment> component4() {
        return this.attachments;
    }

    @Nullable
    public final Integer component5() {
        return this.conversationMessageId;
    }

    @Nullable
    public final List<MessagesForeignMessage> component6() {
        return this.fwdMessages;
    }

    @Nullable
    public final BaseGeo component7() {
        return this.geo;
    }

    @Nullable
    public final Integer component8() {
        return this.f35908id;
    }

    @Nullable
    public final Integer component9() {
        return this.peerId;
    }

    @NotNull
    public final MessagesForeignMessage copy(int i9, @NotNull UserId fromId, @NotNull String text, @Nullable List<MessagesMessageAttachment> list, @Nullable Integer num, @Nullable List<MessagesForeignMessage> list2, @Nullable BaseGeo baseGeo, @Nullable Integer num2, @Nullable Integer num3, @Nullable MessagesForeignMessage messagesForeignMessage, @Nullable Integer num4, @Nullable Boolean bool, @Nullable String str) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(text, "text");
        return new MessagesForeignMessage(i9, fromId, text, list, num, list2, baseGeo, num2, num3, messagesForeignMessage, num4, bool, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesForeignMessage) {
            MessagesForeignMessage messagesForeignMessage = (MessagesForeignMessage) obj;
            return this.date == messagesForeignMessage.date && Intrinsics.areEqual(this.fromId, messagesForeignMessage.fromId) && Intrinsics.areEqual(this.text, messagesForeignMessage.text) && Intrinsics.areEqual(this.attachments, messagesForeignMessage.attachments) && Intrinsics.areEqual(this.conversationMessageId, messagesForeignMessage.conversationMessageId) && Intrinsics.areEqual(this.fwdMessages, messagesForeignMessage.fwdMessages) && Intrinsics.areEqual(this.geo, messagesForeignMessage.geo) && Intrinsics.areEqual(this.f35908id, messagesForeignMessage.f35908id) && Intrinsics.areEqual(this.peerId, messagesForeignMessage.peerId) && Intrinsics.areEqual(this.replyMessage, messagesForeignMessage.replyMessage) && Intrinsics.areEqual(this.updateTime, messagesForeignMessage.updateTime) && Intrinsics.areEqual(this.wasListened, messagesForeignMessage.wasListened) && Intrinsics.areEqual(this.payload, messagesForeignMessage.payload);
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

    @Nullable
    public final Integer getId() {
        return this.f35908id;
    }

    @Nullable
    public final String getPayload() {
        return this.payload;
    }

    @Nullable
    public final Integer getPeerId() {
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

    @Nullable
    public final Integer getUpdateTime() {
        return this.updateTime;
    }

    @Nullable
    public final Boolean getWasListened() {
        return this.wasListened;
    }

    public int hashCode() {
        int hashCode = ((((this.date * 31) + this.fromId.hashCode()) * 31) + this.text.hashCode()) * 31;
        List<MessagesMessageAttachment> list = this.attachments;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.conversationMessageId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        List<MessagesForeignMessage> list2 = this.fwdMessages;
        int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        BaseGeo baseGeo = this.geo;
        int hashCode5 = (hashCode4 + (baseGeo == null ? 0 : baseGeo.hashCode())) * 31;
        Integer num2 = this.f35908id;
        int hashCode6 = (hashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.peerId;
        int hashCode7 = (hashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        MessagesForeignMessage messagesForeignMessage = this.replyMessage;
        int hashCode8 = (hashCode7 + (messagesForeignMessage == null ? 0 : messagesForeignMessage.hashCode())) * 31;
        Integer num4 = this.updateTime;
        int hashCode9 = (hashCode8 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Boolean bool = this.wasListened;
        int hashCode10 = (hashCode9 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.payload;
        return hashCode10 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.date;
        UserId userId = this.fromId;
        String str = this.text;
        List<MessagesMessageAttachment> list = this.attachments;
        Integer num = this.conversationMessageId;
        List<MessagesForeignMessage> list2 = this.fwdMessages;
        BaseGeo baseGeo = this.geo;
        Integer num2 = this.f35908id;
        Integer num3 = this.peerId;
        MessagesForeignMessage messagesForeignMessage = this.replyMessage;
        Integer num4 = this.updateTime;
        Boolean bool = this.wasListened;
        String str2 = this.payload;
        return "MessagesForeignMessage(date=" + i9 + ", fromId=" + userId + ", text=" + str + ", attachments=" + list + ", conversationMessageId=" + num + ", fwdMessages=" + list2 + ", geo=" + baseGeo + ", id=" + num2 + ", peerId=" + num3 + ", replyMessage=" + messagesForeignMessage + ", updateTime=" + num4 + ", wasListened=" + bool + ", payload=" + str2 + ")";
    }

    public /* synthetic */ MessagesForeignMessage(int i9, UserId userId, String str, List list, Integer num, List list2, BaseGeo baseGeo, Integer num2, Integer num3, MessagesForeignMessage messagesForeignMessage, Integer num4, Boolean bool, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, str, (i10 & 8) != 0 ? null : list, (i10 & 16) != 0 ? null : num, (i10 & 32) != 0 ? null : list2, (i10 & 64) != 0 ? null : baseGeo, (i10 & 128) != 0 ? null : num2, (i10 & 256) != 0 ? null : num3, (i10 & 512) != 0 ? null : messagesForeignMessage, (i10 & 1024) != 0 ? null : num4, (i10 & 2048) != 0 ? null : bool, (i10 & 4096) != 0 ? null : str2);
    }
}

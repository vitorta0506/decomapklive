package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bF\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001jB¡\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0017\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010&J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\u0010\u0010L\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010(J\u0010\u0010M\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010(J\u000b\u0010N\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u0011\u0010P\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0017HÆ\u0003J\u0011\u0010Q\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0017HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u001eHÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010(J\t\u0010V\u001a\u00020\u0005HÆ\u0003J\u0010\u0010W\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010(J\u000b\u0010X\u001a\u0004\u0018\u00010\"HÆ\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u00107J\u0010\u0010Z\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010(J\u0010\u0010[\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010(J\t\u0010\\\u001a\u00020\u0005HÆ\u0003J\t\u0010]\u001a\u00020\u0005HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0010\u0010_\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u00107J\u0010\u0010`\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u00107J\u0010\u0010a\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010(J\u000b\u0010b\u001a\u0004\u0018\u00010\u000fHÆ\u0003J²\u0002\u0010c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00172\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010dJ\u0013\u0010e\u001a\u00020\r2\b\u0010f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010g\u001a\u00020\u0005HÖ\u0001J\t\u0010h\u001a\u00020iHÖ\u0001R\u001a\u0010 \u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b'\u0010(R\u001a\u0010\u001f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b*\u0010(R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0018\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u001e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b3\u0010(R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u001a\u0010%\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b%\u0010(R\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b\f\u0010(R\u001a\u0010$\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\b$\u0010(R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00108\u001a\u0004\b6\u00107R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u00105R\u001e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u00102R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b=\u00105R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u001a\u0010#\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00108\u001a\u0004\bF\u00107R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010HR\u001a\u0010\u0011\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010)\u001a\u0004\bI\u0010(R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00108\u001a\u0004\bJ\u00107¨\u0006k"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesConversation;", "", "peer", "Lcom/vk/sdk/api/messages/dto/MessagesConversationPeer;", "lastMessageId", "", "inRead", "outRead", "sortId", "Lcom/vk/sdk/api/messages/dto/MessagesConversationSortId;", "lastConversationMessageId", "unreadCount", "isMarkedUnread", "", "outReadBy", "Lcom/vk/sdk/api/messages/dto/MessagesOutReadBy;", "important", "unanswered", "specialServiceType", "Lcom/vk/sdk/api/messages/dto/MessagesConversation$SpecialServiceType;", "messageRequestData", "Lcom/vk/sdk/api/messages/dto/MessagesMessageRequestData;", "mentions", "", "expireMessages", "currentKeyboard", "Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "pushSettings", "Lcom/vk/sdk/api/messages/dto/MessagesPushSettings;", "canWrite", "Lcom/vk/sdk/api/messages/dto/MessagesConversationCanWrite;", "canSendMoney", "canReceiveMoney", "chatSettings", "Lcom/vk/sdk/api/messages/dto/MessagesChatSettings;", "spamExpiration", "isNew", "isArchived", "(Lcom/vk/sdk/api/messages/dto/MessagesConversationPeer;IIILcom/vk/sdk/api/messages/dto/MessagesConversationSortId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesOutReadBy;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesConversation$SpecialServiceType;Lcom/vk/sdk/api/messages/dto/MessagesMessageRequestData;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;Lcom/vk/sdk/api/messages/dto/MessagesPushSettings;Lcom/vk/sdk/api/messages/dto/MessagesConversationCanWrite;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesChatSettings;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", "getCanReceiveMoney", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getCanSendMoney", "getCanWrite", "()Lcom/vk/sdk/api/messages/dto/MessagesConversationCanWrite;", "getChatSettings", "()Lcom/vk/sdk/api/messages/dto/MessagesChatSettings;", "getCurrentKeyboard", "()Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "getExpireMessages", "()Ljava/util/List;", "getImportant", "getInRead", "()I", "getLastConversationMessageId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLastMessageId", "getMentions", "getMessageRequestData", "()Lcom/vk/sdk/api/messages/dto/MessagesMessageRequestData;", "getOutRead", "getOutReadBy", "()Lcom/vk/sdk/api/messages/dto/MessagesOutReadBy;", "getPeer", "()Lcom/vk/sdk/api/messages/dto/MessagesConversationPeer;", "getPushSettings", "()Lcom/vk/sdk/api/messages/dto/MessagesPushSettings;", "getSortId", "()Lcom/vk/sdk/api/messages/dto/MessagesConversationSortId;", "getSpamExpiration", "getSpecialServiceType", "()Lcom/vk/sdk/api/messages/dto/MessagesConversation$SpecialServiceType;", "getUnanswered", "getUnreadCount", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/sdk/api/messages/dto/MessagesConversationPeer;IIILcom/vk/sdk/api/messages/dto/MessagesConversationSortId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesOutReadBy;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesConversation$SpecialServiceType;Lcom/vk/sdk/api/messages/dto/MessagesMessageRequestData;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;Lcom/vk/sdk/api/messages/dto/MessagesPushSettings;Lcom/vk/sdk/api/messages/dto/MessagesConversationCanWrite;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesChatSettings;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesConversation;", "equals", "other", "hashCode", "toString", "", "SpecialServiceType", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesConversation {
    @SerializedName("can_receive_money")
    @Nullable
    private final Boolean canReceiveMoney;
    @SerializedName("can_send_money")
    @Nullable
    private final Boolean canSendMoney;
    @SerializedName("can_write")
    @Nullable
    private final MessagesConversationCanWrite canWrite;
    @SerializedName("chat_settings")
    @Nullable
    private final MessagesChatSettings chatSettings;
    @SerializedName("current_keyboard")
    @Nullable
    private final MessagesKeyboard currentKeyboard;
    @SerializedName("expire_messages")
    @Nullable
    private final List<Integer> expireMessages;
    @SerializedName("important")
    @Nullable
    private final Boolean important;
    @SerializedName("in_read")
    private final int inRead;
    @SerializedName("is_archived")
    @Nullable
    private final Boolean isArchived;
    @SerializedName("is_marked_unread")
    @Nullable
    private final Boolean isMarkedUnread;
    @SerializedName("is_new")
    @Nullable
    private final Boolean isNew;
    @SerializedName("last_conversation_message_id")
    @Nullable
    private final Integer lastConversationMessageId;
    @SerializedName("last_message_id")
    private final int lastMessageId;
    @SerializedName("mentions")
    @Nullable
    private final List<Integer> mentions;
    @SerializedName("message_request_data")
    @Nullable
    private final MessagesMessageRequestData messageRequestData;
    @SerializedName("out_read")
    private final int outRead;
    @SerializedName("out_read_by")
    @Nullable
    private final MessagesOutReadBy outReadBy;
    @SerializedName("peer")
    @NotNull
    private final MessagesConversationPeer peer;
    @SerializedName("push_settings")
    @Nullable
    private final MessagesPushSettings pushSettings;
    @SerializedName("sort_id")
    @Nullable
    private final MessagesConversationSortId sortId;
    @SerializedName("spam_expiration")
    @Nullable
    private final Integer spamExpiration;
    @SerializedName("special_service_type")
    @Nullable
    private final SpecialServiceType specialServiceType;
    @SerializedName("unanswered")
    @Nullable
    private final Boolean unanswered;
    @SerializedName("unread_count")
    @Nullable
    private final Integer unreadCount;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesConversation$SpecialServiceType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "BUSINESS_NOTIFY", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum SpecialServiceType {
        BUSINESS_NOTIFY("business_notify");
        
        @NotNull
        private final String value;

        SpecialServiceType(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public MessagesConversation(@NotNull MessagesConversationPeer peer, int i9, int i10, int i11, @Nullable MessagesConversationSortId messagesConversationSortId, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable MessagesOutReadBy messagesOutReadBy, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable SpecialServiceType specialServiceType, @Nullable MessagesMessageRequestData messagesMessageRequestData, @Nullable List<Integer> list, @Nullable List<Integer> list2, @Nullable MessagesKeyboard messagesKeyboard, @Nullable MessagesPushSettings messagesPushSettings, @Nullable MessagesConversationCanWrite messagesConversationCanWrite, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable MessagesChatSettings messagesChatSettings, @Nullable Integer num3, @Nullable Boolean bool6, @Nullable Boolean bool7) {
        Intrinsics.checkNotNullParameter(peer, "peer");
        this.peer = peer;
        this.lastMessageId = i9;
        this.inRead = i10;
        this.outRead = i11;
        this.sortId = messagesConversationSortId;
        this.lastConversationMessageId = num;
        this.unreadCount = num2;
        this.isMarkedUnread = bool;
        this.outReadBy = messagesOutReadBy;
        this.important = bool2;
        this.unanswered = bool3;
        this.specialServiceType = specialServiceType;
        this.messageRequestData = messagesMessageRequestData;
        this.mentions = list;
        this.expireMessages = list2;
        this.currentKeyboard = messagesKeyboard;
        this.pushSettings = messagesPushSettings;
        this.canWrite = messagesConversationCanWrite;
        this.canSendMoney = bool4;
        this.canReceiveMoney = bool5;
        this.chatSettings = messagesChatSettings;
        this.spamExpiration = num3;
        this.isNew = bool6;
        this.isArchived = bool7;
    }

    @NotNull
    public final MessagesConversationPeer component1() {
        return this.peer;
    }

    @Nullable
    public final Boolean component10() {
        return this.important;
    }

    @Nullable
    public final Boolean component11() {
        return this.unanswered;
    }

    @Nullable
    public final SpecialServiceType component12() {
        return this.specialServiceType;
    }

    @Nullable
    public final MessagesMessageRequestData component13() {
        return this.messageRequestData;
    }

    @Nullable
    public final List<Integer> component14() {
        return this.mentions;
    }

    @Nullable
    public final List<Integer> component15() {
        return this.expireMessages;
    }

    @Nullable
    public final MessagesKeyboard component16() {
        return this.currentKeyboard;
    }

    @Nullable
    public final MessagesPushSettings component17() {
        return this.pushSettings;
    }

    @Nullable
    public final MessagesConversationCanWrite component18() {
        return this.canWrite;
    }

    @Nullable
    public final Boolean component19() {
        return this.canSendMoney;
    }

    public final int component2() {
        return this.lastMessageId;
    }

    @Nullable
    public final Boolean component20() {
        return this.canReceiveMoney;
    }

    @Nullable
    public final MessagesChatSettings component21() {
        return this.chatSettings;
    }

    @Nullable
    public final Integer component22() {
        return this.spamExpiration;
    }

    @Nullable
    public final Boolean component23() {
        return this.isNew;
    }

    @Nullable
    public final Boolean component24() {
        return this.isArchived;
    }

    public final int component3() {
        return this.inRead;
    }

    public final int component4() {
        return this.outRead;
    }

    @Nullable
    public final MessagesConversationSortId component5() {
        return this.sortId;
    }

    @Nullable
    public final Integer component6() {
        return this.lastConversationMessageId;
    }

    @Nullable
    public final Integer component7() {
        return this.unreadCount;
    }

    @Nullable
    public final Boolean component8() {
        return this.isMarkedUnread;
    }

    @Nullable
    public final MessagesOutReadBy component9() {
        return this.outReadBy;
    }

    @NotNull
    public final MessagesConversation copy(@NotNull MessagesConversationPeer peer, int i9, int i10, int i11, @Nullable MessagesConversationSortId messagesConversationSortId, @Nullable Integer num, @Nullable Integer num2, @Nullable Boolean bool, @Nullable MessagesOutReadBy messagesOutReadBy, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable SpecialServiceType specialServiceType, @Nullable MessagesMessageRequestData messagesMessageRequestData, @Nullable List<Integer> list, @Nullable List<Integer> list2, @Nullable MessagesKeyboard messagesKeyboard, @Nullable MessagesPushSettings messagesPushSettings, @Nullable MessagesConversationCanWrite messagesConversationCanWrite, @Nullable Boolean bool4, @Nullable Boolean bool5, @Nullable MessagesChatSettings messagesChatSettings, @Nullable Integer num3, @Nullable Boolean bool6, @Nullable Boolean bool7) {
        Intrinsics.checkNotNullParameter(peer, "peer");
        return new MessagesConversation(peer, i9, i10, i11, messagesConversationSortId, num, num2, bool, messagesOutReadBy, bool2, bool3, specialServiceType, messagesMessageRequestData, list, list2, messagesKeyboard, messagesPushSettings, messagesConversationCanWrite, bool4, bool5, messagesChatSettings, num3, bool6, bool7);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesConversation) {
            MessagesConversation messagesConversation = (MessagesConversation) obj;
            return Intrinsics.areEqual(this.peer, messagesConversation.peer) && this.lastMessageId == messagesConversation.lastMessageId && this.inRead == messagesConversation.inRead && this.outRead == messagesConversation.outRead && Intrinsics.areEqual(this.sortId, messagesConversation.sortId) && Intrinsics.areEqual(this.lastConversationMessageId, messagesConversation.lastConversationMessageId) && Intrinsics.areEqual(this.unreadCount, messagesConversation.unreadCount) && Intrinsics.areEqual(this.isMarkedUnread, messagesConversation.isMarkedUnread) && Intrinsics.areEqual(this.outReadBy, messagesConversation.outReadBy) && Intrinsics.areEqual(this.important, messagesConversation.important) && Intrinsics.areEqual(this.unanswered, messagesConversation.unanswered) && this.specialServiceType == messagesConversation.specialServiceType && Intrinsics.areEqual(this.messageRequestData, messagesConversation.messageRequestData) && Intrinsics.areEqual(this.mentions, messagesConversation.mentions) && Intrinsics.areEqual(this.expireMessages, messagesConversation.expireMessages) && Intrinsics.areEqual(this.currentKeyboard, messagesConversation.currentKeyboard) && Intrinsics.areEqual(this.pushSettings, messagesConversation.pushSettings) && Intrinsics.areEqual(this.canWrite, messagesConversation.canWrite) && Intrinsics.areEqual(this.canSendMoney, messagesConversation.canSendMoney) && Intrinsics.areEqual(this.canReceiveMoney, messagesConversation.canReceiveMoney) && Intrinsics.areEqual(this.chatSettings, messagesConversation.chatSettings) && Intrinsics.areEqual(this.spamExpiration, messagesConversation.spamExpiration) && Intrinsics.areEqual(this.isNew, messagesConversation.isNew) && Intrinsics.areEqual(this.isArchived, messagesConversation.isArchived);
        }
        return false;
    }

    @Nullable
    public final Boolean getCanReceiveMoney() {
        return this.canReceiveMoney;
    }

    @Nullable
    public final Boolean getCanSendMoney() {
        return this.canSendMoney;
    }

    @Nullable
    public final MessagesConversationCanWrite getCanWrite() {
        return this.canWrite;
    }

    @Nullable
    public final MessagesChatSettings getChatSettings() {
        return this.chatSettings;
    }

    @Nullable
    public final MessagesKeyboard getCurrentKeyboard() {
        return this.currentKeyboard;
    }

    @Nullable
    public final List<Integer> getExpireMessages() {
        return this.expireMessages;
    }

    @Nullable
    public final Boolean getImportant() {
        return this.important;
    }

    public final int getInRead() {
        return this.inRead;
    }

    @Nullable
    public final Integer getLastConversationMessageId() {
        return this.lastConversationMessageId;
    }

    public final int getLastMessageId() {
        return this.lastMessageId;
    }

    @Nullable
    public final List<Integer> getMentions() {
        return this.mentions;
    }

    @Nullable
    public final MessagesMessageRequestData getMessageRequestData() {
        return this.messageRequestData;
    }

    public final int getOutRead() {
        return this.outRead;
    }

    @Nullable
    public final MessagesOutReadBy getOutReadBy() {
        return this.outReadBy;
    }

    @NotNull
    public final MessagesConversationPeer getPeer() {
        return this.peer;
    }

    @Nullable
    public final MessagesPushSettings getPushSettings() {
        return this.pushSettings;
    }

    @Nullable
    public final MessagesConversationSortId getSortId() {
        return this.sortId;
    }

    @Nullable
    public final Integer getSpamExpiration() {
        return this.spamExpiration;
    }

    @Nullable
    public final SpecialServiceType getSpecialServiceType() {
        return this.specialServiceType;
    }

    @Nullable
    public final Boolean getUnanswered() {
        return this.unanswered;
    }

    @Nullable
    public final Integer getUnreadCount() {
        return this.unreadCount;
    }

    public int hashCode() {
        int hashCode = ((((((this.peer.hashCode() * 31) + this.lastMessageId) * 31) + this.inRead) * 31) + this.outRead) * 31;
        MessagesConversationSortId messagesConversationSortId = this.sortId;
        int hashCode2 = (hashCode + (messagesConversationSortId == null ? 0 : messagesConversationSortId.hashCode())) * 31;
        Integer num = this.lastConversationMessageId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.unreadCount;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool = this.isMarkedUnread;
        int hashCode5 = (hashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        MessagesOutReadBy messagesOutReadBy = this.outReadBy;
        int hashCode6 = (hashCode5 + (messagesOutReadBy == null ? 0 : messagesOutReadBy.hashCode())) * 31;
        Boolean bool2 = this.important;
        int hashCode7 = (hashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.unanswered;
        int hashCode8 = (hashCode7 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        SpecialServiceType specialServiceType = this.specialServiceType;
        int hashCode9 = (hashCode8 + (specialServiceType == null ? 0 : specialServiceType.hashCode())) * 31;
        MessagesMessageRequestData messagesMessageRequestData = this.messageRequestData;
        int hashCode10 = (hashCode9 + (messagesMessageRequestData == null ? 0 : messagesMessageRequestData.hashCode())) * 31;
        List<Integer> list = this.mentions;
        int hashCode11 = (hashCode10 + (list == null ? 0 : list.hashCode())) * 31;
        List<Integer> list2 = this.expireMessages;
        int hashCode12 = (hashCode11 + (list2 == null ? 0 : list2.hashCode())) * 31;
        MessagesKeyboard messagesKeyboard = this.currentKeyboard;
        int hashCode13 = (hashCode12 + (messagesKeyboard == null ? 0 : messagesKeyboard.hashCode())) * 31;
        MessagesPushSettings messagesPushSettings = this.pushSettings;
        int hashCode14 = (hashCode13 + (messagesPushSettings == null ? 0 : messagesPushSettings.hashCode())) * 31;
        MessagesConversationCanWrite messagesConversationCanWrite = this.canWrite;
        int hashCode15 = (hashCode14 + (messagesConversationCanWrite == null ? 0 : messagesConversationCanWrite.hashCode())) * 31;
        Boolean bool4 = this.canSendMoney;
        int hashCode16 = (hashCode15 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Boolean bool5 = this.canReceiveMoney;
        int hashCode17 = (hashCode16 + (bool5 == null ? 0 : bool5.hashCode())) * 31;
        MessagesChatSettings messagesChatSettings = this.chatSettings;
        int hashCode18 = (hashCode17 + (messagesChatSettings == null ? 0 : messagesChatSettings.hashCode())) * 31;
        Integer num3 = this.spamExpiration;
        int hashCode19 = (hashCode18 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Boolean bool6 = this.isNew;
        int hashCode20 = (hashCode19 + (bool6 == null ? 0 : bool6.hashCode())) * 31;
        Boolean bool7 = this.isArchived;
        return hashCode20 + (bool7 != null ? bool7.hashCode() : 0);
    }

    @Nullable
    public final Boolean isArchived() {
        return this.isArchived;
    }

    @Nullable
    public final Boolean isMarkedUnread() {
        return this.isMarkedUnread;
    }

    @Nullable
    public final Boolean isNew() {
        return this.isNew;
    }

    @NotNull
    public String toString() {
        MessagesConversationPeer messagesConversationPeer = this.peer;
        int i9 = this.lastMessageId;
        int i10 = this.inRead;
        int i11 = this.outRead;
        MessagesConversationSortId messagesConversationSortId = this.sortId;
        Integer num = this.lastConversationMessageId;
        Integer num2 = this.unreadCount;
        Boolean bool = this.isMarkedUnread;
        MessagesOutReadBy messagesOutReadBy = this.outReadBy;
        Boolean bool2 = this.important;
        Boolean bool3 = this.unanswered;
        SpecialServiceType specialServiceType = this.specialServiceType;
        MessagesMessageRequestData messagesMessageRequestData = this.messageRequestData;
        List<Integer> list = this.mentions;
        List<Integer> list2 = this.expireMessages;
        MessagesKeyboard messagesKeyboard = this.currentKeyboard;
        MessagesPushSettings messagesPushSettings = this.pushSettings;
        MessagesConversationCanWrite messagesConversationCanWrite = this.canWrite;
        Boolean bool4 = this.canSendMoney;
        Boolean bool5 = this.canReceiveMoney;
        MessagesChatSettings messagesChatSettings = this.chatSettings;
        Integer num3 = this.spamExpiration;
        Boolean bool6 = this.isNew;
        Boolean bool7 = this.isArchived;
        return "MessagesConversation(peer=" + messagesConversationPeer + ", lastMessageId=" + i9 + ", inRead=" + i10 + ", outRead=" + i11 + ", sortId=" + messagesConversationSortId + ", lastConversationMessageId=" + num + ", unreadCount=" + num2 + ", isMarkedUnread=" + bool + ", outReadBy=" + messagesOutReadBy + ", important=" + bool2 + ", unanswered=" + bool3 + ", specialServiceType=" + specialServiceType + ", messageRequestData=" + messagesMessageRequestData + ", mentions=" + list + ", expireMessages=" + list2 + ", currentKeyboard=" + messagesKeyboard + ", pushSettings=" + messagesPushSettings + ", canWrite=" + messagesConversationCanWrite + ", canSendMoney=" + bool4 + ", canReceiveMoney=" + bool5 + ", chatSettings=" + messagesChatSettings + ", spamExpiration=" + num3 + ", isNew=" + bool6 + ", isArchived=" + bool7 + ")";
    }

    public /* synthetic */ MessagesConversation(MessagesConversationPeer messagesConversationPeer, int i9, int i10, int i11, MessagesConversationSortId messagesConversationSortId, Integer num, Integer num2, Boolean bool, MessagesOutReadBy messagesOutReadBy, Boolean bool2, Boolean bool3, SpecialServiceType specialServiceType, MessagesMessageRequestData messagesMessageRequestData, List list, List list2, MessagesKeyboard messagesKeyboard, MessagesPushSettings messagesPushSettings, MessagesConversationCanWrite messagesConversationCanWrite, Boolean bool4, Boolean bool5, MessagesChatSettings messagesChatSettings, Integer num3, Boolean bool6, Boolean bool7, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesConversationPeer, i9, i10, i11, (i12 & 16) != 0 ? null : messagesConversationSortId, (i12 & 32) != 0 ? null : num, (i12 & 64) != 0 ? null : num2, (i12 & 128) != 0 ? null : bool, (i12 & 256) != 0 ? null : messagesOutReadBy, (i12 & 512) != 0 ? null : bool2, (i12 & 1024) != 0 ? null : bool3, (i12 & 2048) != 0 ? null : specialServiceType, (i12 & 4096) != 0 ? null : messagesMessageRequestData, (i12 & 8192) != 0 ? null : list, (i12 & 16384) != 0 ? null : list2, (32768 & i12) != 0 ? null : messagesKeyboard, (65536 & i12) != 0 ? null : messagesPushSettings, (131072 & i12) != 0 ? null : messagesConversationCanWrite, (262144 & i12) != 0 ? null : bool4, (524288 & i12) != 0 ? null : bool5, (1048576 & i12) != 0 ? null : messagesChatSettings, (2097152 & i12) != 0 ? null : num3, (4194304 & i12) != 0 ? null : bool6, (i12 & 8388608) != 0 ? null : bool7);
    }
}

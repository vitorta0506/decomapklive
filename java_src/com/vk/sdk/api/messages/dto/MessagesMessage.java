package com.vk.sdk.api.messages.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.NativeProtocol;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseGeo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bR\b\u0086\b\u0018\u00002\u00020\u0001B½\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010(J\t\u0010N\u001a\u00020\u0003HÆ\u0003J\u0010\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010P\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010Q\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0010HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u0010\u0010S\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0002\u0010<J\u0010\u0010T\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0002\u0010<J\u0010\u0010U\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0002\u0010<J\u000b\u0010V\u001a\u0004\u0018\u00010\u001dHÆ\u0003J\u0010\u0010W\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010X\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\t\u0010Y\u001a\u00020\u0005HÆ\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u000b\u0010[\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0015HÆ\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010_\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0002\u0010<J\u0010\u0010`\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u00100J\u0010\u0010a\u001a\u0004\u0018\u00010\u0019HÆ\u0003¢\u0006\u0002\u0010<J\t\u0010b\u001a\u00020\u0003HÆ\u0003J\t\u0010c\u001a\u00020\bHÆ\u0003J\t\u0010d\u001a\u00020\u0003HÆ\u0003J\t\u0010e\u001a\u00020\u000bHÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010HÆ\u0003JÒ\u0002\u0010i\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00102\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0019HÆ\u0001¢\u0006\u0002\u0010jJ\u0013\u0010k\u001a\u00020\u00192\b\u0010l\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010m\u001a\u00020\u0003HÖ\u0001J\t\u0010n\u001a\u00020\u000bHÖ\u0001R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\b/\u00100R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010,R\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010.R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u00103R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010=\u001a\u0004\b;\u0010<R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010=\u001a\u0004\b\u001b\u0010<R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010=\u001a\u0004\b\u001a\u0010<R\u001a\u0010'\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010=\u001a\u0004\b'\u0010<R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\b@\u00100R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bA\u00105R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bD\u00103R\u001a\u0010&\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bE\u00100R\u001a\u0010 \u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bF\u00100R\u0018\u0010!\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bG\u0010CR\u0018\u0010\"\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bH\u0010CR\u0018\u0010#\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bI\u0010JR\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010CR\u001a\u0010$\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u00101\u001a\u0004\bL\u00100R\u001a\u0010%\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010=\u001a\u0004\bM\u0010<¨\u0006o"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesMessage;", "", "date", "", "fromId", "Lcom/vk/dto/common/id/UserId;", "id", "out", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "peerId", ViewHierarchyConstants.TEXT_KEY, "", NativeProtocol.WEB_DIALOG_ACTION, "Lcom/vk/sdk/api/messages/dto/MessagesMessageAction;", "adminAuthorId", "attachments", "", "Lcom/vk/sdk/api/messages/dto/MessagesMessageAttachment;", "conversationMessageId", "deleted", "fwdMessages", "Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;", "geo", "Lcom/vk/sdk/api/base/dto/BaseGeo;", "important", "", "isHidden", "isCropped", "keyboard", "Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "membersCount", "payload", "randomId", "ref", "refSource", "replyMessage", "updateTime", "wasListened", "pinnedAt", "isSilent", "(ILcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/base/dto/BaseBoolInt;ILjava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesMessageAction;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseGeo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getAction", "()Lcom/vk/sdk/api/messages/dto/MessagesMessageAction;", "getAdminAuthorId", "()Lcom/vk/dto/common/id/UserId;", "getAttachments", "()Ljava/util/List;", "getConversationMessageId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "()I", "getDeleted", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getFromId", "getFwdMessages", "getGeo", "()Lcom/vk/sdk/api/base/dto/BaseGeo;", "getId", "getImportant", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getKeyboard", "()Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;", "getMembersCount", "getOut", "getPayload", "()Ljava/lang/String;", "getPeerId", "getPinnedAt", "getRandomId", "getRef", "getRefSource", "getReplyMessage", "()Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;", "getText", "getUpdateTime", "getWasListened", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILcom/vk/dto/common/id/UserId;ILcom/vk/sdk/api/base/dto/BaseBoolInt;ILjava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesMessageAction;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;Lcom/vk/sdk/api/base/dto/BaseGeo;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/messages/dto/MessagesKeyboard;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesForeignMessage;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/sdk/api/messages/dto/MessagesMessage;", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesMessage {
    @SerializedName(NativeProtocol.WEB_DIALOG_ACTION)
    @Nullable
    private final MessagesMessageAction action;
    @SerializedName("admin_author_id")
    @Nullable
    private final UserId adminAuthorId;
    @SerializedName("attachments")
    @Nullable
    private final List<MessagesMessageAttachment> attachments;
    @SerializedName("conversation_message_id")
    @Nullable
    private final Integer conversationMessageId;
    @SerializedName("date")
    private final int date;
    @SerializedName("deleted")
    @Nullable
    private final BaseBoolInt deleted;
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
    private final int f35910id;
    @SerializedName("important")
    @Nullable
    private final Boolean important;
    @SerializedName("is_cropped")
    @Nullable
    private final Boolean isCropped;
    @SerializedName("is_hidden")
    @Nullable
    private final Boolean isHidden;
    @SerializedName("is_silent")
    @Nullable
    private final Boolean isSilent;
    @SerializedName("keyboard")
    @Nullable
    private final MessagesKeyboard keyboard;
    @SerializedName("members_count")
    @Nullable
    private final Integer membersCount;
    @SerializedName("out")
    @NotNull
    private final BaseBoolInt out;
    @SerializedName("payload")
    @Nullable
    private final String payload;
    @SerializedName("peer_id")
    private final int peerId;
    @SerializedName("pinned_at")
    @Nullable
    private final Integer pinnedAt;
    @SerializedName("random_id")
    @Nullable
    private final Integer randomId;
    @SerializedName("ref")
    @Nullable
    private final String ref;
    @SerializedName("ref_source")
    @Nullable
    private final String refSource;
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

    public MessagesMessage(int i9, @NotNull UserId fromId, int i10, @NotNull BaseBoolInt out, int i11, @NotNull String text, @Nullable MessagesMessageAction messagesMessageAction, @Nullable UserId userId, @Nullable List<MessagesMessageAttachment> list, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable List<MessagesForeignMessage> list2, @Nullable BaseGeo baseGeo, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable MessagesKeyboard messagesKeyboard, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, @Nullable String str2, @Nullable String str3, @Nullable MessagesForeignMessage messagesForeignMessage, @Nullable Integer num4, @Nullable Boolean bool4, @Nullable Integer num5, @Nullable Boolean bool5) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(text, "text");
        this.date = i9;
        this.fromId = fromId;
        this.f35910id = i10;
        this.out = out;
        this.peerId = i11;
        this.text = text;
        this.action = messagesMessageAction;
        this.adminAuthorId = userId;
        this.attachments = list;
        this.conversationMessageId = num;
        this.deleted = baseBoolInt;
        this.fwdMessages = list2;
        this.geo = baseGeo;
        this.important = bool;
        this.isHidden = bool2;
        this.isCropped = bool3;
        this.keyboard = messagesKeyboard;
        this.membersCount = num2;
        this.payload = str;
        this.randomId = num3;
        this.ref = str2;
        this.refSource = str3;
        this.replyMessage = messagesForeignMessage;
        this.updateTime = num4;
        this.wasListened = bool4;
        this.pinnedAt = num5;
        this.isSilent = bool5;
    }

    public final int component1() {
        return this.date;
    }

    @Nullable
    public final Integer component10() {
        return this.conversationMessageId;
    }

    @Nullable
    public final BaseBoolInt component11() {
        return this.deleted;
    }

    @Nullable
    public final List<MessagesForeignMessage> component12() {
        return this.fwdMessages;
    }

    @Nullable
    public final BaseGeo component13() {
        return this.geo;
    }

    @Nullable
    public final Boolean component14() {
        return this.important;
    }

    @Nullable
    public final Boolean component15() {
        return this.isHidden;
    }

    @Nullable
    public final Boolean component16() {
        return this.isCropped;
    }

    @Nullable
    public final MessagesKeyboard component17() {
        return this.keyboard;
    }

    @Nullable
    public final Integer component18() {
        return this.membersCount;
    }

    @Nullable
    public final String component19() {
        return this.payload;
    }

    @NotNull
    public final UserId component2() {
        return this.fromId;
    }

    @Nullable
    public final Integer component20() {
        return this.randomId;
    }

    @Nullable
    public final String component21() {
        return this.ref;
    }

    @Nullable
    public final String component22() {
        return this.refSource;
    }

    @Nullable
    public final MessagesForeignMessage component23() {
        return this.replyMessage;
    }

    @Nullable
    public final Integer component24() {
        return this.updateTime;
    }

    @Nullable
    public final Boolean component25() {
        return this.wasListened;
    }

    @Nullable
    public final Integer component26() {
        return this.pinnedAt;
    }

    @Nullable
    public final Boolean component27() {
        return this.isSilent;
    }

    public final int component3() {
        return this.f35910id;
    }

    @NotNull
    public final BaseBoolInt component4() {
        return this.out;
    }

    public final int component5() {
        return this.peerId;
    }

    @NotNull
    public final String component6() {
        return this.text;
    }

    @Nullable
    public final MessagesMessageAction component7() {
        return this.action;
    }

    @Nullable
    public final UserId component8() {
        return this.adminAuthorId;
    }

    @Nullable
    public final List<MessagesMessageAttachment> component9() {
        return this.attachments;
    }

    @NotNull
    public final MessagesMessage copy(int i9, @NotNull UserId fromId, int i10, @NotNull BaseBoolInt out, int i11, @NotNull String text, @Nullable MessagesMessageAction messagesMessageAction, @Nullable UserId userId, @Nullable List<MessagesMessageAttachment> list, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable List<MessagesForeignMessage> list2, @Nullable BaseGeo baseGeo, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable MessagesKeyboard messagesKeyboard, @Nullable Integer num2, @Nullable String str, @Nullable Integer num3, @Nullable String str2, @Nullable String str3, @Nullable MessagesForeignMessage messagesForeignMessage, @Nullable Integer num4, @Nullable Boolean bool4, @Nullable Integer num5, @Nullable Boolean bool5) {
        Intrinsics.checkNotNullParameter(fromId, "fromId");
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(text, "text");
        return new MessagesMessage(i9, fromId, i10, out, i11, text, messagesMessageAction, userId, list, num, baseBoolInt, list2, baseGeo, bool, bool2, bool3, messagesKeyboard, num2, str, num3, str2, str3, messagesForeignMessage, num4, bool4, num5, bool5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesMessage) {
            MessagesMessage messagesMessage = (MessagesMessage) obj;
            return this.date == messagesMessage.date && Intrinsics.areEqual(this.fromId, messagesMessage.fromId) && this.f35910id == messagesMessage.f35910id && this.out == messagesMessage.out && this.peerId == messagesMessage.peerId && Intrinsics.areEqual(this.text, messagesMessage.text) && Intrinsics.areEqual(this.action, messagesMessage.action) && Intrinsics.areEqual(this.adminAuthorId, messagesMessage.adminAuthorId) && Intrinsics.areEqual(this.attachments, messagesMessage.attachments) && Intrinsics.areEqual(this.conversationMessageId, messagesMessage.conversationMessageId) && this.deleted == messagesMessage.deleted && Intrinsics.areEqual(this.fwdMessages, messagesMessage.fwdMessages) && Intrinsics.areEqual(this.geo, messagesMessage.geo) && Intrinsics.areEqual(this.important, messagesMessage.important) && Intrinsics.areEqual(this.isHidden, messagesMessage.isHidden) && Intrinsics.areEqual(this.isCropped, messagesMessage.isCropped) && Intrinsics.areEqual(this.keyboard, messagesMessage.keyboard) && Intrinsics.areEqual(this.membersCount, messagesMessage.membersCount) && Intrinsics.areEqual(this.payload, messagesMessage.payload) && Intrinsics.areEqual(this.randomId, messagesMessage.randomId) && Intrinsics.areEqual(this.ref, messagesMessage.ref) && Intrinsics.areEqual(this.refSource, messagesMessage.refSource) && Intrinsics.areEqual(this.replyMessage, messagesMessage.replyMessage) && Intrinsics.areEqual(this.updateTime, messagesMessage.updateTime) && Intrinsics.areEqual(this.wasListened, messagesMessage.wasListened) && Intrinsics.areEqual(this.pinnedAt, messagesMessage.pinnedAt) && Intrinsics.areEqual(this.isSilent, messagesMessage.isSilent);
        }
        return false;
    }

    @Nullable
    public final MessagesMessageAction getAction() {
        return this.action;
    }

    @Nullable
    public final UserId getAdminAuthorId() {
        return this.adminAuthorId;
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

    @Nullable
    public final BaseBoolInt getDeleted() {
        return this.deleted;
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
        return this.f35910id;
    }

    @Nullable
    public final Boolean getImportant() {
        return this.important;
    }

    @Nullable
    public final MessagesKeyboard getKeyboard() {
        return this.keyboard;
    }

    @Nullable
    public final Integer getMembersCount() {
        return this.membersCount;
    }

    @NotNull
    public final BaseBoolInt getOut() {
        return this.out;
    }

    @Nullable
    public final String getPayload() {
        return this.payload;
    }

    public final int getPeerId() {
        return this.peerId;
    }

    @Nullable
    public final Integer getPinnedAt() {
        return this.pinnedAt;
    }

    @Nullable
    public final Integer getRandomId() {
        return this.randomId;
    }

    @Nullable
    public final String getRef() {
        return this.ref;
    }

    @Nullable
    public final String getRefSource() {
        return this.refSource;
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
        int hashCode = ((((((((((this.date * 31) + this.fromId.hashCode()) * 31) + this.f35910id) * 31) + this.out.hashCode()) * 31) + this.peerId) * 31) + this.text.hashCode()) * 31;
        MessagesMessageAction messagesMessageAction = this.action;
        int hashCode2 = (hashCode + (messagesMessageAction == null ? 0 : messagesMessageAction.hashCode())) * 31;
        UserId userId = this.adminAuthorId;
        int hashCode3 = (hashCode2 + (userId == null ? 0 : userId.hashCode())) * 31;
        List<MessagesMessageAttachment> list = this.attachments;
        int hashCode4 = (hashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.conversationMessageId;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.deleted;
        int hashCode6 = (hashCode5 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        List<MessagesForeignMessage> list2 = this.fwdMessages;
        int hashCode7 = (hashCode6 + (list2 == null ? 0 : list2.hashCode())) * 31;
        BaseGeo baseGeo = this.geo;
        int hashCode8 = (hashCode7 + (baseGeo == null ? 0 : baseGeo.hashCode())) * 31;
        Boolean bool = this.important;
        int hashCode9 = (hashCode8 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.isHidden;
        int hashCode10 = (hashCode9 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isCropped;
        int hashCode11 = (hashCode10 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        MessagesKeyboard messagesKeyboard = this.keyboard;
        int hashCode12 = (hashCode11 + (messagesKeyboard == null ? 0 : messagesKeyboard.hashCode())) * 31;
        Integer num2 = this.membersCount;
        int hashCode13 = (hashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.payload;
        int hashCode14 = (hashCode13 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.randomId;
        int hashCode15 = (hashCode14 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str2 = this.ref;
        int hashCode16 = (hashCode15 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.refSource;
        int hashCode17 = (hashCode16 + (str3 == null ? 0 : str3.hashCode())) * 31;
        MessagesForeignMessage messagesForeignMessage = this.replyMessage;
        int hashCode18 = (hashCode17 + (messagesForeignMessage == null ? 0 : messagesForeignMessage.hashCode())) * 31;
        Integer num4 = this.updateTime;
        int hashCode19 = (hashCode18 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Boolean bool4 = this.wasListened;
        int hashCode20 = (hashCode19 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Integer num5 = this.pinnedAt;
        int hashCode21 = (hashCode20 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Boolean bool5 = this.isSilent;
        return hashCode21 + (bool5 != null ? bool5.hashCode() : 0);
    }

    @Nullable
    public final Boolean isCropped() {
        return this.isCropped;
    }

    @Nullable
    public final Boolean isHidden() {
        return this.isHidden;
    }

    @Nullable
    public final Boolean isSilent() {
        return this.isSilent;
    }

    @NotNull
    public String toString() {
        int i9 = this.date;
        UserId userId = this.fromId;
        int i10 = this.f35910id;
        BaseBoolInt baseBoolInt = this.out;
        int i11 = this.peerId;
        String str = this.text;
        MessagesMessageAction messagesMessageAction = this.action;
        UserId userId2 = this.adminAuthorId;
        List<MessagesMessageAttachment> list = this.attachments;
        Integer num = this.conversationMessageId;
        BaseBoolInt baseBoolInt2 = this.deleted;
        List<MessagesForeignMessage> list2 = this.fwdMessages;
        BaseGeo baseGeo = this.geo;
        Boolean bool = this.important;
        Boolean bool2 = this.isHidden;
        Boolean bool3 = this.isCropped;
        MessagesKeyboard messagesKeyboard = this.keyboard;
        Integer num2 = this.membersCount;
        String str2 = this.payload;
        Integer num3 = this.randomId;
        String str3 = this.ref;
        String str4 = this.refSource;
        MessagesForeignMessage messagesForeignMessage = this.replyMessage;
        Integer num4 = this.updateTime;
        Boolean bool4 = this.wasListened;
        Integer num5 = this.pinnedAt;
        Boolean bool5 = this.isSilent;
        return "MessagesMessage(date=" + i9 + ", fromId=" + userId + ", id=" + i10 + ", out=" + baseBoolInt + ", peerId=" + i11 + ", text=" + str + ", action=" + messagesMessageAction + ", adminAuthorId=" + userId2 + ", attachments=" + list + ", conversationMessageId=" + num + ", deleted=" + baseBoolInt2 + ", fwdMessages=" + list2 + ", geo=" + baseGeo + ", important=" + bool + ", isHidden=" + bool2 + ", isCropped=" + bool3 + ", keyboard=" + messagesKeyboard + ", membersCount=" + num2 + ", payload=" + str2 + ", randomId=" + num3 + ", ref=" + str3 + ", refSource=" + str4 + ", replyMessage=" + messagesForeignMessage + ", updateTime=" + num4 + ", wasListened=" + bool4 + ", pinnedAt=" + num5 + ", isSilent=" + bool5 + ")";
    }

    public /* synthetic */ MessagesMessage(int i9, UserId userId, int i10, BaseBoolInt baseBoolInt, int i11, String str, MessagesMessageAction messagesMessageAction, UserId userId2, List list, Integer num, BaseBoolInt baseBoolInt2, List list2, BaseGeo baseGeo, Boolean bool, Boolean bool2, Boolean bool3, MessagesKeyboard messagesKeyboard, Integer num2, String str2, Integer num3, String str3, String str4, MessagesForeignMessage messagesForeignMessage, Integer num4, Boolean bool4, Integer num5, Boolean bool5, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, i10, baseBoolInt, i11, str, (i12 & 64) != 0 ? null : messagesMessageAction, (i12 & 128) != 0 ? null : userId2, (i12 & 256) != 0 ? null : list, (i12 & 512) != 0 ? null : num, (i12 & 1024) != 0 ? null : baseBoolInt2, (i12 & 2048) != 0 ? null : list2, (i12 & 4096) != 0 ? null : baseGeo, (i12 & 8192) != 0 ? null : bool, (i12 & 16384) != 0 ? null : bool2, (32768 & i12) != 0 ? null : bool3, (65536 & i12) != 0 ? null : messagesKeyboard, (131072 & i12) != 0 ? null : num2, (262144 & i12) != 0 ? null : str2, (524288 & i12) != 0 ? null : num3, (1048576 & i12) != 0 ? null : str3, (2097152 & i12) != 0 ? null : str4, (4194304 & i12) != 0 ? null : messagesForeignMessage, (8388608 & i12) != 0 ? null : num4, (16777216 & i12) != 0 ? null : bool4, (33554432 & i12) != 0 ? null : num5, (i12 & 67108864) != 0 ? null : bool5);
    }
}

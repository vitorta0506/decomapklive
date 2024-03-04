package com.vk.sdk.api.messages.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000eJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J`\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0005HÖ\u0001J\t\u0010)\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006*"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesMessageAction;", "", "type", "Lcom/vk/sdk/api/messages/dto/MessagesMessageActionStatus;", "conversationMessageId", "", "email", "", "memberId", "Lcom/vk/dto/common/id/UserId;", "message", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "Lcom/vk/sdk/api/messages/dto/MessagesMessageActionPhoto;", ViewHierarchyConstants.TEXT_KEY, "(Lcom/vk/sdk/api/messages/dto/MessagesMessageActionStatus;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesMessageActionPhoto;Ljava/lang/String;)V", "getConversationMessageId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEmail", "()Ljava/lang/String;", "getMemberId", "()Lcom/vk/dto/common/id/UserId;", "getMessage", "getPhoto", "()Lcom/vk/sdk/api/messages/dto/MessagesMessageActionPhoto;", "getText", "getType", "()Lcom/vk/sdk/api/messages/dto/MessagesMessageActionStatus;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Lcom/vk/sdk/api/messages/dto/MessagesMessageActionStatus;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/messages/dto/MessagesMessageActionPhoto;Ljava/lang/String;)Lcom/vk/sdk/api/messages/dto/MessagesMessageAction;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesMessageAction {
    @SerializedName("conversation_message_id")
    @Nullable
    private final Integer conversationMessageId;
    @SerializedName("email")
    @Nullable
    private final String email;
    @SerializedName("member_id")
    @Nullable
    private final UserId memberId;
    @SerializedName("message")
    @Nullable
    private final String message;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO)
    @Nullable
    private final MessagesMessageActionPhoto photo;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("type")
    @NotNull
    private final MessagesMessageActionStatus type;

    public MessagesMessageAction(@NotNull MessagesMessageActionStatus type, @Nullable Integer num, @Nullable String str, @Nullable UserId userId, @Nullable String str2, @Nullable MessagesMessageActionPhoto messagesMessageActionPhoto, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.conversationMessageId = num;
        this.email = str;
        this.memberId = userId;
        this.message = str2;
        this.photo = messagesMessageActionPhoto;
        this.text = str3;
    }

    public static /* synthetic */ MessagesMessageAction copy$default(MessagesMessageAction messagesMessageAction, MessagesMessageActionStatus messagesMessageActionStatus, Integer num, String str, UserId userId, String str2, MessagesMessageActionPhoto messagesMessageActionPhoto, String str3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            messagesMessageActionStatus = messagesMessageAction.type;
        }
        if ((i9 & 2) != 0) {
            num = messagesMessageAction.conversationMessageId;
        }
        Integer num2 = num;
        if ((i9 & 4) != 0) {
            str = messagesMessageAction.email;
        }
        String str4 = str;
        if ((i9 & 8) != 0) {
            userId = messagesMessageAction.memberId;
        }
        UserId userId2 = userId;
        if ((i9 & 16) != 0) {
            str2 = messagesMessageAction.message;
        }
        String str5 = str2;
        if ((i9 & 32) != 0) {
            messagesMessageActionPhoto = messagesMessageAction.photo;
        }
        MessagesMessageActionPhoto messagesMessageActionPhoto2 = messagesMessageActionPhoto;
        if ((i9 & 64) != 0) {
            str3 = messagesMessageAction.text;
        }
        return messagesMessageAction.copy(messagesMessageActionStatus, num2, str4, userId2, str5, messagesMessageActionPhoto2, str3);
    }

    @NotNull
    public final MessagesMessageActionStatus component1() {
        return this.type;
    }

    @Nullable
    public final Integer component2() {
        return this.conversationMessageId;
    }

    @Nullable
    public final String component3() {
        return this.email;
    }

    @Nullable
    public final UserId component4() {
        return this.memberId;
    }

    @Nullable
    public final String component5() {
        return this.message;
    }

    @Nullable
    public final MessagesMessageActionPhoto component6() {
        return this.photo;
    }

    @Nullable
    public final String component7() {
        return this.text;
    }

    @NotNull
    public final MessagesMessageAction copy(@NotNull MessagesMessageActionStatus type, @Nullable Integer num, @Nullable String str, @Nullable UserId userId, @Nullable String str2, @Nullable MessagesMessageActionPhoto messagesMessageActionPhoto, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MessagesMessageAction(type, num, str, userId, str2, messagesMessageActionPhoto, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesMessageAction) {
            MessagesMessageAction messagesMessageAction = (MessagesMessageAction) obj;
            return this.type == messagesMessageAction.type && Intrinsics.areEqual(this.conversationMessageId, messagesMessageAction.conversationMessageId) && Intrinsics.areEqual(this.email, messagesMessageAction.email) && Intrinsics.areEqual(this.memberId, messagesMessageAction.memberId) && Intrinsics.areEqual(this.message, messagesMessageAction.message) && Intrinsics.areEqual(this.photo, messagesMessageAction.photo) && Intrinsics.areEqual(this.text, messagesMessageAction.text);
        }
        return false;
    }

    @Nullable
    public final Integer getConversationMessageId() {
        return this.conversationMessageId;
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final UserId getMemberId() {
        return this.memberId;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    @Nullable
    public final MessagesMessageActionPhoto getPhoto() {
        return this.photo;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @NotNull
    public final MessagesMessageActionStatus getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        Integer num = this.conversationMessageId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.email;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        UserId userId = this.memberId;
        int hashCode4 = (hashCode3 + (userId == null ? 0 : userId.hashCode())) * 31;
        String str2 = this.message;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        MessagesMessageActionPhoto messagesMessageActionPhoto = this.photo;
        int hashCode6 = (hashCode5 + (messagesMessageActionPhoto == null ? 0 : messagesMessageActionPhoto.hashCode())) * 31;
        String str3 = this.text;
        return hashCode6 + (str3 != null ? str3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        MessagesMessageActionStatus messagesMessageActionStatus = this.type;
        Integer num = this.conversationMessageId;
        String str = this.email;
        UserId userId = this.memberId;
        String str2 = this.message;
        MessagesMessageActionPhoto messagesMessageActionPhoto = this.photo;
        String str3 = this.text;
        return "MessagesMessageAction(type=" + messagesMessageActionStatus + ", conversationMessageId=" + num + ", email=" + str + ", memberId=" + userId + ", message=" + str2 + ", photo=" + messagesMessageActionPhoto + ", text=" + str3 + ")";
    }

    public /* synthetic */ MessagesMessageAction(MessagesMessageActionStatus messagesMessageActionStatus, Integer num, String str, UserId userId, String str2, MessagesMessageActionPhoto messagesMessageActionPhoto, String str3, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(messagesMessageActionStatus, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : str, (i9 & 8) != 0 ? null : userId, (i9 & 16) != 0 ? null : str2, (i9 & 32) != 0 ? null : messagesMessageActionPhoto, (i9 & 64) == 0 ? str3 : null);
    }
}

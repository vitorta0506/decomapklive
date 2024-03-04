package com.vk.sdk.api.messages.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\fJ2\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/messages/dto/MessagesMessageRequestData;", "", "status", "", "inviterId", "Lcom/vk/dto/common/id/UserId;", "requestDate", "", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)V", "getInviterId", "()Lcom/vk/dto/common/id/UserId;", "getRequestDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStatus", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/sdk/api/messages/dto/MessagesMessageRequestData;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class MessagesMessageRequestData {
    @SerializedName("inviter_id")
    @Nullable
    private final UserId inviterId;
    @SerializedName("request_date")
    @Nullable
    private final Integer requestDate;
    @SerializedName("status")
    @Nullable
    private final String status;

    public MessagesMessageRequestData() {
        this(null, null, null, 7, null);
    }

    public MessagesMessageRequestData(@Nullable String str, @Nullable UserId userId, @Nullable Integer num) {
        this.status = str;
        this.inviterId = userId;
        this.requestDate = num;
    }

    public static /* synthetic */ MessagesMessageRequestData copy$default(MessagesMessageRequestData messagesMessageRequestData, String str, UserId userId, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = messagesMessageRequestData.status;
        }
        if ((i9 & 2) != 0) {
            userId = messagesMessageRequestData.inviterId;
        }
        if ((i9 & 4) != 0) {
            num = messagesMessageRequestData.requestDate;
        }
        return messagesMessageRequestData.copy(str, userId, num);
    }

    @Nullable
    public final String component1() {
        return this.status;
    }

    @Nullable
    public final UserId component2() {
        return this.inviterId;
    }

    @Nullable
    public final Integer component3() {
        return this.requestDate;
    }

    @NotNull
    public final MessagesMessageRequestData copy(@Nullable String str, @Nullable UserId userId, @Nullable Integer num) {
        return new MessagesMessageRequestData(str, userId, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesMessageRequestData) {
            MessagesMessageRequestData messagesMessageRequestData = (MessagesMessageRequestData) obj;
            return Intrinsics.areEqual(this.status, messagesMessageRequestData.status) && Intrinsics.areEqual(this.inviterId, messagesMessageRequestData.inviterId) && Intrinsics.areEqual(this.requestDate, messagesMessageRequestData.requestDate);
        }
        return false;
    }

    @Nullable
    public final UserId getInviterId() {
        return this.inviterId;
    }

    @Nullable
    public final Integer getRequestDate() {
        return this.requestDate;
    }

    @Nullable
    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.status;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        UserId userId = this.inviterId;
        int hashCode2 = (hashCode + (userId == null ? 0 : userId.hashCode())) * 31;
        Integer num = this.requestDate;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.status;
        UserId userId = this.inviterId;
        Integer num = this.requestDate;
        return "MessagesMessageRequestData(status=" + str + ", inviterId=" + userId + ", requestDate=" + num + ")";
    }

    public /* synthetic */ MessagesMessageRequestData(String str, UserId userId, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : userId, (i9 & 4) != 0 ? null : num);
    }
}
